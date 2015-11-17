# coding: utf-8

module ONIX
  class CountryCode
    include Virtus.model

    attribute :country_code

    def to_xml
      CountryCodeRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      CountryCodeRepresenter.new(self.new).from_xml(data)
    end
  end

  class CountryCodeRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :CountryCode

    property :country_code, as: "CountryCode"
  end
end
