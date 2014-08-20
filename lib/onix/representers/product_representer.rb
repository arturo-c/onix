# coding: utf-8

module ONIX
  class ProductRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Product

    property :record_reference, as: "RecordReference"
    property :notification_type, as: "NotificationType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    property :record_resource_type, as: "RecordSourceType", render_filter: ::ONIX::Formatters::TWO_DIGITS
    collection :product_identifiers, as: "ProductIdentifier", extend: ONIX::ProductIdentifierRepresenter, class: ONIX::ProductIdentifier
    property :descriptive_detail, as: "DescriptiveDetail", extend: ONIX::DescriptiveDetailRepresenter, class: ONIX::DescriptiveDetail
    property :collateral_detail, as: "CollateralDetail", extend: ONIX::CollateralDetailRepresenter, class: ONIX::CollateralDetail
    property :publishing_detail, as: "PublishingDetail", extend: ONIX::PublishingDetailRepresenter, class: ONIX::PublishingDetail
    collection :product_supply, as: "ProductSupply", extend: ONIX::ProductSupplyRepresenter, class: ONIX::ProductSupply
  end
end
