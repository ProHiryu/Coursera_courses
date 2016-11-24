function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    sum = zeros(size(X,2),1)
    temp = zeros(size(X,2),1)
    for i = 1:m
        for j = 1:size(X,2)
            sum(j)=sum(j)+((theta'*(X(i,:))' - y(i)))*X(i,j)
        end
    end
    for i = 1:size(X,2)
        temp(i) = theta(i)-(alpha/m)*sum(i)
        theta(i)=temp(i)
    end


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
