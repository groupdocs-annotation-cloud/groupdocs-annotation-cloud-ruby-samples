require 'common_utilities/Utils.rb'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
$app_sid = "XXXXX-XXX"
$app_key = "XXXXX"
$myStorage = "MyStorage" #Put your storage name here
$host_url = "http://api.groupdocs.cloud"   # Put your Host URL here

class Run_Examples

  #    ##########################################
  #      puts("Executing Upload Test Files...")
  #      Common_Utilities.Upload_Test_File()
  #    ##########################################

  ###########################################
  #  # ******* Execute Examples *******
  puts("*** Executing examples...")
  #  # ******* Execute Examples *******
  ###########################################

  ##########################################
  puts("*** Executing Get_Supported_File_Formats...")
  ##########################################

  require 'Supported_File_Formats\Annotation_Ruby_Get_Supported_Formats.rb'
  puts("* Executing Annotation_Ruby_Get_Supported_Formats...")
  File_Formats.Annotation_Ruby_Get_Supported_Formats()

  ###########################################
  #  puts("*** Executing Working_With_Storage...")
  ###########################################

  #  require 'Working_With_Storage/Annotation_Ruby_Storage_Exist.rb'
  #  puts("* Executing Annotation_Ruby_Storage_Exist...")
  #  Working_With_Storage.Annotation_Ruby_Storage_Exist()

  #  require 'Working_With_Storage/Annotation_Ruby_Object_Exists.rb'
  #  puts("* Executing Annotation_Ruby_Object_Exists...")
  #  Working_With_Storage.Annotation_Ruby_Object_Exists()

  #  require 'Working_With_Storage/Annotation_Ruby_Get_File_Versions.rb'
  #  puts("* Executing Annotation_Ruby_Get_File_Versions...")
  #  Working_With_Storage.Annotation_Ruby_Get_File_Versions()

  #  require 'Working_With_Storage/Annotation_Ruby_Get_Disc_Usage.rb'
  #  puts("* Executing Annotation_Ruby_Get_Disc_Usage...")
  #  Working_With_Storage.Annotation_Ruby_Get_Disc_Usage()

  ###########################################
  #  puts("*** Executing Working_With_Folder...")
  ###########################################

  #  require 'Working_With_Folder/Annotation_Ruby_Create_Folder.rb'
  #  puts("* Executing Annotation_Ruby_Create_Folder...")
  #  Working_With_Folder.Annotation_Ruby_Create_Folder()

  #  require 'Working_With_Folder/Annotation_Ruby_Copy_Folder.rb'
  #  puts("* Executing Annotation_Ruby_Copy_Folder...")
  #  Working_With_Folder.Annotation_Ruby_Copy_Folder()

  #  require 'Working_With_Folder/Annotation_Ruby_Get_Files_List.rb'
  #  puts("* Executing Annotation_Ruby_Get_Files_List...")
  #  Working_With_Folder.Annotation_Ruby_Get_Files_List()

  #  require 'Working_With_Folder/Annotation_Ruby_Move_Folder.rb'
  #  puts("* Executing Annotation_Ruby_Move_Folder...")
  #  Working_With_Folder.Annotation_Ruby_Move_Folder()

  #  require 'Working_With_Folder/Annotation_Ruby_Delete_Folder.rb'
  #  puts("* Executing Annotation_Ruby_Delete_Folder...")
  #  Working_With_Folder.Annotation_Ruby_Delete_Folder()

  #  ##########################################
  #  puts("*** Executing Working_With_Files...")
  #  ##########################################

  #  require 'Working_With_Files/Annotation_Ruby_Upload_File.rb'
  #  puts("* Executing Annotation_Ruby_Upload_File...")
  #  Working_With_Files.Annotation_Ruby_Upload_File()

  #  require 'Working_With_Files/Annotation_Ruby_Download_File.rb'
  #  puts("* Executing Annotation_Ruby_Download_File...")
  #  Working_With_Files.Annotation_Ruby_Download_File()

  #  require 'Working_With_Files/Annotation_Ruby_Copy_File.rb'
  #  puts("* Executing Annotation_Ruby_Copy_File...")
  #  Working_With_Files.Annotation_Ruby_Copy_File()

  #  require 'Working_With_Files/Annotation_Ruby_Move_File.rb'
  #  puts("* Executing Annotation_Ruby_Move_File...")
  #  Working_With_Files.Annotation_Ruby_Move_File()

  #  require 'Working_With_Files/Annotation_Ruby_Delete_File.rb'
  #  puts("* Executing Annotation_Ruby_Delete_File...")
  #  Working_With_Files.Annotation_Ruby_Delete_File()

  #  ##########################################
  #  puts("*** Executing Annotation_Ruby_Get_Document_Information...")
  #  ##########################################

  #  require 'Document_Information\Annotation_Ruby_Get_Document_Information.rb'
  #  puts("* Executing Annotation_Ruby_Get_Document_Information...")
  #  Document_Info.Annotation_Ruby_Get_Document_Information()

  #  ##########################################
  #  puts("*** Executing Working_With_Annotations...")
  #  ##########################################

  #  require 'Working_With_Annotations/Annotation_Ruby_Add_Annotation.rb'
  #  puts("* Executing Annotation_Ruby_Add_Annotation...")
  #  Working_With_Annotations.Annotation_Ruby_Add_Annotation()

  #  require 'Working_With_Annotations/Annotation_Ruby_Get_Annotation.rb'
  #  puts("* Executing Annotation_Ruby_Get_Annotation...")
  #  Working_With_Annotations.Annotation_Ruby_Get_Annotation()

  #  require 'Working_With_Annotations/Annotation_Ruby_Get_Export_Document.rb'
  #  puts("* Executing Annotation_Ruby_Get_Export_Document...")
  #  Working_With_Annotations.Annotation_Ruby_Get_Export_Document()

  #  require 'Working_With_Annotations/Annotation_Ruby_Get_PDF.rb'
  #  puts("* Executing Annotation_Ruby_Get_PDF...")
  #  Working_With_Annotations.Annotation_Ruby_Get_PDF()

  #  require 'Working_With_Annotations/Annotation_Ruby_Delete_Annotation.rb'
  #  puts("* Executing Annotation_Ruby_Delete_Annotation...")
  #  Working_With_Annotations.Annotation_Ruby_Delete_Annotation()

  #  ##########################################
  #  puts("*** Executing Working_With_Pages...")
  #  ##########################################

  #  require 'Working_With_Pages/Annotation_Ruby_Get_Pages.rb'
  #  puts("* Executing Annotation_Ruby_Get_Pages...")
  #  Working_With_Pages.Annotation_Ruby_Get_Pages()

  #  require 'Working_With_Pages/Annotation_Ruby_Delete_Pages.rb'
  #  puts("* Executing Annotation_Ruby_Delete_Pages...")
  #  Working_With_Pages.Annotation_Ruby_Delete_Pages()

end