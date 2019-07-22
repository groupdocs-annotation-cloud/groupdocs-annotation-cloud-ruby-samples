# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Document_Info
  def self.Annotation_Ruby_Get_Document_Information()

    # Getting instance of the API
    api = Common_Utilities.Get_InfoApi_Instance()

    $request = GroupDocsAnnotationCloud::GetInfoRequest.new("Annotationdocs\\two-page.docx", "")

    # Executing an API.
    $response = api.get_info($request)

    puts("Expected response type is DocumentInfo: " + $response.path)
  end
end