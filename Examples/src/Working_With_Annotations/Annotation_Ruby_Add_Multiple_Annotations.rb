# Load the gem
require 'groupdocs_annotation_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Annotations
  def self.Annotation_Ruby_Add_Multiple_Annotations()

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
    $a1.page_number = 0
    $a1.pen_color = 1201033
    $a1.pen_style = 0
    $a1.pen_width = 1
    $a1.opacity = 0.7
    $a1.type = "Distance"
    $a1.text = "This is distance annotation"
    $a1.creator_name = "Anonym A."

    $a2 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a2.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a2.annotation_position.x = 852
    $a2.annotation_position.y = 59.388262910798119
    $a2.box = GroupDocsAnnotationCloud::Rectangle.new
    $a2.box.x = 375.89276123046875
    $a2.box.y = 59.388263702392578
    $a2.box.width = 88.7330551147461
    $a2.box.height = 37.7290153503418
    $a2.page_number = 2
    $a2.pen_color = 1201033
    $a2.pen_style = 0
    $a2.pen_width = 1
    $a2.opacity = 0.7
    $a2.type = "Area"
    $a2.text = "This is area annotation"
    $a2.creator_name = "Anonym A."

    $a3 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a3.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a3.annotation_position.x = 852
    $a3.annotation_position.y = 59.388262910798119
    $a3.box = GroupDocsAnnotationCloud::Rectangle.new
    $a3.box.x = 375.89276123046875
    $a3.box.y = 59.388263702392578
    $a3.box.width = 88.7330551147461
    $a3.box.height = 37.7290153503418
    $a3.page_number = 4
    $a3.opacity = 0.7
    $a3.type = "Point"
    $a3.text = "This is point annotation"
    $a3.creator_name = "Anonym A."

    $a4 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a4.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a4.annotation_position.x = 852
    $a4.annotation_position.y = 59.388262910798119
    $a4.box = GroupDocsAnnotationCloud::Rectangle.new
    $a4.box.x = 375.89276123046875
    $a4.box.y = 59.388263702392578
    $a4.box.width = 88.7330551147461
    $a4.box.height = 37.7290153503418
    $a4.page_number = 5
    $a4.pen_color = 1201033
    $a4.pen_style = 0
    $a4.pen_width = 1
    $a4.opacity = 0.7
    $a4.type = "Arrow"
    $a4.text = "This is arrow annotation"
    $a4.creator_name = "Anonym A."      

    $request = GroupDocsAnnotationCloud::PostAnnotationsRequest.new("Annotationdocs\\ten-pages.docx", [$a1, $a2, $a3, $a4])

    # Executing an API.
    $api.post_annotations($request)

    puts("Expected response type is void: Multiple Annotations added.")
  end
end