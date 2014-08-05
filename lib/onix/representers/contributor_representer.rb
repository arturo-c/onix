# coding: utf-8

module ONIX
class ContributorRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Contributor

    property :sequence_number, as: "SequenceNumber"
    property :contributor_role, as: "ContributorRole"
    property :from_language, as: "FromLanguage"
    property :to_language, as: "ToLanguage"
    property :name_type, as: "NameType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :person_name, as: "PersonName"
    property :person_name_inverted, as: "PersonNameInverted"
    property :titles_before_names, as: "TitlesBeforeNames"
    property :names_before_key, as: "NamesBeforeKey"
    property :prefix_to_key, as: "PrefixToKey"
    property :key_names, as: "KeyNames"
    property :names_after_key, as: "NamesArterKey"
    property :suffix_to_key, as: "SuffixToKey"
    property :letters_after_names, as: "LettersAfterNames"
    property :titles_after_names, as: "TitlesAfterNames"
    property :corporate_name, as: "CorporateName"
    property :corporate_name_inverted, as: "CorporateNameInverted"
    property :biographical_note, as: "BiographicalNote"
    property :contributor_description, as: "ContributorDescription"
    property :unnamed_persons, as: "UnnamedPersons", render_filter: ::ONIX::Formatters::TWO_DIGITS
  end
end
