# coding: utf-8

module ONIX
  class Website
    include Virtus.model

    attribute :website_role, Integer #list 73
    attribute :website_description, String
    attribute :website_link, String

    def to_xml
      WebsiteRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      WebsiteRepresenter.new(self.new).from_xml(data)
    end
  end
end
