# coding: utf-8

module ONIX
  class ResourceVersionRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :ResourceVersion

    property :resource_form, as: "ResourceForm", render_filter: ::ONIX::Formatters::TWO_DIGITS
    collection :resource_version_feature, as: "ResourceVersionFeature", extend: ONIX::ResourceVersionFeatureRepresenter, class: ONIX::ResourceVersionFeature
    property :resource_link, as: "ResourceLink"
  end
end
