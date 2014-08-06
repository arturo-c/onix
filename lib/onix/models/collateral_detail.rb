# coding: utf-8

module ONIX
  class CollateralDetail
    include Virtus.model

    attribute :text_content, Array[ONIX::TextContent]
    # attribute :cited_content, Array[ONIX::CitedContent]
    attribute :supporting_resource, Array[ONIX::SupportingResource]
    # attribute :prize, Array[ONIX::Prize]

    def to_xml
      CollateralDetailRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      CollateralDetailRepresenter.new(self.new).from_xml(data)
    end
  end
end
