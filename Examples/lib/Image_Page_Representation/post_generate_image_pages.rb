# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module GroupDocsAnnotationExamples
  # Load the gem
  require 'groupdocs_annotation_cloud'
  require 'groupdocs_storage_cloud'
  require_relative '../utils'
  class PostGenerateImagePages
    # Generate Images of Document Pages.
    def post_generate_pages
      @config = GroupDocsAnnotationCloud::Configuration.new(Utils::APP_SID, Utils::APP_KEY)
      @config.api_base_url = Utils::API_BASE_URL
      @filename = 'one-page.pdf'
      @foldername = nil
      @password=nil
      
      # Upload file to Cloud Storage
      upload_file(@filename)
      
      @image_pages_api = GroupDocsAnnotationCloud::ImagePagesApi.from_config(@config)
      request = GroupDocsAnnotationCloud::PostPagesRequest.new(@filename, @foldername,@password)
      
      # Generate Images of Document Pages.
      response = @image_pages_api.post_pages request
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
  object = PostGenerateImagePages.new()
  object.post_generate_pages()
end