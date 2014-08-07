# coding: utf-8

module ONIX
  class ProductContact
    include Virtus.model

    attribute :product_contact_role, Integer # list 198
    # attribute :product_contact_identifier, Array[ONIX::ProductContactIdentifier]
    attribute :product_contact_name, String
    attribute :contact_name, String
    attribute :email_address, String

    def to_xml
      ProductContactRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ProductContactRepresenter.new(self.new).from_xml(data)
    end
  end
end
