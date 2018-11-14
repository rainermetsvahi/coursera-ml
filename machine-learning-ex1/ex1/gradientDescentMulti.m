function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

features = size(X, 2);

for iter = 1:num_iters
    % analytical (normal equation method)
    % theta = pinv(X' * X) * X' * y

    hx = theta' * X';

    new_theta = zeros(size(X,2), 1);

    for feature = 1:features
      sumHxYx = sum((hx - y') * X(:,feature));
      new_theta(feature) = theta(feature) - alpha * (1/m) * sumHxYx;
    end

    theta = new_theta;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end
