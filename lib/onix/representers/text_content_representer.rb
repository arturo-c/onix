# coding: utf-8

module ONIX
  class TextContentRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :TextContent

    property :text_type, as: "TextType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :content_audience, as: "ContentAudience", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :text, as: "Text"
    property :text_author, as: "TextAuthor"
    property :text_source_corporate, as: "TextSourceCorporate"
    property :source_title, as: "SourceTitle"
  end
end
