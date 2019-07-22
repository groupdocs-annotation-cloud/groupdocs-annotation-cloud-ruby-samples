# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Pages
  def self.Annotation_Ruby_Get_Pages()

    # Getting instance of the API
    api = Common_Utilities.Get_PreviewApi_Instance()

    $request = GroupDocsAnnotationCloud::GetPagesRequest.new("Annotationdocs\\ten-pages.docx", nil, nil, nil, nil, nil, nil, "")

    # Executing an API.
    $response = api.get_pages($request)

    puts("Expected response type is PageImages: " + ($response.total_count).to_s)
  end
end