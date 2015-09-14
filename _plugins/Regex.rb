module Jekyll
  module Regex
    def getVersion(text)
      result = /([0-9]+[.]){2}[0-9]+/.match(text) # version if found, nil otherwise
      if result != nil 
        result[0]
      else
        result 
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::Regex)