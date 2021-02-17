# Import modules
require './Common.rb'

class DeletePages
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::PreviewApi.from_config($config)

    file_info = GroupDocsAnnotationCloud::FileInfo.new()
    file_info.file_path = "annotationdocs\\one-page.docx"

    $request = GroupDocsAnnotationCloud::DeletePagesRequest.new(file_info)

    # Executing an API.
    $api.delete_pages($request)

    puts("DeletePages: pages deleted.")
  end
end