# coding: utf-8

module ONIX
  class Contributor
    include Virtus.model

    attribute :sequence_number, Integer
    attribute :contributor_role # list 17
    attribute :from_language, String # list 74
    attribute :to_language, String # list 74
    attribute :name_type, Integer # list 18
    # attribute :name_identifier, Array[ONIX::NameIdentifier]
    attribute :person_name, String
    attribute :person_name_inverted, String
    attribute :titles_before_names, String
    attribute :names_before_key, String
    attribute :prefix_to_key, String
    attribute :key_names, String
    attribute :names_after_key, String
    attribute :suffix_to_key, String
    attribute :letters_after_names, String
    attribute :titles_after_names, String
    attribute :corporate_name, String
    attribute :corporate_name_inverted, String
    # attribute :alternative_name, Array[ONIX::AlternativeName]
    # attribute :contributor_date, Array[ONIX::ContributorDate]
    # attribute :professional_affiliation, Array[ONIX::ProfessionalAffiliation]
    attribute :biographical_note, String
    # attribute :website, Array[ONIX::Website]
    attribute :contributor_description, String
    attribute :unnamed_persons, Integer # list 19
    # attribute :contributor_place, Array[ONIX::ContributorPlace]

    def to_xml
      ContributorRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ContributorRepresenter.new(self.new).from_xml(data)
    end
  end
end
