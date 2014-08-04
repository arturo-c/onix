# coding: utf-8

module ONIX
  class EpubLicenseRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :EpubLicense

    property :epub_license_name, as: "EpubLicenseName"
    collection :epub_license_expression, as: "EpubLicenseExpression", extend: ONIX::EpubLicenseExpressionRepresenter, class: ONIX::EpubLicenseExpression
  end
end
