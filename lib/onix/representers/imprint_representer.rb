# coding: utf-8

module ONIX
  class ImprintRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Imprint

    collection :imprint_identifier, as: "ImprintIdentifier", extend: ONIX::ImprintIdentifierRepresenter, class: ONIX::ImprintIdentifier
    property :imprint_name, as: "ImprintName"
  end
end
