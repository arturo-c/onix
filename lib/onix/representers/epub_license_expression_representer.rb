# coding: utf-8

module ONIX
  class EpubLicenseExpressionRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :EpubLicenseExpression

    property :epub_license_expression_type, as: "EpubLicenseExpressionType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :epub_license_expression_type_name, as: "EpubLicenseExpressionTypeName"
    property :epub_license_expression_link, as: "EpubLicenseExpressionLink"
  end
end

