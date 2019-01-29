# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module GroupDocsAnnotationExamples
  # Load the gem
  require 'groupdocs_annotation_cloud'
  require 'groupdocs_storage_cloud'  
  require_relative '../utils'
  class PutExportAnnotation
    # Export Annotation and get Document as Stream.
    def put_export
      @config = GroupDocsAnnotationCloud::Configuration.new(Utils::APP_SID, Utils::APP_KEY)
      @config.api_base_url = Utils::API_BASE_URL
      @filename = 'one-page.pdf'
      @foldername = nil  
      
      # Upload file to Cloud Storage
      upload_file(@filename)
      
      @annotation_api = GroupDocsAnnotationCloud::AnnotationApi.from_config(@config)
      reply1 = GroupDocsAnnotationCloud::AnnotationReplyInfo.new(:Message => "reply text", :RepliedOn => Time.now, :UserName => "Admin")
      reply2 = GroupDocsAnnotationCloud::AnnotationReplyInfo.new(:Message => "reply2 text", :RepliedOn => Time.now, :UserName => "Commentator")
      replies = [reply1, reply2]
      @textAnnotation = GroupDocsAnnotationCloud::AnnotationInfo.new(
        :AnnotationPosition => GroupDocsAnnotationCloud::Point.new(:X => 852.0, :Y => 154.31),
        :Box => GroupDocsAnnotationCloud::Rectangle.new(:X => 173.29, :Y => 154.31, :Width => 142.5, :Height => 9.0),
        :PageNumber => 0,
        :Replies => replies,
        :SvgPath => "[{\"x\":173.2986,\"y\":687.5769},{\"x\":315.7985,\"y\":687.5769},{\"x\":173.2986,\"y\":678.5769},{\"x\":315.7985,\"y\":678.5769}]",
        :Type => "TextUnderline",
        :CreatorName => "Anonym A."
      )
      annotations = [@textAnnotation]
      request = GroupDocsAnnotationCloud::PutExportRequest.new(@filename, annotations, @foldername);
      
      # Export Annotation and get Document as Stream.
      response = @annotation_api.put_export(request);
      puts response.length
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
  object = PutExportAnnotation.new()
  object.put_export()
end
