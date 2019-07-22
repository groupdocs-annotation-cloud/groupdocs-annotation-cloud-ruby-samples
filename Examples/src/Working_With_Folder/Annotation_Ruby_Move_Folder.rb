# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Annotation_Ruby_Move_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()

    $request = GroupDocsAnnotationCloud::MoveFolderRequest.new("annotationdocs1", "annotationdocs/annotationdocs1", $myStorage, $myStorage)
    $response = $api.move_folder($request)

    puts("Expected response type is Void: 'annotationdocs1' folder moved to 'annotationdocs/annotationdocs1'.")
  end
end