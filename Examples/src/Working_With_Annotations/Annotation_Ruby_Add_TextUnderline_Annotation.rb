# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Annotations
  def self.Annotation_Ruby_Add_TextUnderline_Annotation()

    # Getting instance of the API
    $api = Common_Utilities.Get_AnnotateApi_Instance()

    $a1 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a1.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a1.annotation_position.x = 852
    $a1.annotation_position.y = 59.388262910798119
    $a1.page_number = 2
    $a1.font_color = 1201033
    $a1.font_size = 12
    $a1.opacity = 0.7
    $a1.type = "TextUnderline"
    $a1.text = "This is text underline annotation"
    $a1.creator_name = "Anonym A."      

    $request = GroupDocsAnnotationCloud::PostAnnotationsRequest.new("Annotationdocs\\ten-pages.docx", [$a1])

    # Executing an API.
    $api.post_annotations($request)

    puts("Expected response type is void: Text Underline Annotation added.")
  end
end