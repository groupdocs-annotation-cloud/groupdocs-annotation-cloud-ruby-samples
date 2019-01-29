# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module GroupDocsAnnotationExamples
  
  # Load the gem
  require 'groupdocs_annotation_cloud'
  require 'groupdocs_storage_cloud'  
  require_relative '../utils'
  class GetDocumentInfo
    # Retrieves document information    
    def test_get_info
      @config = GroupDocsAnnotationCloud::Configuration.new(Utils::APP_SID, Utils::APP_KEY)
      @config.api_base_url = Utils::API_BASE_URL
      @filename = "one-page.pdf"
      @foldername = nil
      @password= nil
      
      # Upload file to Cloud Storage
      upload_file(@filename)
      
      # Retrieves document information  
      @image_info_api = GroupDocsAnnotationCloud::ImageInfoApi.from_config(@config)
      request = GroupDocsAnnotationCloud::GetInfoRequest.new(@filename, @foldername,@password)
           
      response = @image_info_api.get_info request
      puts response.name      
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
  object = GetDocumentInfo.new()
  object.test_get_info()
end

