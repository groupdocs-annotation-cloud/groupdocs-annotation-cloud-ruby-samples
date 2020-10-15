# Import modules
require './Common.rb'

class AddLinkAnnotation
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
    $a1.type = "Link"
    $a1.text = "This is link annotation"
    $a1.creator_name = "Anonym A."
    $a1.url = "https://www.groupdocs.com/"

    $request = GroupDocsAnnotationCloud::PostAnnotationsRequest.new("annotationdocs\\one-page.docx", [$a1])

    # Executing an API.
    $api.post_annotations($request)

    puts("AddLinkAnnotation: Link Annotation added.")
  end
end