# coding: utf-8

module ONIX
  class ProductSupplyRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :ProductSupply

    collection :market, as: "Market", extend: ONIX::MarketRepresenter, class: ONIX::Market
    property :market_publishing_detail, as: "MarketPublishingDetail", extend: ONIX::MarketPublishingDetailRepresenter, class: ONIX::MarketPublishingDetail
    collection :supply_detail, as: "SupplyDetail", extend: ONIX::SupplyDetailRepresenter, class: ONIX::SupplyDetail
  end
end
