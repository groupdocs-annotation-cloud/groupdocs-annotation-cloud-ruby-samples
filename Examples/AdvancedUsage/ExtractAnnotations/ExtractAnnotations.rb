# Import modules
require './Common.rb'

class ExtractAnnotations
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::AnnotateApi.from_config($config)

    file_info = GroupDocsAnnotationCloud::FileInfo.new()
    file_info.file_path = "annotationdocs\\input.docx"

    $request = GroupDocsAnnotationCloud::ExtractRequest.new(file_info)

    # Executing an API.
    $response = $api.extract($request)

    puts("ExtractAnnotations: annotations count = " + $response.length.to_s)
  end
end