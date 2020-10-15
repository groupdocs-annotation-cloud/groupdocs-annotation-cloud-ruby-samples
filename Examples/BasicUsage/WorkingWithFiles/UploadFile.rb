# Import modules
require './Common.rb'

class UploadFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FileApi.from_config($config)
   
    $fileStream = File.new("..\\Resources\\annotationdocs\\one-page.docx", "r")
    
    $request = GroupDocsAnnotationCloud::UploadFileRequest.new("annotationdocs/one-page1.docx", $fileStream, $myStorage)
    $response = $api.upload_file($request)
    
    $fileStream.close()

    puts("Expected response type is FilesUploadResult: " + ($response).to_s)
  end
end