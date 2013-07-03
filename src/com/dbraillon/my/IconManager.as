package com.dbraillon.my
{
	public class IconManager
	{
		public static function typeToIcon(type:String):String
		{
			if(!type)
			{
				return "assets/icons/file.png";
			}
			
			type = type.replace('.', '');
			
			var path:String = "";
			
			switch(type.toLowerCase())
			{
				case "zip":
				case "rar":
					
					path = "assets/icons/archive.png";
					break;
				
				case "xls":
				case "xlsm":
				case "xlsx":
					
					path = "assets/icons/excel.png";
					break;
				
				case "directory":
					
					path = "assets/icons/folder.png";
					break;
				
				case "jpg":
				case "png":
					
					path = "assets/icons/image.png";
					break;
				
				case "pdf":
					
					path = "assets/icons/pdf.png";
					break;
				
				case "ps":
					
					path = "assets/icons/photoshop.png";
					break;
				
				case "ppt":
				case "pptx":
					
					path = "assets/icons/powerpoint.png";
					break;
				
				case "wav":
				case "mp3":
				
					path = "assets/icons/powerpoint.png";
					break;
				
				case "txt":
					
					path = "assets/icons/text.png";
					break;
				
				case "avi":
				case "mp4":
					
					path = "assets/icons/video.png";
					break;
				
				case "doc":
				case "docx": 
					
					path = "assets/icons/word.png";
					break;
				
				case "return":
					
					path = "";
					break;
				
				default:
					
					path = "assets/icons/file.png";
					break;
			}
			
			return path;
		}
	}
}