# coding: utf-8

module ONIX
  class Extent
    include Virtus.model

    attribute :extent_type, Integer # list 23
    attribute :extent_value #Integer or Decimal
    attribute :extent_value_roman, String
    attribute :extent_unit, Integer # list 24

    def to_xml
      ExtentRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ExtentRepresenter.new(self.new).from_xml(data)
    end
  end
end
