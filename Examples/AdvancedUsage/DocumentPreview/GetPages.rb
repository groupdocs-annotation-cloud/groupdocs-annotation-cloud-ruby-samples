# Import modules
require './Common.rb'

class GetPages
  def self.Run()

    # Getting instance of the API
    $api = GroupDocsAnnotationCloud::PreviewApi.from_config($config)

    $request = GroupDocsAnnotationCloud::GetPagesRequest.new("annotationdocs\\one-page.docx", nil, nil, nil, nil, nil, nil, "")

    # Executing an API.
    $response = $api.get_pages($request)

    puts("GetPages: pages count = " + ($response.total_count).to_s)
  end
end