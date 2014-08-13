# coding: utf-8

module ONIX
  class SupplyDetailRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :SupplyDetail

    property :supplier, as: "Supplier", extend: ONIX::SupplierRepresenter, class: ONIX::Supplier
    property :product_availability, as: "ProductAvailability", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :unpriced_item_type, as: "UnpricedItemType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :price, as: "Price", extend: ONIX::PriceRepresenter, class: ONIX::Price
  end
end
