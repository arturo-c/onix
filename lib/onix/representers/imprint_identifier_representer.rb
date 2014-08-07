# coding: utf-8

module ONIX
  class ImprintIdentifierRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :ImprintIdentifier

    property :imprint_id_type, as: "ImprintIDType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :id_type_name, as: "IDTypeName"
    property :id_value, as: "IDValue"
  end
end
