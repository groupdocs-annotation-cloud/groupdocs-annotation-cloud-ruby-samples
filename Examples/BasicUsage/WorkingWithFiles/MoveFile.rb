# Import modules
require './Common.rb'

class MoveFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FileApi.from_config($config)

    $request = GroupDocsAnnotationCloud::MoveFileRequest.new("annotationdocs/one-page.docx", "annotationdocs1/one-page.docx", $myStorage, $myStorage)
    $response = $api.move_file($request)

    puts("Expected response type is Void: 'annotationdocs/one-page.docx' file moved to 'annotationdocs1/one-page.docx'.")
  end
end