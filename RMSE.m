function rmse(signal1, signal2)

%RMSE Root Mean Squared Error
r = sqrt(sum((signal1(:) - signal2(:)) .^2)/ numel(signal1))


