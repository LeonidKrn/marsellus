module Marsellus
  class Matcher
    class << self
      def class_to_match klass
        matcher_class = self
        matcher_class_name = matcher_class.name.underscore
        klass.class_exec do
          include Marsellus::Extensions
          define_method("looks_like_#{matcher_class_name}?".to_sym) do
            looks_like(matcher_class)
          end
        end
      end

      def what
        'in my butt'
      end
    end
  end
end
