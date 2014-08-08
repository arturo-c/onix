# coding: utf-8

module ONIX
  class Market
    include Virtus.model

    attribute :territory, ONIX::Territory
    # attribute :sales_rectriction, ONIX::SalesRestriction

    def to_xml
      MarketRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      MarketRepresenter.new(self.new).from_xml(data)
    end
  end
end
