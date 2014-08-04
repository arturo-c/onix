# coding: utf-8

module ONIX
  class EpubUsageLimit
    include Virtus.model

    attribute :quantity
    attribute :epub_usage_unit, Integer #list 147

    def to_xml
      ONIX::EpubUsageLimitRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::EpubUsageLimitRepresenter.new(self.new).from_xml(data)
    end
  end
end
