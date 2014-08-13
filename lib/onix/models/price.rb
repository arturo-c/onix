# coding: utf-8

module ONIX
  class Price
    include Virtus.model

    attribute :price_type, Integer # list 217
    attribute :price_amount, Decimal
    attribute :currency_code, String # list 96

    def to_xml
      PriceRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      PriceRepresenter.new(self.new).from_xml(data)
    end
  end
end
