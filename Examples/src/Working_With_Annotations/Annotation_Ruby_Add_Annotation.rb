# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Annotations
  def self.Annotation_Ruby_Add_Annotation()

    # Getting instance of the API
    api = Common_Utilities.Get_AnnotateApi_Instance()

    $annotation = GroupDocsAnnotationCloud::AnnotationInfo.new()
    
    $annotation.annotation_position = GroupDocsAnnotationCloud::Point.new()
    $annotation.annotation_position.x = 852
    $annotation.annotation_position.y = 59.388262910798119
    
    $annotation.box = GroupDocsAnnotationCloud::Rectangle.new()
    $annotation.box.x = 375.89276123046875
    $annotation.box.y = 59.388263702392578
    $annotation.box.width = 88.7330551147461
    $annotation.box.height = 37.7290153503418
    $annotation.page_number = 0
    $annotation.pen_color = 1201033
    $annotation.pen_style = 0
    $annotation.pen_width = 1
    $annotation.type = "Area"
    $annotation.creator_name = "Anonym A."

    $request = GroupDocsAnnotationCloud::PostAnnotationsRequest.new("Annotationdocs\\ten-pages.docx", [$annotation])

    # Executing an API.
    api.post_annotations($request)

    puts("Expected response type is void: Annotation added.")
  end
end