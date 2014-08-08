# coding: utf-8

module ONIX
  class PublisherRepresentative
    include Virtus.model

    attribute :agent_role, Integer # list 69
    # attribute :agent_identifier, Array[ONIX::AgentIdentifier]
    attribute :agent_name, String
    attribute :website, Array[ONIX::Website]

    def to_xml
      PublisherRepresentativeRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      PublisherRepresentativeRepresenter.new(self.new).from_xml(data)
    end
  end
end
