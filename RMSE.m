function RMSE(signal1, signal2)

%RMSE Root Mean Squared Error
RMSE = sqrt(sum((signal1(:) - signal2(:)) .^2)/ numel(signal1));



