# coding: utf-8

module ONIX
  class ResourceVersion
    include Virtus.model

    attribute :resource_form, Integer # list 161
    attribute :resource_version_feature, Array[ONIX::ResourceVersionFeature]
    attribute :resource_link, String

    def to_xml
      ResourceVersionRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ResourceVersionRepresenter.new(self.new).from_xml(data)
    end
  end
end
