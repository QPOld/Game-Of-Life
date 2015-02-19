function [input_vid] = plot_grid( input_grid,input_vid)
% creates a black and white binary 2d plot

FigHandle = figure(1);
set(FigHandle, 'Position', [250, 250, 800, 600]);
set(gca,'nextplot','replacechildren');
set(gcf,'Renderer','zbuffer');
[r,c] = size(input_grid);                           % # Get the matrix size
imagesc((1:r)+0.5,(1:c)+0.5,input_grid);            % # Plot the image
colormap(gray);                              % # Use a gray colormap
axis equal                                   % # Make axes grid sizes equal
set(gca,'XGrid','on','YGrid','on');

writeVideo(input_vid,getframe(FigHandle));
end
