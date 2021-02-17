# Import modules
require './Common.rb'

class GetPages
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::PreviewApi.from_config($config)

    file_info = GroupDocsAnnotationCloud::FileInfo.new()
    file_info.file_path = "annotationdocs\\one-page.docx"
    options = GroupDocsAnnotationCloud::PreviewOptions.new()
    options.file_info = file_info

    request = GroupDocsAnnotationCloud::GetPagesRequest.new(options)
    response = $api.get_pages(request)

    puts("GetPages: pages count = " + (response.total_count).to_s)
  end
end