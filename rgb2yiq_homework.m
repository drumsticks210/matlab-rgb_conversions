function rgb2yiq_homework(image)
% Read in image and convert to double
rgbImage2 = im2double(image);

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

% change from [0-1] to [0-255]
changeTo256_02 = uint8(round(rgbTOyiq * 255));

y_yigGray1 = changeTo256_02(:,:,1);
i_yiqgray2 = changeTo256_02(:,:,2);
q_yiqgray3 = changeTo256_02(:,:,3);

% Display RGB and  YIQ image
subplot(2, 2, 1); 
imshow(changeTo256_02); title('RGB to YIQ Image');

subplot(2, 2, 2); 
imshow(y_yigGray1); title('Y gray1 Image');

subplot(2, 2, 3); 
imshow(i_yiqgray2); title('I gray2 Image');

subplot(2, 2, 4); 
imshow(q_yiqgray3); title('Q gray3 Image');


