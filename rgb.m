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

% Display RGB and  YCbCr image
subplot(1, 2, 1); 
imshow(img); title('Original RGB Image');

subplot(1, 2, 2); 
imshow(rgbTOycbcr); title('RGB to YCbCr Image');
 
 
 
 
 

