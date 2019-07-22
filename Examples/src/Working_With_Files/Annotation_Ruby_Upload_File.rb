# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Files
  def self.Annotation_Ruby_Upload_File()

    # Getting instance of the API
    $api = Common_Utilities.Get_FileApi_Instance()
   
    $fileStream = File.new("..\\Resources\\annotationdocs\\one-page.docx", "r")
    
    $request = GroupDocsAnnotationCloud::UploadFileRequest.new("annotationdocs/one-page1.docx", $fileStream, $myStorage)
    $response = $api.upload_file($request)
    
    $fileStream.close()

    puts("Expected response type is FilesUploadResult: " + ($response).to_s)
  end
end