module Jekyll
  module Docs
    def getVersion(text)
      result = /([0-9]+[.]){2}[0-9]+/.match(text) # version if found, nil otherwise
      if result != nil 
        result[0]
      else
        result 
      end
    end

    def generateStingsList(version)
      stings = ""
      folders = Dir.glob('en/'+version+'/stings/*').each 
      folders.each do |f| 
        if File.directory?(f)
          folderName = f.split('/').last
          stings += '<li><a href="/en/'+version+'/stings/'+folderName+'">'+folderName.capitalize+'</a></li>'
        end
      end
      stings
    end
  end
end

Liquid::Template.register_filter(Jekyll::Docs)