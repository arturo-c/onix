# coding: utf-8

module ONIX
  class PublishingDate
    include Virtus.model

    attribute :publishing_date_role, Integer # list 163
    attribute :date

    def to_xml
      PublishingDateRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      PublishingDateRepresenter.new(self.new).from_xml(data)
    end
  end
end
