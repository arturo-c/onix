# coding: utf-8

require 'bigdecimal'
require 'cgi'
require 'singleton'
require 'representable/xml'
require 'virtus'

module ONIX
  class Formatters

    TWO_DIGITS = ->(value, *context) {
      if value.is_a?(Array)
        value.each_with_index do |val, index|
          value[index] = ONIX::Formatters::two_digits_format(val)
        end
      else
        ONIX::Formatters::two_digits_format(value)
      end
    }

    def self.two_digits_format(value)
      if value.nil?
          nil
        elsif value.to_i < 10
          "%02i" % value
        elsif value.to_i > 99
          value.to_s[-2,2]
        else
          value.to_s
        end
    end

    YYYYMMDD = ->(value, *context) { value.strftime("%Y%m%d") if value.respond_to? :strftime }
    DECIMAL = ->(value, *context) {
      case value
      when nil then nil
      when BigDecimal then value.to_s("F")
      else value.to_s
      end
    }

  end

  # core files
  # - ordering is important, classes need to be defined before any
  #   other class can use them
  # autoload :SenderIdentifier, "onix/sender_identifier"
  # autoload :AddresseeIdentifier, "onix/addressee_identifier"
  autoload :Sender, "onix/models/sender"
  autoload :SenderRepresenter, "onix/representers/sender_representer"
  autoload :Header, "onix/models/header"
  autoload :HeaderRepresenter, "onix/representers/header_representer"
  autoload :ProductIdentifier, "onix/models/product_identifier"
  autoload :ProductIdentifierRepresenter, "onix/representers/product_identifier_representer"
  autoload :EpubUsageLimit, "onix/models/epub_usage_limit"
  autoload :EpubUsageLimitRepresenter, "onix/representers/epub_usage_limit_representer"
  autoload :EpubUsageConstraint, "onix/models/epub_usage_constraint"
  autoload :EpubUsageConstraintRepresenter, "onix/representers/epub_usage_constraint_representer"
  autoload :EpubLicenseExpression, "onix/models/epub_license_expression"
  autoload :EpubLicenseExpressionRepresenter, "onix/representers/epub_license_expression_representer"
  autoload :EpubLicense, "onix/models/epub_license"
  autoload :EpubLicenseRepresenter, "onix/representers/epub_license_representer"
  autoload :TitleElement, "onix/models/title_element"
  autoload :TitleElementRepresenter, "onix/representers/title_element_representer"
  autoload :TitleDetail, "onix/models/title_detail"
  autoload :TitleDetailRepresenter, "onix/representers/title_detail_representer"
  autoload :Contributor, "onix/models/contributor"
  autoload :ContributorRepresenter, "onix/representers/contributor_representer"
  autoload :Language, "onix/models/language"
  autoload :LanguageRepresenter, "onix/representers/language_representer"
  autoload :Subject, "onix/models/subject"
  autoload :SubjectRepresenter, "onix/representers/subject_representer"
  autoload :DescriptiveDetail, "onix/models/descriptive_detail"
  autoload :DescriptiveDetailRepresenter, "onix/representers/descriptive_detail_representer"
  autoload :ResourceVersionFeature, "onix/models/resource_version_feature"
  autoload :ResourceVersionFeatureRepresenter, "onix/representers/resource_version_feature_representer"
  autoload :ResourceVersion, "onix/models/resource_version"
  autoload :ResourceVersionRepresenter, "onix/representers/resource_version_representer"
  autoload :SupportingResource, "onix/models/supporting_resource"
  autoload :SupportingResourceRepresenter, "onix/representers/supporting_resource_representer"
  autoload :TextContent, "onix/models/text_content"
  autoload :TextContentRepresenter, "onix/representers/text_content_representer"
  autoload :CollateralDetail, "onix/models/collateral_detail"
  autoload :CollateralDetailRepresenter, "onix/representers/collateral_detail_representer"
  autoload :ImprintIdentifier, "onix/models/imprint_identifier"
  autoload :ImprintIdentifierRepresenter, "onix/representers/imprint_identifier_representer"
  autoload :SeriesIdentifier, "onix/series_identifier"
  autoload :Series, "onix/series"
  autoload :Title, "onix/title"
  autoload :Website, "onix/website"
  autoload :AudienceRange, "onix/audience_range"
  autoload :Imprint, "onix/imprint"
  autoload :Publisher, "onix/publisher"
  autoload :OtherText, "onix/other_text"
  autoload :MediaFile, "onix/media_file"
  autoload :SalesRestriction, "onix/sales_restriction"
  autoload :Stock, "onix/stock"
  autoload :DiscountCoded, "onix/discount_coded"
  autoload :Price, "onix/price"
  autoload :SupplyDetail, "onix/supply_detail"
  autoload :MarketRepresentation, "onix/market_representation"
  autoload :Measure, "onix/measure"
  autoload :Product, "onix/product"
  autoload :Reader, "onix/reader"
  autoload :Writer, "onix/writer"

  # product wrappers
  autoload :SimpleProduct, "onix/simple_product"
  autoload :APAProduct, "onix/apa_product"

  # misc
  autoload :Lists, "onix/lists"
  autoload :Normaliser, "onix/normaliser"
  autoload :CodeListExtractor, "onix/code_list_extractor"

end
