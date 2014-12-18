# coding: utf-8

module ONIX
  class PriceRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Price

    property :price_type, as: "PriceType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :price_amount, as: "PriceAmount", render_filter: ::ONIX::Formatters::DECIMAL
    property :currency_code, as: "CurrencyCode"

  end
end
