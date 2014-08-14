# coding: utf-8

module ONIX
  class DescriptiveDetail
    include Virtus.model

    attribute :product_composition, Integer # list 2
    attribute :product_form, String # list 150
    attribute :product_form_detail # list 175
    attribute :primary_content_type, Integer # list 81
    attribute :product_content_type, Integer # list 81
    attribute :country_of_manufacture, String # list 91
    attribute :epub_technical_protection, Integer # list 144
    attribute :epub_usage_constraint, Array[ONIX::EpubUsageConstraint]
    attribute :epub_license, ONIX::EpubLicense
    attribute :collection, Array[ONIX::Collection]
    attribute :title_detail, Array[ONIX::TitleDetail]
    attribute :contributor, Array[ONIX::Contributor]
    attribute :contributor_statement, String
    attribute :language, Array[ONIX::Language]
    attribute :subject, Array[ONIX::Subject]

    def to_xml
      DescriptiveDetailRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      DescriptiveDetailRepresenter.new(self.new).from_xml(data)
    end
  end
end
