require 'administrate/field/select'
require 'rails'

module Administrate
  module Field
    class MultipleSelect < Administrate::Field::Select

      def to_s
        data
      end

      def self.permitted_attribute(attribute, _options = nil)
        { attribute.to_sym => [] }
      end

      def permitted_attribute
        self.class.permitted_attribute(attribute)
      end
    end
  end
end

