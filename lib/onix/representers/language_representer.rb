# coding: utf-8

module ONIX
 class LanguageRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Language

    property :language_role, as: "LanguageRole", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :language_code, as: "LanguageCode"
    property :country_code, as: "CountryCode"
    property :script_code, as: "ScriptCode"
  end
end
