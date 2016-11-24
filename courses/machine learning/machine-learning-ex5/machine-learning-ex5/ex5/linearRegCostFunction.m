function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

value = sum((X * theta - y).^2)
value_reg = lambda * sum(theta(2:end,:).^2)

J = (value + value_reg) / (2*m)

grad_value = sum(X' * (X * theta - y) , 2) / m
grad_value_reg = [0;lambda * theta(2:end,:) / m]

grad = grad_value +grad_value_reg


% =========================================================================

grad = grad(:);

end
