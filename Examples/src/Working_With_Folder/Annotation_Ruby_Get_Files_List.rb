# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Folder
  def self.Annotation_Ruby_Get_Files_List()

    # Getting instance of the API
    $api = Common_Utilities.Get_FolderApi_Instance()
    
    $request = GroupDocsAnnotationCloud::GetFilesListRequest.new("annotationdocs/sample.docx", $myStorage)
    $response = $api.get_files_list($request)

    puts("Expected response type is FilesList: " + ($response).to_s)
  end
end