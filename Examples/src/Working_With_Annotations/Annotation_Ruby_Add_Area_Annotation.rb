# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Annotations
  def self.Annotation_Ruby_Add_Area_Annotation()

    # Getting instance of the API
    $api = Common_Utilities.Get_AnnotateApi_Instance()

    $a1 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a1.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a1.annotation_position.x = 852
    $a1.annotation_position.y = 59.388262910798119
    $a1.box = GroupDocsAnnotationCloud::Rectangle.new
    $a1.box.x = 375.89276123046875
    $a1.box.y = 59.388263702392578
    $a1.box.width = 88.7330551147461
    $a1.box.height = 37.7290153503418
    $a1.page_number = 5
    $a1.pen_color = 1201033
    $a1.pen_style = 0
    $a1.pen_width = 1
    $a1.opacity = 0.7
    $a1.type = "Area"
    $a1.text = "This is area annotation"
    $a1.creator_name = "Anonym A."      

    $request = GroupDocsAnnotationCloud::PostAnnotationsRequest.new("Annotationdocs\\ten-pages.docx", [$a1])

    # Executing an API.
    $api.post_annotations($request)

    puts("Expected response type is void: Area Annotation added.")
  end
end