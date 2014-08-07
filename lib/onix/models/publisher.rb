# coding: utf-8

module ONIX
  class Publisher
    include Virtus.model

    attribute :publishing_role, Integer # list 45
    attribute :publisher_identifier, Array[ONIX::PublisherIdentifier]
    attribute :publisher_name, String
    attribute :website, Array[ONIX::Website]

    def to_xml
      PublisherRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      PublisherRepresenter.new(self.new).from_xml(data)
    end
  end
end
