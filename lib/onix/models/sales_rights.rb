# coding: utf-8

module ONIX
  class SalesRights
    include Virtus.model

    attribute :sales_rights_type, Integer
    attribute :territory, ONIX::Territory

    def to_xml
      SalesRightsRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      SalesRightsRepresenter.new(self.new).from_xml(data)
    end
  end
end
