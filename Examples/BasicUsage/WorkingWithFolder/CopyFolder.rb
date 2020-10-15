# Import modules
require './Common.rb'

class CopyFolder
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FolderApi.from_config($config)
    
    $request = GroupDocsAnnotationCloud::CopyFolderRequest.new("annotationdocs", "annotationdocs1", $myStorage, $myStorage)
    $response = $api.copy_folder($request)

    puts("Expected response type is Void: 'annotationdocs' folder copied as 'annotationdocs1'.")
  end
end