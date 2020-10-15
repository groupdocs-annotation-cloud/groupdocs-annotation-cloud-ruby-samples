# Import modules
require './Common.rb'

class DeleteFolder
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FolderApi.from_config($config)
    
    $request = GroupDocsAnnotationCloud::DeleteFolderRequest.new("annotationdocs1", $myStorage, true)
    $response = $api.delete_folder($request)

    puts("Expected response type is Void: 'annotationdocs/annotationdocs1' folder deleted recursively.")
  end
end