# Import modules
require './Common.rb'

class AddSquigglyAnnotation
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::AnnotateApi.from_config($config)

    $a1 = GroupDocsAnnotationCloud::AnnotationInfo.new
    $p1 = GroupDocsAnnotationCloud::Point.new
    $p1.x = 1
    $p1.y = 1
    $p2 = GroupDocsAnnotationCloud::Point.new
    $p2.x = 1
    $p2.y = 1
    $p3 = GroupDocsAnnotationCloud::Point.new
    $p3.x = 1
    $p3.y = 1
    $p4 = GroupDocsAnnotationCloud::Point.new
    $p4.x = 1
    $p4.y = 1
    $a1.points = [$p1, $p2, $p3, $p4]
    $a1.page_number = 0
    $a1.font_color = 1201033
    $a1.font_size = 12
    $a1.opacity = 0.7
    $a1.type = "TextSquiggly"
    $a1.squiggly_color = 1422623
    $a1.text = "This is squiggly annotation"
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

    puts("AddSquigglyAnnotation: squiggly annotation added: " + result.href)
  end
end