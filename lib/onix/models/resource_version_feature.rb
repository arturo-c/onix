# coding: utf-8

module ONIX
  class ResourceVersionFeature
    include Virtus.model

    attribute :resource_version_feature_type, Integer # list 162
    attribute :feature_value # list 178
    attribute :feature_note, String

    def to_xml
      ResourceVersionFeatureRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ResourceVersionFeatureRepresenter.new(self.new).from_xml(data)
    end
  end
end
