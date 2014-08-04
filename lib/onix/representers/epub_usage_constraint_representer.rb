# coding: utf-8

module ONIX
  class EpubUsageConstraintRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :EpubUsageConstraint

    property :epub_usage_type, as: "EpubUsageType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :epub_usage_status, as: "EpubUsageStatus", render_filter: ::ONIX::Formatters::TWO_DIGITS
    collection :epub_usage_limit, as: "EpubUsageLimit", extend: ONIX::EpubUsageLimitRepresenter, class: ONIX::EpubUsageLimit
  end
end
