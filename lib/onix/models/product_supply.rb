# coding: utf-8

module ONIX
  class ProductSupply
    include Virtus.model

    attribute :market, Array[ONIX::Market]
    attribute :market_publishing_detail, ONIX::MarketPublishingDetail
    attribute :supply_detail, Array[ONIX::SupplyDetail]

    def to_xml
      ProductSupplyRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ProductSupplyRepresenter.new(self.new).from_xml(data)
    end
  end
end
