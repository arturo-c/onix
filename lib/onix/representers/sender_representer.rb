# coding: utf-8

module ONIX
  class SenderRepresenter < Representable::Decorator
    include Representable::XML

    self.representation_wrap = :Sender

    property :sender_name, as: "SenderName"
  end
end
