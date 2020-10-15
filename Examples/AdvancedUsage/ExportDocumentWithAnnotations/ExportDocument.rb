# Import modules
require './Common.rb'

class ExportDocument
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::AnnotateApi.from_config($config)

    $request = GroupDocsAnnotationCloud::GetExportRequest.new("annotationdocs\\one-page.docx", nil, true, 1, 2, "")

    # Executing an API.
    $response = $api.get_export($request)

    puts("ExportDocument: file size = " + $response.length.to_s)
  end
end