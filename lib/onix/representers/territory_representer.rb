# coding: utf-8

module ONIX
  class TerritoryRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Territory

    property :countries_included, as: "CountriesIncluded"
    property :countries_excluded, as: "CountriesExcluded"
    property :regions_included, as: "RegionsIncluded"
    property :regions_excluded, as: "RegionsExcluded"
  end
end
