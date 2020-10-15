# Import modules
require './Common.rb'

class CopyFile
  def self.Run() 

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::FileApi.from_config($config)

    $request = GroupDocsAnnotationCloud::CopyFileRequest.new("annotationdocs/one-page.docx", "annotationdocs/one-page-copied.docx", $myStorage, $myStorage)
    $response = $api.copy_file($request)

    puts("Expected response type is Void: 'annotationdocs/one-page.docx' file copied as 'annotationdocs/one-page-copied.docx'.")
  end
end