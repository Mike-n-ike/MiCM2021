function image_data=rd_img16(filename)

% Reads Fluoview Tiff image series
% By DK a long time ago

info = imfinfo(filename);

image_data = uint16(zeros(info(1).Height,info(1).Width,size(info,1))); % preallocate 3-D array 

h = waitbar(0,'Loading image series...');

for frame=1:size(info,1)
    [image_data(:,:,frame),map] = imread(filename,frame);
    waitbar(frame/size(info,1),h)
end

close(h)
