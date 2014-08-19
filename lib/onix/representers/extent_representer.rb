# coding: utf-8

module ONIX
  class ExtentRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Extent

    property :extent_type, as: "ExtentType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :extent_value, as: "ExtentValue", render_filter: ::ONIX::Formatters::DECIMAL, parse_filter: ->(value, *context) { value.is_a?(Integer) ? value.to_i : BigDecimal.new(value) }
    property :extent_value_roman, as: "ExtentValueRoman"
    property :extent_unit, as: "ExtentUnit", render_filter: ::ONIX::Formatters::TWO_DIGITS
  end
end
