function [ input_grid ] = grid_check( input_x _length,input_y _length,input_grid,input_alive _one,input_alive _two,input_dead _one,input_dead _two )
% applys game of life to a 2d grid
for i=1:input_x _length
    for j=1:input_y _length
        if input_grid(i,j)==1
            if i==1 && j == 1
                tot =  input_grid(i+1,j)+input_grid(i,j+1)+input_grid(i+1,j+1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end

            elseif i==input_x _length && j == 1
                tot =  input_grid(i-1,j)+input_grid(i,j+1)+input_grid(i-1,j+1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end
            elseif i==1 && j == input_y _length
                tot =  input_grid(i+1,j)+input_grid(i,j-1)+input_grid(i+1,j-1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end
            elseif i==input_x _length && j == input_y _length
                tot =  input_grid(i-1,j)+input_grid(i,j-1)+input_grid(i-1,j-1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end
            elseif i >= 2 && i <= input_x _length && j == 1
                tot =  input_grid(i-1,j)+input_grid(i+1,j)+input_grid(i,j+1)+input_grid(i-1,j+1)+input_grid(i+1,j+1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end
            elseif i >= 2 && i <= input_x _length && j == input_y _length
                tot =  input_grid(i-1,j)+input_grid(i+1,j)+input_grid(i,j-1)+input_grid(i-1,j-1)+input_grid(i+1,j-1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end
            elseif j >= 2 && j <= input_x _length && i == 1
                tot =  input_grid(i,j-1)+input_grid(i,j+1)+input_grid(i+1,j)+input_grid(i+1,j-1)+input_grid(i+1,j+1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end
            elseif j >= 2 && j <= input_x _length && i == input_x _length
                tot =  input_grid(i,j-1)+input_grid(i,j+1)+input_grid(i-1,j)+input_grid(i-1,j-1)+input_grid(i-1,j+1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end
            else
                tot =  input_grid(i,j-1)+input_grid(i,j+1)+input_grid(i-1,j)+input_grid(i+1,j)+input_grid(i-1,j-1)+input_grid(i-1,j+1)+input_grid(i+1,j-1)+input_grid(i+1,j+1);
                if tot == input_alive _one || tot == input_alive _two
                    continue
                else
                    input_grid(i,j) = 0;
                end
            end
        else
            if i==1 && j == 1
                tot =  input_grid(i+1,j)+input_grid(i,j+1)+input_grid(i+1,j+1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end

            elseif i==input_x _length && j == 1
                tot =  input_grid(i-1,j)+input_grid(i,j+1)+input_grid(i-1,j+1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end
            elseif i==1 && j == input_y _length
                tot =  input_grid(i+1,j)+input_grid(i,j-1)+input_grid(i+1,j-1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end
            elseif i==input_x _length && j == input_y _length
                tot =  input_grid(i-1,j)+input_grid(i,j-1)+input_grid(i-1,j-1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end
            elseif i >= 2 && i <= input_x _length && j == 1
                tot =  input_grid(i-1,j)+input_grid(i+1,j)+input_grid(i,j+1)+input_grid(i-1,j+1)+input_grid(i+1,j+1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end
            elseif i >= 2 && i <= input_x _length && j == input_y _length
                tot =  input_grid(i-1,j)+input_grid(i+1,j)+input_grid(i,j-1)+input_grid(i-1,j-1)+input_grid(i+1,j-1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end
            elseif j >= 2 && j <= input_x _length && i == 1
                tot =  input_grid(i,j-1)+input_grid(i,j+1)+input_grid(i+1,j)+input_grid(i+1,j-1)+input_grid(i+1,j+1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end
            elseif j >= 2 && j <= input_x _length && i == input_x _length
                tot =  input_grid(i,j-1)+input_grid(i,j+1)+input_grid(i-1,j)+input_grid(i-1,j-1)+input_grid(i-1,j+1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end
            else
                tot =  input_grid(i,j-1)+input_grid(i,j+1)+input_grid(i-1,j)+input_grid(i+1,j)+input_grid(i-1,j-1)+input_grid(i-1,j+1)+input_grid(i+1,j-1)+input_grid(i+1,j+1);
                if tot == input_dead _one || tot == input_dead _two
                    input_grid(i,j) = 1;
                end
            end
        end
    end
end

end
