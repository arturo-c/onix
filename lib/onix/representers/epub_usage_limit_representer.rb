# coding: utf-8

module ONIX
  class EpubUsageLimitRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :EpubUsageLimit

    property :quantity, as: "Quantity", render_filter: ::ONIX::Formatters::DECIMAL
    property :epub_usage_unit, as: "EpubUsageUnit", render_filter: ::ONIX::Formatters::TWO_DIGITS
  end
end
