# coding: utf-8

module ONIX
  class Supplier
    include Virtus.model

    attribute :supplier_role, Integer # list 93
    attribute :supplier_name, String
    attribute :telephone_number, String
    attribute :fax_number, String
    attribute :email_address, String
    attribute :website, ONIX::Website


    def to_xml
      SupplierRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      SupplierRepresenter.new(self.new).from_xml(data)
    end
  end
end
