% Read in image and convert to double
rgbImage3 = im2double(imread('uah_color.jpg'));

% Red Channel
redChannel = rgbImage3(:,:,1);

% Green Channel
greenChannel = rgbImage3(:,:,2);

% Blue Channel
blueChannel = rgbImage3(:,:,3);

% Create an all black channel.
allBlack = zeros(size(rgbImage3, 1), size(rgbImage3, 2));

% Create color versions of the individual color channels.
just_red = cat(3, redChannel, allBlack, allBlack);
just_green = cat(3, allBlack, greenChannel, allBlack);
just_blue = cat(3, allBlack, allBlack, blueChannel);

% Conversion matrix
rgbTOyuv = cat(3, ...
    .299*redChannel + .587*greenChannel + .114*blueChannel, ...        
    -0.147313*redChannel - 0.28886*greenChannel + 0.436*blueChannel,... 
    0.615*redChannel - 0.51499*greenChannel - 0.10001*blueChannel);

% change from [0-1] to [0-255]
changeTo256_01 = uint8(round(rgbTOyuv * 255));

y_yuvGray1 = changeTo256_01(:,:,1);
u_yuvGray2 = changeTo256_01(:,:,2);
v_yuvGray3 = changeTo256_01(:,:,3);

% Display RGB and  YUV image
subplot(2, 2, 1); 
imshow(changeTo256_01); title('RGB to YUV Image');

subplot(2, 2, 2); 
imshow(y_yuvGray1); title('Y gray1 Image');

subplot(2, 2, 3); 
imshow(u_yuvGray2); title('U gray2 Image');

subplot(2, 2, 4); 
imshow(v_yuvGray3); title('V gray3 Image');



