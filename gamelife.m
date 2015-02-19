% Set initial density of 0's and 1's
density = 0.9;
% length of domain equal in each dimension
x_length = 101;
y_length = x_length;
% the number of generations
time = 2.0*x_length;

% depedning of values of creation and continuation varibles
% particular densities must be applied
% turning off a varible is setting the value greater or equal to 10
% creation(born) of a cell with sum of neighbors equaling:
create_one = 3;
create_two = 10;
% continuation(stay alive) of a cell with sum of neighbors equaling:
alive_one = 2;
alive_two = 3;

% initializes the grid randomly
grid = Initialize(x_length,y_length,density);
% iterates over the number of specified generations
vid = VideoWriter('B48S24.avi');
vid.Quality = 100;
vid.FrameRate = 15;
open(vid)
for t=1:time
    grid = grid_check(x_length,y_length,grid,...
        alive_one,alive_two,create_one,create_two);
    plot_grid(grid,vid);
end
close(vid)
disp('done')
