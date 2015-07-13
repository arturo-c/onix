# coding: utf-8

module ONIX
  class Text
    include Virtus.model

    attribute :text, String
    attribute :textformat, String # 02 - HTML / 03 - XML

    def to_xml
      TextRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      TextRepresenter.new(self.new).from_xml(data)
    end
  end
end

