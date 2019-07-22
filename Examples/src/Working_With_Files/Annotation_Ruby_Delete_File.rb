# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Annotation_Ruby_Delete_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsAnnotationCloud::DeleteFileRequest.new("annotationdocs1/one-page.docx", $myStorage)
    $response = $api.delete_file($request)

    puts("Expected response type is Void: 'annotationdocs1/one-page.docx' deleted.")
  end
end