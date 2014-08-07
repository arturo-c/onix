# coding: utf-8

module ONIX
  class ProductContactRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :ProductContact

    property :product_contact_role, as: "ProductContactRole", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :product_contact_name, as: "ProductContactName"
    property :contact_name, as: "ContactName"
    property :email_address, as: "EmailAddress"

  end
end
