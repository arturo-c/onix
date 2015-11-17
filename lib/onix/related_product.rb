# coding: utf-8

module ONIX
  class RelatedProduct
    include Virtus.model

    attribute :relation_code
    attribute :product_identifiers

    def to_xml
      RelatedProductRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      RelatedProductRepresenter.new(self.new).from_xml(data)
    end
  end

  class RelatedProductRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :RelatedProduct

    property :relation_code, as: "RelationCode", render_filter: ::ONIX::Formatters::TWO_DIGITS
    collection :product_identifiers, as: "ProductIdentifier", extend: ONIX::RelatedProductRepresenter, class: ONIX::RelatedProduct
  end
end
