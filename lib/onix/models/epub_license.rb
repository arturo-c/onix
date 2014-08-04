# coding: utf-8

module ONIX
  class EpubLicense
    include Virtus.model

    attribute :epub_license_name, String
    attribute :epub_license_expression, Array[ONIX::EpubLicenseExpression]

    def to_xml
      ONIX::EpubLicenseRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::EpubLicenseRepresenter.new(self.new).from_xml(data)
    end
  end
end
