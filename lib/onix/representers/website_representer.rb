# coding: utf-8

module ONIX
  class WebsiteRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Website

    property :website_role, as: "WebsiteRole", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :website_description, as: "WebsiteDescription"
    property :website_link, as: "WebsiteLink"
  end
end
