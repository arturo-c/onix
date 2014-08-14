# coding: utf-8

module ONIX
  class Collection
    include Virtus.model

    attribute :collection_type, Integer # list 148
    attribute :source_name, String
    attribute :title_detail, Array[ONIX::TitleDetail]

    def to_xml
      CollectionRepresenter.new(self).to_xml
    end

    def self.from_xml(data)
      CollectionRepresenter.new(self.new).from_xml(data)
    end

  end
end
