# coding: utf-8

module ONIX
  class TitleDetail
    include Virtus.model

    attribute :title_type, Integer #list 15
    attribute :title_element, Array[ONIX::TitleElement]
    attribute :title_statement, String

    def to_xml
      ONIX::TitleDetailRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::TitleDetailRepresenter.new(self.new).from_xml(data)
    end
  end
end
