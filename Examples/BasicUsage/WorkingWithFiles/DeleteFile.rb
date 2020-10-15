# Import modules
require './Common.rb'

class DeleteFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FileApi.from_config($config)

    $request = GroupDocsAnnotationCloud::DeleteFileRequest.new("annotationdocs1/one-page.docx", $myStorage)
    $response = $api.delete_file($request)

    puts("Expected response type is Void: 'annotationdocs1/one-page.docx' deleted.")
  end
end