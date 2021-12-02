% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything
diameter_cyl=25
diameter_cone=46
r_cone=23
r_cyl=12.5
height_cyl=19
height_cone=14

% Specify the height of the water
h = 20
% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
v=pi*(r_cyl^2)*h
    