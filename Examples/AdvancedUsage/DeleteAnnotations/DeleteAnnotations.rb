# Import modules
require './Common.rb'

class DeleteAnnotations
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::AnnotateApi.from_config($config)

    $request = GroupDocsAnnotationCloud::DeleteAnnotationsRequest.new("annotationdocs\\one-page.docx")

    # Executing an API.
    $response = $api.delete_annotations($request)

    puts("DeleteAnnotations: Annotations deleted from document.")
  end
end