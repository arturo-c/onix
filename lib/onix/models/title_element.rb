# coding: utf-8

module ONIX
  class TitleElement
    include Virtus.model

    attribute :sequence_number, Integer
    attribute :title_element_level, Integer #list 149
    attribute :part_number, String
    attribute :year_of_annual #YYYY or YYYY-YYYY
    attribute :title_text, String
    attribute :title_prefix, String
    attribute :subtitle, String

    def to_xml
      ONIX::TitleElementRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::TitleElementRepresenter.new(self.new).from_xml(data)
    end
  end
end
