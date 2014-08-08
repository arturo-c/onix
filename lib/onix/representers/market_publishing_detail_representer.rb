# coding: utf-8

module ONIX
  class MarketPublishingDetailRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :MarketPublishingDetail

    collection :publisher_representative, as: "PublisherRepresentative", extend: ONIX::PublisherRepresentativeRepresenter, class: ONIX::PublisherRepresentative
    collection :product_contact, as: "ProductContact", extend: ONIX::ProductContactRepresenter, class: ONIX::ProductContact
    property :market_publishing_status, as: "MarketPublishingStatus", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :market_publishing_status_note, as: "MarketPublishingStatusNote"
    collection :market_date, as: "MarketDate", extend: ONIX::MarketDateRepresenter, class: ONIX::MarketDate
    property :promotion_campaign, as: "PromotionCampaign"
    property :reprint_detail, as: "ReprintDetail"
    property :copies_sold, as: "CopiesSold"
    property :book_club_adoption, as: "BookClubAdoption"
  end
end
