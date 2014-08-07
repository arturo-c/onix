# coding: utf-8

module ONIX
  class ImprintIdentifier
    include Virtus.model

    attribute :imprint_id_type, Integer # list 44
    attribute :id_type_name, String
    attribute :id_value

    def to_xml
      ImprintIdentifierRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ImprintIdentifierRepresenter.new(self.new).from_xml(data)
    end
  end
end
