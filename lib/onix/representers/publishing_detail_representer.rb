# coding: utf-8

module ONIX
  class PublishingDetailRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :PublishingDetail

    collection :imprint, as: "Imprint", extend: ONIX::ImprintRepresenter, class: ONIX::Imprint
    collection :publisher, as: "Publisher", extend: ONIX::PublisherRepresenter, class: ONIX::Publisher
    property :city_of_publication, as: "CityOfPublication"
    property :country_of_publication, as: "CountryOfPublication"
    collection :product_contact, as: "ProductContact", extend: ONIX::ProductContactRepresenter, class: ONIX::ProductContact
    property :publishing_status, as: "PublishingStatus", render_filter: ::ONIX::Formatters::TWO_DIGITS # list 64
    property :publishing_status_note, as: "PublishingStatusNote"
    collection :publishing_date, as: "PublishingDate", extend: ONIX::PublishingDateRepresenter, class: ONIX::PublishingDate
    property :lastest_reprint_number, as: "LatestReprintNumber"
    property :copyright_statement, as: "CopyrightStatement", extend: ONIX::CopyrightStatementRepresenter, class: ONIX::CopyrightStatement
    collection :sales_rights, as: "SalesRights", extend: ONIX::SalesRightsRepresenter, class: ONIX::SalesRights
  end
end
