# coding: utf-8

module ONIX
  class HeaderRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Header

    property :sender, as: "Sender", extend: ONIX::SenderRepresenter, class: ONIX::Sender
    property :sent_date_time, as: "SentDateTime", render_filter: ::ONIX::Formatters::YYYYMMDD, parse_filter: ->(value, *context) { Date.parse(value) rescue nil }
    property :default_language_of_text, as: "DefaultLanguageOfText"
    property :default_price_type, as: "DefaultPriceType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :default_currency_code, as: "DefaultCurrencyCode"
  end

end
