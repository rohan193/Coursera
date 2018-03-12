function J = costfunction(x, y, theta)
	m = size(x, 1);
	predictions = x*theta;
	squareerror = (predictions - y).^2;
	J = 1/(2*m)*sum(squareerror);