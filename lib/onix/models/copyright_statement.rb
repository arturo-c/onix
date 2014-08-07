# coding: utf-8

module ONIX
  class CopyrightStatement
    include Virtus.model

    attribute :copyright_type, String
    attribute :copyright_year, String

    def to_xml
      CopyrightStatementRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      CopyrightStatementRepresenter.new(self.new).from_xml(data)
    end
  end
end

