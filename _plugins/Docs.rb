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

    def writeExpandableMenu(version, section, subfolderName)
      iconId = section + "-" + subfolderName + "-menu-ic"
      menuId = section + "-" + subfolderName + "-menu"
      # Generate collapsible menu name
      '<a href="#" data-toggle="collapse" aria-expended="false"' +
        'data-target="#' + menuId + '" aria-controls="' + menuId + '">' +
        '<span class="glyphicon glyphicon-chevron-right" id="' + iconId + '"> ' + subfolderName.capitalize + ' <span class="glyphicon glyphicon-chevron-right" id="' + iconId + '">'+
        '</a>' +
        # Generate submenu content
        '<ul class="collapse" id="' + menuId + '">' +
        generateSectionList(version, section + '/' + subfolderName) +
        '</ul>' +
        # Generate the arrow icon control script
        '<script type="text/javascript"> $(function() {' +
        '  $("#' + menuId + '").on("shown.bs.collapse", function () {' +
        '    $(".glyphicon#' + iconId + '").removeClass("glyphicon-chevron-right").addClass("glyphicon-chevron-down");' +
        '  });' +
        '  $("#' + menuId + '").on("hidden.bs.collapse", function () {' +
        '    $(".glyphicon#' + iconId + '").removeClass("glyphicon-chevron-down").addClass("glyphicon-chevron-right");' +
        '  });' +
        '}); </script>'
    end

    def generateSectionList(version, section)
      dirName = 'en/' + version + '/' + section
      elements = ""
      Dir.glob(dirName + '/*').sort.each do |currentPath|
        if File.directory?(currentPath)
          subfolderName = currentPath.split('/').last
          elements += '<li>'
          if (containsFolder(currentPath))
            elements += writeExpandableMenu(version, section, subfolderName)
          else
            elements += '<a href="/' + currentPath + '">' + subfolderName.capitalize + '</a>'
          end
          elements += '</li>'
        end
      end
      '<ul>' + elements + '</ul>'
    end

    def generateStingsList(version)
      generateSectionList(version, "stings")
    end

    def generateGuidesList(version)
      elements = generateSectionList(version, "guide")
    end

    def generateExtraList(version)
      generateSectionList(version, "extra")
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
      folders = Dir.glob('en/*').each
      folders.each do |f|
        if File.directory?(f)
          folderName = f.split('/').last
          versions += '"' + folderName + '",'
        end
      end
      versions = versions[0..-2] + "]"
      versions
    end
  end

end

Liquid::Template.register_filter(Jekyll::Docs)
Liquid::Template.register_tag('available_versions', Jekyll::AvailableVersionsTag)
