# coding: utf-8

module ONIX
  class SalesRights
    include Virtus.model

    attribute :sales_rights_type, Integer
    attribute :rights_country
    attribute :rights_territory
    attribute :rights_region

    def to_xml
      SalesRightsRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      SalesRightsRepresenter.new(self.new).from_xml(data)
    end
  end

  class SalesRightsRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :SalesRights

    property :sales_rights_type, as: "SalesRightsType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :rights_country, as: "RightsCountry"
    property :rights_territory, as: "RightsTerritory"
    property :rights_region, as: "RightsRegion"
  end
end
