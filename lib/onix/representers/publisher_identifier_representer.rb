# coding: utf-8

module ONIX
  class PublisherIdentifierRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :PublisherIdentifier

    property :publisher_id_type, as: "PublisherIDType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :id_type_name, as: "IDTypeName"
    property :id_value, as: "IDValue"
  end
end
