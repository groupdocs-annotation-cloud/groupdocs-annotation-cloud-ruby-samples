# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Annotation_Ruby_Download_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()

    $request = GroupDocsAnnotationCloud::DownloadFileRequest.new("annotationdocs/one-page.docx", $myStorage)
    $response = $api.download_file($request)
    
    puts("Expected response type is Stream: " + ($response).to_s)
  end
end