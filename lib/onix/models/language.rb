# coding: utf-8

module ONIX
  class Language
    include Virtus.model

    attribute :language_role, Integer # list 22
    attribute :language_code, String # list 74
    attribute :country_code, String # list 91
    attribute :script_code, String # list 121

    def to_xml
      LanguageRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      LanguageRepresenter.new(self.new).from_xml(data)
    end
  end
end
