function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% 1/(2*m) Sigma((X*theta-y)^2)
% X->m*2 matrix
% Theta->2*1
% y->m*1
% Vectorized solution for efficiency
Yhat = X*theta;  % vector with m members
sqr_error = (Yhat-y).^2;  % Elementwise square of the error
sum = sum(sqr_error);
J = sum/(m*2)


% =========================================================================

end
