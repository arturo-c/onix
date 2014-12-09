# coding: utf-8

module ONIX
  class PublishingDateRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :PublishingDate

    property :publishing_date_role, as: "PublishingDateRole", render_filter: ::ONIX::Formatters::TWO_DIGITS # list 163
    property :date, as: "Date", render_filter: ::ONIX::Formatters::YYYYMMDD, parse_filter: ->(value, *context) { Date.parse(value) rescue nil }
  end
end
