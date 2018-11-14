function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

features = size(X,2);

for feature = 1:features
    mean_value = mean(X(:,feature));
    std_value = std(X(:,feature));

    fprintf('Mean of feature %d = %04f \n', feature, mean_value);
    fprintf('Std  of feature %d = %04f \n', feature, std_value);

    X_norm(:,feature) = X_norm(:,feature) .- mean_value;
    X_norm(:,feature) = X_norm(:,feature) ./ std_value;

    mu(feature) = mean_value;
    sigma(feature) = std_value;

end

%fprintf('First 10 examples from original: \n');
%fprintf(' x = [%04f %.04f] \n', [X(1:10,:)]);
%
%fprintf('First 10 examples from the feature normalized: \n');
%fprintf(' x = [%04f %.04f] \n', [X_norm(1:10,:)]);

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

% ============================================================

end
