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

    def containsFolder(path)
      subDirs = Dir.glob(path + "/*").select { |f| File.directory?(f) and !(f =='.' || f == '..') }
      !subDirs.empty?
    end

    def writeExpandableMenu(version, section, subfolderName, expendable)
      iconId = section + "-" + subfolderName + "-menu-ic"
      menuId = section + "-" + subfolderName + "-menu"
      # Generate collapsible menu name

      # Initialize
      header = ""
      footer = ""
      body = ""

      if (expendable)
        header = '<a href="#" data-toggle="collapse" aria-expended="false" ' +
          'data-target="#' + menuId + '" aria-controls="' + menuId + '">' +
          '<span class="glyphicon glyphicon-chevron-right" id="' + iconId + '"> </span> ' + subfolderName.capitalize + ' <span class="glyphicon glyphicon-chevron-right" id="' + iconId + '"></span>'+
          '</a><ul class="collapse" id="' + menuId + '">'
      else
        body = subfolderName.capitalize 
      end
        
      # Generate submenu content
      body += generateSectionList(version, section + '/' + subfolderName, true)
      
      # Generate the arrow icon control script
      if (expendable)
        footer = '</ul><script type="text/javascript"> $(function() {' +
          '  $("#' + menuId + '").on("shown.bs.collapse", function () {' +
          '    $(".glyphicon#' + iconId + '").removeClass("glyphicon-chevron-right").addClass("glyphicon-chevron-down");' +
          '  });' +
          '  $("#' + menuId + '").on("hidden.bs.collapse", function () {' +
          '    $(".glyphicon#' + iconId + '").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-right");' +
          '  });' +
          '}); </script>'
      end

      header + body + footer
    end

    def generateSectionList(version, section, expendable)
      dirName = 'en/' + version + '/' + section
      elements = ""
      Dir.glob(dirName + '/*').sort.each do |currentPath|
        if File.directory?(currentPath)
          subfolderName = currentPath.split('/').last
          elements += '<li>'
          if (containsFolder(currentPath))
            elements += writeExpandableMenu(version, section, subfolderName, expendable)
          else
            elements += '<a href="/' + currentPath + '">' + subfolderName.capitalize + '</a>'
          end
          elements += '</li>'
        end
      end
      '<ul>' + elements + '</ul>'
    end

    def generateStingsListNoEffect(version)
      generateSectionList(version, "stings", false)
    end

    def generateStingsList(version)
      generateSectionList(version, "stings", true)
    end

    def generateGuidesList(version)
      generateSectionList(version, "guide", true)
    end

    def generateExtraList(version)
      generateSectionList(version, "extra", true)
    end

    def generateJsDocList(version)
      dirName = "jsdoc/" + version
      elements = ""
      Dir.glob(dirName + '/*').sort.each do |currentPath|
        moduleName = currentPath.split("/").last
        if File.directory?(currentPath)
          elements += "<li><a href='/" + currentPath + "/index.html' target='_blank'>" + moduleName.capitalize + "</a></li>"
        end
      end
      '<ul>' + elements + '</ul>'
    end
  end

  class AvailableVersionsTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      generateVersionsList()
    end

    def generateVersionsList()
      versions = "["
      folders = Dir.glob('en/*')
                  .select { |f| File.directory?(f) }
                  .map { |x| x.split("/").last }
                  .sort {|x,y| Gem::Version.new(x) <=> Gem::Version.new(y) }
      folders.each do |version|
        versions += '"' + version + '",'
      end
      versions = versions[0..-2] + "]"
      versions
    end
  end

end

Liquid::Template.register_filter(Jekyll::Docs)
Liquid::Template.register_tag('available_versions', Jekyll::AvailableVersionsTag)
