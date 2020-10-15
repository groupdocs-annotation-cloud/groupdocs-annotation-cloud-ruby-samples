# Import modules
require './Common.rb'

class DeletePages
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::PreviewApi.from_config($config)

    $request = GroupDocsAnnotationCloud::DeletePagesRequest.new("annotationdocs\\one-page.docx")

    # Executing an API.
    $api.delete_pages($request)

    puts("DeletePages: pages deleted.")
  end
end