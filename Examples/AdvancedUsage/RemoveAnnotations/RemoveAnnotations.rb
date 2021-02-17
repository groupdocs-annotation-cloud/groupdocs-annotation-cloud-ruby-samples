# Import modules
require './Common.rb'

class RemoveAnnotations
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::AnnotateApi.from_config($config)

    file_info = GroupDocsAnnotationCloud::FileInfo.new()
    file_info.file_path = "annotationdocs\\input.docx"

    options = GroupDocsAnnotationCloud::RemoveOptions.new()
    options.file_info = file_info
    options.annotation_ids = [1, 2, 3]
    options.output_path = "Output/output.docx"

    $request = GroupDocsAnnotationCloud::RemoveAnnotationsRequest.new(options)

    # Executing an API.
    $response = $api.remove_annotations($request)

    puts("RemoveAnnotations: Annotations deleted from document: " + $response.href)
  end
end