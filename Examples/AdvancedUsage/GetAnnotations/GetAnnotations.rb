# Import modules
require './Common.rb'

class GetAnnotations
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::AnnotateApi.from_config($config)

    $request = GroupDocsAnnotationCloud::GetImportRequest.new("annotationdocs\\one-page.docx")

    # Executing an API.
    $response = $api.get_import($request)

    puts("GetAnnotations: annotations count = " + $response.length.to_s)
  end
end