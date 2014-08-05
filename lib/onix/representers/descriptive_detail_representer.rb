# coding: utf-8

module ONIX
  class DescriptiveDetailRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :DescriptiveDetail

    property :product_composition, as: "ProductComposition", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :product_form, as: "ProductForm"
    property :product_form_detail, as: "ProductFormDetail"
    property :primary_content_type, as: "PrimaryContentType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :product_content_type, as: "ProductContentType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :country_of_manufacture, as: "CountryOfManufacture"
    property :epub_technical_protection, as: "EpubTechnicalProtection", render_filter: ::ONIX::Formatters::TWO_DIGITS
    collection :epub_usage_constraint, as: "EpubUsageConstraint", extend: ONIX::EpubUsageConstraintRepresenter, class: ONIX::EpubUsageConstraint
    property :epub_license, as: "EpubLicense", extend: ONIX::EpubLicenseRepresenter, class: ONIX::EpubLicense
    collection :title_detail, as: "TitleDetail", extend: ONIX::TitleDetailRepresenter, class: ONIX::TitleDetail
    collection :contributor, as: "Contributor", extend: ONIX::ContributorRepresenter, class: ONIX::Contributor
    property :contributor_statement, as: "ContributorStatement"
    collection :language, as: "Language", extend: ONIX::LanguageRepresenter, class: ONIX::Language
    collection :subject, as: "Subject", extend: ONIX::SubjectRepresenter, class: ONIX::Subject
  end
end

