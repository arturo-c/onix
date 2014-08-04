# coding: utf-8

module ONIX
  class EpubLicenseExpression
    include Virtus.model

    attribute :epub_license_expression_type, Integer
    attribute :epub_license_expression_type_name, String
    attribute :epub_license_expression_link, String

    def to_xml
      ONIX::EpubLicenseExpressionRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::EpubLicenseExpressionRepresenter.new(self.new).from_xml(data)
    end
  end
end
