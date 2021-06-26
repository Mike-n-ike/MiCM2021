function [image_data] = readFileToStack(file_path)
%readFileToStack reads an image series of format TIF into a 3D stack.
%   Rodrigo Migueles Ramirez, March 2021.

  % if data is in MultiTiff files
  if strcmp(file_path(end-2:end),'tif')
      image_data = rd_img16(file_path);
  else 
     error('Your input data set should be either ''.tif'' ,''.lsm'' or ''.mat'' '); 
  end
  
end
