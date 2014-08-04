# coding: utf-8

module ONIX
  class ProductIdentifierRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :ProductIdentifier

    property :product_id_type, as: "ProductIDType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :id_value, as: "IDValue"
  end
end
