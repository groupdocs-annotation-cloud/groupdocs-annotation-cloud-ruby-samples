# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Annotations
  def self.Annotation_Ruby_Get_Annotation()

    # Getting instance of the API
    api = Common_Utilities.Get_AnnotateApi_Instance()

    $request = GroupDocsAnnotationCloud::GetExportRequest.new("Annotationdocs\\ten-pages.docx", nil, nil, nil, nil, "")

    # Executing an API.
    $response = api.get_export($request)

    puts("Expected response type is File: " + $response.length)
  end
end