# coding: utf-8

module ONIX
  class AudienceRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Audience

    property :audience_code_type, as: "AudienceCodeType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :audience_code_type_name, as: "AudienceCodeTypeName"
    property :audience_code_value, as: "AudienceCodeValue", render_filter: ::ONIX::Formatters::TWO_DIGITS
  end
end
