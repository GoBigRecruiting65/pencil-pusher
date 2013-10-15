module PencilPusher
  module Validations
    class TimeValidator < ActiveModel::EachValidator
      def validate_each(model, attribute, value)
        @model     = model
        @attribute = attribute

        if blank?(value)
          append_blank_message
        else
          coerce_time(value)
        end
      end

      private

      attr_reader :model, :attribute

      def messages
        @messages ||= options.fetch(:messages)
      end

      def coerce_time(value)
        Time.strptime(value, options.fetch(:format))
      rescue ArgumentError
        append_invalid_message
      end

      def blank?(value)
        value.nil? || value.strip == ''
      end

      def append_blank_message
        model.errors[attribute] << messages.fetch(:blank)
      end

      def append_invalid_message
        model.errors[attribute] << messages.fetch(:invalid)
      end
    end
  end
end
