# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module GroupDocsAnnotationExamples
  # Load the gem
  require 'groupdocs_annotation_cloud'
  require_relative '../utils'
  class DeleteAnnotation
    # Remove annotations from document.
    def delete_annotation
      @config = GroupDocsAnnotationCloud::Configuration.new(Utils::APP_SID, Utils::APP_KEY)
      @config.api_base_url = Utils::API_BASE_URL
      @filename = 'Annotated.pdf'
      @foldername = nil
            
      @annotation_api = GroupDocsAnnotationCloud::AnnotationApi.from_config(@config)     
      request = GroupDocsAnnotationCloud::DeleteCleanDocumentRequest.new(@filename,@foldername)
      
      # Remove annotations from document.
      response = @annotation_api.delete_clean_document request 
      puts response
      puts 'completed'
    end
  end
  object = DeleteAnnotation.new()
  object.delete_annotation()
end
