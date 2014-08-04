# coding: utf-8

module ONIX
  class TitleDetailRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :TitleDetail

    property :title_type, as: "TitleType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    collection :title_element, as: "TitleElement", extend: ONIX::TitleElementRepresenter, class: ONIX::TitleElement
    property :title_statement, as: "TitleStatement"
  end
end
