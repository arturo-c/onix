# coding: utf-8

module ONIX
  class PublisherIdentifier
    include Virtus.model

    attribute :publisher_id_type, Integer # list 44
    attribute :id_type_name, String
    attribute :id_value

    def to_xml
      PublisherIdentifierRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      PublisherIdentifierRepresenter.new(self.new).from_xml(data)
    end
  end
end
