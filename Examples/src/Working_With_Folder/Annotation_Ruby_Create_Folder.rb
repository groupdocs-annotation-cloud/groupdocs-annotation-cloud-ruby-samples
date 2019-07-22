# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Annotation_Ruby_Create_Folder()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsAnnotationCloud::CreateFolderRequest.new("annotationdocs", $myStorage)
    $response = $api.create_folder($request)

    puts("Expected response type is Void: 'annotationdocs' folder created.")
  end
end