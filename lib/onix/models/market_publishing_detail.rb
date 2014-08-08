# coding: utf-8

module ONIX
  class MarketPublishingDetail
    include Virtus.model

    attribute :publisher_representative, Array[ONIX::PublisherRepresentative]
    # attribute :sales_rectriction, ONIX::SalesRestriction
    attribute :product_contact, Array[ONIX::ProductContact]
    attribute :market_publishing_status, Integer # list 68
    attribute :market_publishing_status_note, String
    attribute :market_date, Array[ONIX::MarketDate]
    attribute :promotion_campaign, String
    attribute :reprint_detail, String
    attribute :copies_sold, String
    attribute :book_club_adoption, String

    def to_xml
      MarketPublishingDetailRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      MarketPublishingDetailRepresenter.new(self.new).from_xml(data)
    end
  end
end
