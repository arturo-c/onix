# coding: utf-8

module ONIX
  class ProductIdentifier
    include Virtus.model

    attribute :product_id_type, Integer
    attribute :id_value

    def to_xml
      ProductIdentifierRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ProductIdentifierRepresenter.new(self.new).from_xml(data)
    end
  end

  class ProductIdentifierRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :ProductIdentifier

    property :product_id_type, as: "ProductIDType", getter: ->(args) { "%02i" % product_id_type unless product_id_type.nil? }
    property :id_value, as: "IDValue"
  end
end
