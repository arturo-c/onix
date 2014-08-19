# coding: utf-8

module ONIX
  class SupplierRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Supplier

    property :supplier_role, as: "SupplierRole", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :supplier_name, as: "SupplierName"
    collection :telephone_number, as: "TelephoneNumber"
    collection :fax_number, as: "FaxNumber"
    collection :email_address, as: "EmailAddress"
    collection :website, as: "Website", extend: ONIX::WebsiteRepresenter, class: ONIX::Website
  end
end
