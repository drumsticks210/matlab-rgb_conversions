function rgb2ycbcr_homework(image)
% Import image
image_1 = im2double(image);

% Red Channel
red = image_1(:,:,1);

% Green Channel
green = image_1(:,:,2);

% Blue Channel
blue = image_1(:,:,3);

% Conversion matrix
rgbTOycbcr = cat(3, ...
    0 + (.299*red + .587*green + .114*blue), ...        
    0.5 + (-.168736*red + -0.3321264*green + 0.5*blue),... 
    0.5 + (0.5*red + -0.418688*green + -0.081312*blue));

% change from [0-1] to [0-255]
changeTo256_03 = uint8(round(rgbTOycbcr * 255));

y_ycbcrGray1 = changeTo256_03(:,:,1);
cb_ycbcrGray2 = changeTo256_03(:,:,2);
cr_ycbcrGray3 = changeTo256_03(:,:,3);



% Display RGB and  YCbCr image
subplot(2, 2, 1); 
imshow(changeTo256_03); title('RGB to YCbCr Image');

subplot(2, 2, 2); 
imshow(y_ycbcrGray1); title('Y gray1 Image');

subplot(2, 2, 3); 
imshow(cb_ycbcrGray2); title('Cb gray2 Image');

subplot(2, 2, 4); 
imshow(cr_ycbcrGray3); title('Cr gray3 Image');



 
 
 
 

