# Import modules
require './Common.rb'

class GetFileVersions
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::StorageApi.from_config($config)
    
    $request = GroupDocsAnnotationCloud::GetFileVersionsRequest.new("annotationdocs/one-page.docx", $myStorage)
    $response = $api.get_file_versions($request)

    puts("Expected response type is FileVersions: " + ($response).to_s)
  end
end