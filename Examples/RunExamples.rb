require 'groupdocs_annotation_cloud'

require './Common.rb'

# Get your ClientId and ClientSecret at https://dashboard.groupdocs.cloud (free registration is required).
$client_id = "XXXX-XXXX-XXXX-XXXX"
$client_secret = "XXXXXXXXXXXXXXXX"

$config = GroupDocsAnnotationCloud::Configuration.new($client_id, $client_secret)
$config.api_base_url = "https://api.groupdocs.cloud"

class RunExamples

  # Uploading sample test files from local disk to cloud storage
  Common.Run()

  # Basic usage examples

  require './BasicUsage/GetSupportedFormats.rb'
  GetSupportedFormats.Run()
  require './BasicUsage/GetDocumentInformation.rb'
  GetDocumentInformation.Run()  

  # Advanced usage examples

  require './AdvancedUsage/AddAnnotation/AddAreaAnnotation.rb'
  AddAreaAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddArrowAnnotation.rb'
  AddArrowAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddMultipleAnnotations.rb'
  AddMultipleAnnotations.Run()
  require './AdvancedUsage/AddAnnotation/AddPointAnnotation.rb'
  AddPointAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddPolylineAnnotation.rb'
  AddPolylineAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddTextFieldAnnotation.rb'
  AddTextFieldAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddTextRedactionAnnotation.rb'
  AddTextRedactionAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddTextReplacementAnnotation.rb'
  AddTextReplacementAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddTextStrikeoutAnnotation.rb'
  AddTextStrikeoutAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddTextUnderlineAnnotation.rb'
  AddTextUnderlineAnnotation.Run()
  require './AdvancedUsage/AddAnnotation/AddWatermarkAnnotation.rb'
  AddWatermarkAnnotation.Run()                    

  require './AdvancedUsage/ExtractAnnotations/ExtractAnnotations.rb'
  ExtractAnnotations.Run()    
  require './AdvancedUsage/AddAnnotationsDirect/AddAnnotationsDirect.rb'
  AddAnnotationsDirect.Run()    
  require './AdvancedUsage/RemoveAnnotations/RemoveAnnotations.rb'
  RemoveAnnotations.Run() 
  
  require './AdvancedUsage/DocumentPreview/GetPages.rb'
  GetPages.Run() 
  require './AdvancedUsage/DocumentPreview/DeletePages.rb'
  DeletePages.Run() 
  
end
