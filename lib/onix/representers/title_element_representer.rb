# coding: utf-8

module ONIX
  class TitleElementRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :TitleElement

    property :sequence_number, as: "SequenceNumber"
    property :title_element_level, as: "TitleElementLevel", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :part_number, as: "PartNumber"
    property :year_of_annual, as: "YearOfAnnual"
    property :title_text, as: "TitleText"
    property :title_prefix, as: "TitlePrefix"
    property :subtitle, as: "Subtitle"
  end
end
