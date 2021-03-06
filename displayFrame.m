function displayFrame()
  % Displays a frame in an TIF image stack
  % Created by Michael Lu, June 2021
  
  % User upload .tif file
  [fileName, pathName] = uigetfile('*.tif');
  
  % Check if cancel clicked
  if (fileName == 0)
    return
  end
  
  % Read .tif file to image stack
  data = [pathName fileName(1:end-4) '.tif'];
  stack = readFileToStack(data);

  % Get max # of frames
  numFrames = size(stack, 3);
  
  % Get user input for frame #
  chosenFrame = str2double(input("Choose which frame # to see: "));
  
  % Check if frame valid (default=1)
  if (isempty(chosenFrame) || isnan(chosenFrame) || chosenFrame > numFrames)
    chosenFrame = 1;
  end
  
  % Display scaled color image with chosen frame + add colorbar
  imagesc(stack(:,:,chosenFrame))
  colorbar
    
end
