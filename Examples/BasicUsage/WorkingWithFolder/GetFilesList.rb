# Import modules
require './Common.rb'

class GetFilesList
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FolderApi.from_config($config)
    
    $request = GroupDocsAnnotationCloud::GetFilesListRequest.new("annotationdocs/sample.docx", $myStorage)
    $response = $api.get_files_list($request)

    puts("Expected response type is FilesList: " + ($response).to_s)
  end
end