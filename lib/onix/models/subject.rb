# coding: utf-8

module ONIX
  class Subject
    include Virtus.model

    # attribute :main_subject <MainSubject\>
    attribute :subject_scheme_identifier, Integer # list 27
    attribute :subject_scheme_name, String
    attribute :subject_scheme_version
    attribute :subject_code
    attribute :subject_heading_text, String

    def to_xml
      SubjectRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      SubjectRepresenter.new(self.new).from_xml(data)
    end
  end
end
