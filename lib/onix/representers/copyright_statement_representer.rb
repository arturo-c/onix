# coding: utf-8

module ONIX
  class CopyrightStatementRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :CopyrightStatement

    property :copyright_type, as: "CopyrightType"
    property :copyright_year, as: "CopyrightYear"
  end
end

