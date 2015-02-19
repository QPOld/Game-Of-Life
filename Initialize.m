function [ output_grid ] = Initialize( input_x _length,input_y _length,input_density)
% Randomly places 0 and 1 in a 2d grid
output_grid = zeros(input_x _length,input_y _length);
for i=1:input_x _length
    for j=1:input_y _length
        placement = rand(1);
        if placement >= input_density
            output_grid(i,j) = 1;
        else
            continue
        end
    end
end
