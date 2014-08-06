# coding: utf-8

module ONIX
  class ResourceVersionFeatureRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :ResourceVersionFeature

    property :resource_version_feature_type, as: "ResourceVersionFeatureType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :feature_value, as: "FeatureValue"
    property :feature_note, as: "FeatureNote"
  end
end
