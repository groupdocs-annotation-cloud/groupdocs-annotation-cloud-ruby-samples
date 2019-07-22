# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Annotations
  def self.Annotation_Ruby_Delete_Annotation()

    # Getting instance of the API
    api = Common_Utilities.Get_AnnotateApi_Instance()

    $request = GroupDocsAnnotationCloud::DeleteAnnotationsRequest.new("Annotationdocs\\ten-pages.docx")

    # Executing an API.
    $response = api.delete_annotations($request)

    puts("Expected response type is Void: Annotation deleted from document.")
  end
end