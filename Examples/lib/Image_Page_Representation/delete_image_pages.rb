# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

module GroupDocsAnnotationExamples
  # Load the gem
  require 'groupdocs_annotation_cloud'
  require_relative '../utils'
  class DeleteImagePages
    # Delete Images Cache of Document Pages.
    def delete_pages
      @config = GroupDocsAnnotationCloud::Configuration.new(Utils::APP_SID, Utils::APP_KEY)
      @config.api_base_url = Utils::API_BASE_URL
      @filename = 'Annotated.pdf'
      @foldername = nil
      @password=nil
                  
      @image_pages_api = GroupDocsAnnotationCloud::ImagePagesApi.from_config(@config)
      request = GroupDocsAnnotationCloud::DeletePagesRequest.new(@filename,@foldername)
      
      #Delete previously generated images for document pages
      response = @image_pages_api.delete_pages request
      puts 'completed'
    end
  end
  
  object = DeleteImagePages.new()
  object.delete_pages()
end
