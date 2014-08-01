# coding: utf-8

module ONIX
  class Sender
    include Virtus.model

    attribute :sender_name, String # Variable-length text, suggested maximum 50 characters

    def to_xml
      ONIX::SenderRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::SenderRepresenter.new(self.new).from_xml(data)
    end
  end
end
