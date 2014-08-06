# coding: utf-8

module ONIX
  class SupportingResource
    include Virtus.model

    attribute :resource_content_type, Integer # list 158
    # attribute :resource_feature, Array[ONIX::ResourceFeature]
    attribute :content_audience, Integer # list 154
    attribute :resource_mode, Integer # list 159
    attribute :resource_version, Array[ONIX::ResourceVersion]

    def to_xml
      SupportingResourceRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      SupportingResourceRepresenter.new(self.new).from_xml(data)
    end
  end
end
