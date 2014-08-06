# coding: utf-8

module ONIX
  class TextContent
    include Virtus.model

    attribute :text_type, Integer # list 153
    attribute :content_audience, Integer # list 154
    attribute :text, String
    attribute :text_author, String
    attribute :text_source_corporate, String
    attribute :source_title, String


    def to_xml
      TextContentRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      TextContentRepresenter.new(self.new).from_xml(data)
    end
  end
end
