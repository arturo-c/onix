# coding: utf-8

module ONIX
  class TextRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Text

    property :text, as: "Text", content: true
    property :textformat, as: "textformat", attribute: true, render_filter: ::ONIX::Formatters::TWO_DIGITS
  end
end
