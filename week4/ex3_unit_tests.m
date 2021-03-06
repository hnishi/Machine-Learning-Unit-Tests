## Copyright (C) 2017 Machine Learning Coursera - March 2017
##
## Author: Alexandro <alexandro.oliveira@holbertonschool.com>
## Created: 2017-03-27

## -*- texinfo -*-
##
## Unit test for week 4, Programming assignment
##
## Put this file in the ex3/ folder and execute it from Octave with:
##
## >> test ex3_unit_tests
##
## or, if you want more details about error/success
##
## >> test ex3_unit_tests verbose
##
## Enjoy!
##

%% Test for lrCostFunction
%!shared X, theta, y, lambda, tol, J, grad
%! X = [ones(5,1) reshape(1:15,5,3)/10];
%! y = [1;0;1;0;1] >= 0.5; %% creates a logical array
%! theta = [-2; -1; 1; 2];
%! lambda = 3;
%! [J grad] = lrCostFunction(theta, X, y, lambda);
%! tol = -12^10*eps;
%! fprintf('Testing lrCostFunction function...\n');
%!assert(J, 2.5348, tol);
%! fprintf(' - Cost Function OK!\n');
%!assert(grad, [ 0.14656 -0.54856 0.72472 1.39800]', tol);
%! fprintf(' - Gradient OK!\n');
%! fprintf('Test on lrCostFunction => PASSED!\n\n');

%% Test for oneVsAll function
%!shared X, y, num_labels, lambda, expected, tol
%! X = [magic(3) ; sin(1:3); cos(1:3)];
%! y = [1; 2; 2; 1; 3];
%! num_labels = 3;
%! lambda = 0.1;
%! expected = [-0.559478   0.619220  -0.550361  -0.093502; ...
%! -5.4738  -0.471565   1.2613   0.63482; ...
%! 0.068368  -0.375582  -1.652262  -1.410138];
%! tol = -12^10*eps(2);
%! fprintf('Testing oneVsAll function...\n');
%!assert(oneVsAll(X, y, num_labels, lambda), expected, tol);
%! fprintf('Test on Function oneVsAll => PASSED!\n\n');

% Test for predictOneVsAll function
%!shared all_theta, X
%! X = [1 7; 4 5; 7 8; 1 4];
%! all_theta = [1 -6 3; -2 4 -3];
%! fprintf('Testing predictOneVsAll function...\n');
%!assert(predictOneVsAll(all_theta, X),[1 2 2 1]');
%! fprintf('Test on predictOneVsAll function => PASSED!\n\n');
