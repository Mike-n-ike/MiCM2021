function displayFrame()
  % Displays a frame in an TIF image stack
  % Created by Michael Lu, June 2021
  
  [fileName, pathName] = uigetfile('*.tif');
  
  if (fileName == 0)
    return
  end
  
  data = [pathName fileName(1:end-4) '.tif'];
  stack = readFileToStack(data);

  numFrames = size(stack, 3);
  
  chosenFrame = str2double(input("Choose which frame # to see"))
  
  if (isempty(chosenFrame) || chosenFrame == NaN || chosenFrame > numFrames)
    chosenFrame = 1;
  end
  
  imagesc(stack(:,:,chosenFrame))
  colorbar
    
end
