# coding: utf-8

module ONIX
  class MarketRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Market

    property :territory, as: "Territory", extend: ONIX::TerritoryRepresenter, class: ONIX::Territory
  end
end
