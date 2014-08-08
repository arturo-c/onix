# coding: utf-8

module ONIX
  class MarketDateRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :MarketDate

    property :market_date_role, as: "MarketDateRole", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :date, as: "Date", render_filter: ::ONIX::Formatters::YYYYMMDD, parse_filter: ->(value, *context) { Date.parse(value) rescue nil }
  end
end
