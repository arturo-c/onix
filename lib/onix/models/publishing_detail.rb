# coding: utf-8

module ONIX
  class PublishingDetail
    include Virtus.model

    attribute :imprint, Array[ONIX::Imprint]
    attribute :publisher, Array[ONIX::Publisher]
    attribute :city_of_publication, String
    attribute :country_of_publication, String # list 91
    attribute :product_contact, Array[ONIX::ProductContact]
    attribute :publishing_status, Integer # list 64
    attribute :publishing_status_note, String
    attribute :publishing_date, Array[ONIX::PublishingDate]
    attribute :lastest_reprint_number, Integer
    attribute :copyright_statement, ONIX::CopyrightStatement
    attribute :sales_rights, Array[ONIX::SalesRights]

    def to_xml
      PublishingDetailRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      PublishingDetailRepresenter.new(self.new).from_xml(data)
    end
  end
end
