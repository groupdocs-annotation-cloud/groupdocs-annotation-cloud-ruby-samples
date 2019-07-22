# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Annotation_Ruby_Move_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsAnnotationCloud::MoveFileRequest.new("annotationdocs/one-page.docx", "annotationdocs1/one-page.docx", $myStorage, $myStorage)
    $response = $api.move_file($request)

    puts("Expected response type is Void: 'annotationdocs/one-page.docx' file moved to 'annotationdocs1/one-page.docx'.")
  end
end