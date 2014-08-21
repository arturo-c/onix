# coding: utf-8

module ONIX
  class Product
    include Virtus.model

    attribute :record_reference, String
    attribute :notification_type, Integer # list 1
    attribute :record_source_type, Integer # list 3
    attribute :product_identifier, Array[ONIX::ProductIdentifier]
    attribute :descriptive_detail, ONIX::DescriptiveDetail
    attribute :collateral_detail, ONIX::CollateralDetail
    attribute :publishing_detail, ONIX::PublishingDetail
    attribute :product_supply, Array[ONIX::ProductSupply]

    def to_xml
      ProductRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      ProductRepresenter.new(self.new).from_xml(data)
    end
  end
end
