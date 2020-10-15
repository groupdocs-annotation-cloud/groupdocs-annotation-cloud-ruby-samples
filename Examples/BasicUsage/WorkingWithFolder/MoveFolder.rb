# Import modules
require './Common.rb'

class MoveFolder
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FolderApi.from_config($config)

    $request = GroupDocsAnnotationCloud::MoveFolderRequest.new("annotationdocs1", "annotationdocs/annotationdocs1", $myStorage, $myStorage)
    $response = $api.move_folder($request)

    puts("Expected response type is Void: 'annotationdocs1' folder moved to 'annotationdocs/annotationdocs1'.")
  end
end