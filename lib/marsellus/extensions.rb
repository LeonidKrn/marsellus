module Marsellus
  module Extensions
    def looks_like what
      if what.is_a? Symbol
        what = what.to_s
      end
      if what.is_a? String
        what = what.camelize
        what.gsub!('?', '')
        if Object.const_defined?(what)
          what = Object.const_get(what)
        end
      end
      if what <= Marsellus::Matcher
        p what.what
      end
    end
  end
end
