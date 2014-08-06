# coding: utf-8

module ONIX
  class SupportingResourceRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :SupportingResource

    property :resource_content_type, as: "ResourceContentType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :content_audience, as: "ContentAudience", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :resource_mode, as: "ResourceMode", render_filter: ::ONIX::Formatters::TWO_DIGITS
    collection :resource_version, as: "ResourceVersion", extend: ONIX::ResourceVersionRepresenter, class: ONIX::ResourceVersion
  end
end
