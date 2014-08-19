# coding: utf-8

module ONIX
  class Territory
    include Virtus.model

    # One or more fixed-length codes, each with two upper case letters, successive codes being separated by spaces. List 91
    attribute :countries_included, String
    attribute :countries_excluded, String
    # list 49
    attribute :regions_included, String
    attribute :regions_excluded, String

    def to_xml
      TerritoryRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      TerritoryRepresenter.new(self.new).from_xml(data)
    end
  end
end
