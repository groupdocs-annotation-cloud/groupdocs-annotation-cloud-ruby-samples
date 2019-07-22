# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Pages
  def self.Annotation_Ruby_Delete_Pages()

    # Getting instance of the API
    api = Common_Utilities.Get_PreviewApi_Instance()

    $request = GroupDocsAnnotationCloud::DeletePagesRequest.new("Annotationdocs\\ten-pages.docx")

    # Executing an API.
    api.delete_pages($request)

    puts("Expected response type is Void: pages deleted.")
  end
end