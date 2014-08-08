# coding: utf-8

module ONIX
  class PublisherRepresentativeRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :PublisherRepresentative

    property :agent_role, as: "AgentRole", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :agent_name, as: "AgentName"
    collection :website, as: "Website", extend: ONIX::WebsiteRepresenter, class: ONIX::Website
  end
end
