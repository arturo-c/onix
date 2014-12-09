# coding: utf-8

module ONIX
  class Header
    include Virtus.model

    attribute :sender, ONIX::Sender
    attribute :sent_date_time
    attribute :default_language_of_text, String #list 74
    attribute :default_price_type, Integer #list 58
    attribute :default_currency_code, String #list 96

    def to_xml
      ONIX::HeaderRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ONIX::HeaderRepresenter.new(self.new).from_xml(data)
    end
  end
end
