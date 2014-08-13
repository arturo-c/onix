# coding: utf-8

module ONIX
  class SupplyDetail
    include Virtus.model

    attribute :supplier, ONIX::Supplier
    attribute :product_availability, Integer # list 65
    attribute :unpriced_item_type, Integer # list 57
    attribute :price, ONIX::Price

    def to_xml
      SupplyDetailRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      SupplyDetailRepresenter.new(self.new).from_xml(data)
    end
  end
end
