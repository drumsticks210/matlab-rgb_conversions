% Import image
img = im2double(imread('uah_color.jpg'));

% Red Channel
red = img(:,:,1);

% Green Channel
green = img(:,:,2);

% Blue Channel
blue = img(:,:,3);

% Conversion matrix
rgbTOycbcr = cat(3, ...
    0 + (.299*red + .587*green + .114*blue), ...        
    0.5 + (-.168736*red + -0.3321264*green + 0.5*blue),... 
    0.5 + (0.5*red + -0.418688*green + -0.081312*blue));

% Read in image and convert to double
rgbImage2 = im2double(imread('uah_color.jpg'));

% Red Channel
red = rgbImage2(:,:,1);

% Green Channel
green = rgbImage2(:,:,2);

% Blue Channel
blue = rgbImage2(:,:,3);

% Conversion matrix
rgbTOyiq = cat(3, ...
    .299*red + .587*green + .114*blue, ...        
    0.595879*red + -0.274133*green + -.321746*blue,... 
    0.211205*red + -0.523083*green + -0.311878*blue);
% Read in image and convert to double
rgbImage3 = im2double(imread('uah_color.jpg'));

% Red Channel
red = rgbImage3(:,:,1);

% Green Channel
green = rgbImage3(:,:,2);

% Blue Channel
blue = rgbImage3(:,:,3);

% Conversion matrix
rgbTOyuv = cat(3, ...
    .299*red + .587*green + .114*blue, ...        
    -0.147313*red + -0.28886*green + 0.436*blue,... 
    0.615*red + -0.51499*green + -0.10001*blue);

% Display RGB and  YCbCr image
subplot(3, 2, 1); 
imshow(rgbImage3); title('Original RGB Image');

subplot(3, 2, 2); 
imshow(rgbTOyuv); title('RGB to YUV Image');
 
% Display RGB and  YIQ image
subplot(3, 2, 3); 
imshow(rgbImage2); title('Original RGB Image');

subplot(3, 2, 4); 
imshow(rgbTOyiq); title('RGB to YIQ Image');

% Display RGB and  YCbCr image
subplot(3, 2, 5); 
imshow(img); title('Original RGB Image');

subplot(3, 2, 6); 
imshow(rgbTOycbcr); title('RGB to YCbCr Image');
 
 
 
 
 

