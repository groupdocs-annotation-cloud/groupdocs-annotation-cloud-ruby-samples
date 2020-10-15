# Import modules
require './Common.rb'

class GetSupportedFormats
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::InfoApi.from_config($config)

    # Retrieve supported file-formats
    $response = $api.get_supported_file_formats()

    puts("GetSupportedFormats: formats count = " + $response.formats.length.to_s)
  end
end
