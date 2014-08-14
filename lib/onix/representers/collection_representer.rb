# coding: utf-8

module ONIX
  class CollectionRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Collection

    property :collection_type, as: "CollectionType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :source_name, as: "SourceName"
    collection :title_detail, as: "TitleDetail", extend: ONIX::TitleDetailRepresenter, class: ONIX::TitleDetail
  end
end
