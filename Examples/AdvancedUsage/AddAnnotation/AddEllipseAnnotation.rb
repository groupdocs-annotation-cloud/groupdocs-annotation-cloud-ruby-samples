# Import modules
require './Common.rb'

class AddEllipseAnnotation
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
    $a1.type = "Ellipse"
    $a1.text = "This is ellipse annotation"
    $a1.creator_name = "Anonym A."      

    file_info = GroupDocsAnnotationCloud::FileInfo.new()
    file_info.file_path = "annotationdocs\\one-page.docx"

    options = GroupDocsAnnotationCloud::AnnotateOptions.new()
    options.file_info = file_info
    options.annotations = [$a1]
    options.output_path = "Output/output.docx"

    $request = GroupDocsAnnotationCloud::AnnotateRequest.new(options)

    # Executing an API.
    result = $api.annotate($request)

    puts("AddEllipseAnnotation: Ellipse Annotation added: " + result.href)
  end
end