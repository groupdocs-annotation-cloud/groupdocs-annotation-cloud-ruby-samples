# Import modules
require './Common.rb'

class AddMultipleAnnotations
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::AnnotateApi.from_config($config)

    $a1 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a1.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a1.annotation_position.x = 1
    $a1.annotation_position.y = 1
    $a1.box = GroupDocsAnnotationCloud::Rectangle.new
    $a1.box.x = 100
    $a1.box.y = 100
    $a1.box.width = 200
    $a1.box.height = 100
    $a1.page_number = 0
    $a1.pen_color = 1201033
    $a1.pen_style = "Solid"
    $a1.pen_width = 1
    $a1.opacity = 0.7
    $a1.type = "Distance"
    $a1.text = "This is distance annotation"
    $a1.creator_name = "Anonym A."

    $a2 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a2.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a2.annotation_position.x = 1
    $a2.annotation_position.y = 1
    $a2.box = GroupDocsAnnotationCloud::Rectangle.new
    $a2.box.x = 100
    $a2.box.y = 100
    $a2.box.width = 200
    $a2.box.height = 100
    $a2.page_number = 2
    $a2.pen_color = 1201033
    $a2.pen_style = "Solid"
    $a2.pen_width = 1
    $a2.opacity = 0.7
    $a2.type = "Area"
    $a2.text = "This is area annotation"
    $a2.creator_name = "Anonym A."

    $a3 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a3.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a3.annotation_position.x = 1
    $a3.annotation_position.y = 1
    $a3.box = GroupDocsAnnotationCloud::Rectangle.new
    $a3.box.x = 100
    $a3.box.y = 100
    $a3.box.width = 200
    $a3.box.height = 100
    $a3.page_number = 4
    $a3.opacity = 0.7
    $a3.type = "Point"
    $a3.text = "This is point annotation"
    $a3.creator_name = "Anonym A."

    $a4 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $a4.annotation_position = GroupDocsAnnotationCloud::Point.new
    $a4.annotation_position.x = 1
    $a4.annotation_position.y = 1
    $a4.box = GroupDocsAnnotationCloud::Rectangle.new
    $a4.box.x = 100
    $a4.box.y = 100
    $a4.box.width = 200
    $a4.box.height = 100
    $a4.page_number = 5
    $a4.pen_color = 1201033
    $a4.pen_style = "Solid"
    $a4.pen_width = 1
    $a4.opacity = 0.7
    $a4.type = "Arrow"
    $a4.text = "This is arrow annotation"
    $a4.creator_name = "Anonym A."      

    $request = GroupDocsAnnotationCloud::PostAnnotationsRequest.new("annotationdocs\\ten-pages.docx", [$a1, $a2, $a3, $a4])

    # Executing an API.
    $api.post_annotations($request)

    puts("AddMultipleAnnotations: Multiple Annotations added.")
  end
end