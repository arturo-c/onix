# coding: utf-8

module ONIX
  class ProductIdentifier
    include Virtus.model

    attribute :product_id_type, Integer #list 5
    attribute :id_value, String # Variable-length text, suggested maximum 50 characters

    def to_xml
      ONIX::ProductIdentifierRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::ProductIdentifierRepresenter.new(self.new).from_xml(data)
    end
  end
end
