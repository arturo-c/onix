# coding: utf-8

module ONIX
  class CollateralDetailRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :CollateralDetail

    collection :text_content, as: "TextContent", extend: ONIX::TextContentRepresenter, class: ONIX::TextContent
    collection :supporting_resource, as: "SupportingResource", extend: ONIX::SupportingResourceRepresenter, class: ONIX::SupportingResource
  end
end
