# coding: utf-8

module ONIX
  class EpubUsageConstraint
    include Virtus.model

    attribute :epub_usage_type, Integer #list 145
    attribute :epub_usage_status, Integer #list 146
    attribute :epub_usage_limit, Array[ONIX::EpubUsageLimit]

    def to_xml
      ONIX::EpubUsageConstraintRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::EpubUsageConstraintRepresenter.new(self.new).from_xml(data)
    end
  end
end
