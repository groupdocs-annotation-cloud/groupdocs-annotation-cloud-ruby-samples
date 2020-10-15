# Import modules
require './Common.rb'

class CreateFolder
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FolderApi.from_config($config)
    
    $request = GroupDocsAnnotationCloud::CreateFolderRequest.new("annotationdocs", $myStorage)
    $response = $api.create_folder($request)

    puts("Expected response type is Void: 'annotationdocs' folder created.")
  end
end