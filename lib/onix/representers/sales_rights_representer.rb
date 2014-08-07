# coding: utf-8

module ONIX
  class SalesRightsRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :SalesRights

    property :sales_rights_type, as: "SalesRightsType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :territory, as: "Territory", extend: ONIX::TerritoryRepresenter, class: ONIX::Territory
  end
end
