# Import modules
require './Common.rb'

class GetDocumentInformation
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::InfoApi.from_config($config)
    
    file_info = GroupDocsAnnotationCloud::FileInfo.new()
    file_info.file_path = "annotationdocs\\one-page.docx"

    $request = GroupDocsAnnotationCloud::GetInfoRequest.new(file_info)

    # Executing an API.
    $response = $api.get_info($request)

    puts("GetDocumentInformation: Pages count = " + $response.pages.length.to_s)
  end
end
