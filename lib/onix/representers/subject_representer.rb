# coding: utf-8

module ONIX
  class SubjectRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Subject

    property :subject_scheme_identifier, as: "SubjectSchemeIdentifier", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :subject_scheme_name, as: "SubjectSchemeName"
    property :subject_scheme_version, as: "SubjectSchemeVersion"
    property :subject_code, as: "SubjectCode"
    property :subject_heading_text, as: "SubjectHeadingText"
  end
end
