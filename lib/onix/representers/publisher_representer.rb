# coding: utf-8

module ONIX
  class PublisherRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Publisher

    property :publishing_role, as: "PublishingRole", render_filter: ::ONIX::Formatters::TWO_DIGITS
    collection :publisher_identifier, as: "PublisherIdentifier", extend: ONIX::PublisherIdentifierRepresenter, class: ONIX::PublisherIdentifier
    property :publisher_name, as: "PublisherName"
    collection :website, as: "Website", extend: ONIX::WebsiteRepresenter, class: ONIX::Website
  end
end
