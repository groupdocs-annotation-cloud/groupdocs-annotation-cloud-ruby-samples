# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module GroupDocsAnnotationExamples
  # Load the gem
  require 'groupdocs_annotation_cloud'
  require 'groupdocs_storage_cloud' 
  require_relative '../utils'
  class GetImagePage
    # Get Link to Image of Specific Page.
    def get_page_link
      @config = GroupDocsAnnotationCloud::Configuration.new(Utils::APP_SID, Utils::APP_KEY)
      @config.api_base_url = Utils::API_BASE_URL
      @filename = 'Annotated.pdf'
      @foldername = nil
      @password= nil
      @pagenum='0'
      
      # Upload file to Cloud Storage
      upload_file(@filename)
      
      @image_pages_api = GroupDocsAnnotationCloud::ImagePagesApi.from_config(@config)
      request = GroupDocsAnnotationCloud::GetPageRequest.new(@filename,@foldername,@password)
      request.page_number = 0
      
      # Get Link to Image of Specific Page.
      response = @image_pages_api.get_page request
      puts response
      puts 'completed'
    end
    
    # Upload file to Cloud Storage
    def upload_file(file_name)
      @conf = GroupDocsStorageCloud::Configuration.new
      @conf.api_key['app_sid'] = Utils::APP_SID
      @conf.api_key['api_key'] = Utils::APP_KEY
      @conf.host = Utils::API_BASE_URL
      
      @api_client = GroupDocsStorageCloud::ApiClient.new @conf
	    @storage_api = GroupDocsStorageCloud::StorageApi.new @api_client
      
      file = File.open("../resources/"+file_name,"rb").read        
		  version_id = nil
		  storage = nil
		  request = GroupDocsStorageCloud::PutCreateRequest.new(file_name, file, version_id, storage)
		  @storage_api.put_create(request)
      
    end
  end
  object = GetImagePage.new()
  object.get_page_link()
end
