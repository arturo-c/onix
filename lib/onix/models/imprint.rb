# coding: utf-8

module ONIX
  class Imprint
    include Virtus.model

    attribute :imprint_identifier, Array[ONIX::ImprintIdentifier]
    attribute :imprint_name

    def to_xml
      ImprintRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ImprintRepresenter.new(self.new).from_xml(data)
    end
  end
end
