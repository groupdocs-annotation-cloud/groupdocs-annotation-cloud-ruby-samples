# Import modules
require './Common.rb'

class GetDocumentInformation
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::InfoApi.from_config($config)
    
    $request = GroupDocsAnnotationCloud::GetInfoRequest.new("annotationdocs\\one-page.docx")

    # Executing an API.
    $response = $api.get_info($request)

    puts("GetDocumentInformation: Pages count = " + $response.pages.length.to_s)
  end
end
