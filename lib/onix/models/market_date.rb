# coding: utf-8

module ONIX
  class MarketDate
    include Virtus.model

    attribute :market_date_role, Integer # list 163
    attribute :date


    def to_xml
      MarketDateRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      MarketDateRepresenter.new(self.new).from_xml(data)
    end
  end
end
