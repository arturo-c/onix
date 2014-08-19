# coding: utf-8

module ONIX
  class Audience
    include Virtus.model

    attribute :audience_code_type, Integer # list 29
    attribute :audience_code_type_name, String
    attribute :audience_code_value, Integer # list 28 if audience_code_type = 01

    def to_xml
      AudienceRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      AudienceRepresenter.new(self.new).from_xml(data)
    end
  end
end
