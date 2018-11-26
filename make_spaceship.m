function [ myhandles ] = make_spaceship(trf_root, transparency)
% Makes a space-ship with the root transform as the given transform.
% The surfaces are drawn with the given transparency in [0,1]
% A vector of handles to all the surfaces is returned.

ship_dish_profile= 2*sin(linspace(0, pi, 15));
[Xc, Yc, Zc]= cylinder(ship_dish_profile);

% Top dish
trf_top_root= hgtransform('Parent', trf_root);
set(trf_top_root, 'Matrix', makehgtform('translate', [0, 0, -0.2]));
color_top= [1, 0, 0];
myhandles(1)= surface(Xc, Yc, Zc, 'Parent', trf_top_root, 'FaceColor', color_top, 'FaceAlpha', transparency , 'EdgeColor', color_top, 'EdgeAlpha', transparency);



% Unit cylinder with a given profile (tapering at the ends).
% This is reused twice to create the two tails of the ship.
[Xt, Yt, Zt]= cylinder([0, 0.3, 0.4, 0.4]);  


% Left tail
trf_tailleft_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,4]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [0.6, 1.3, 0.3]);
% Interpret the order as BFT (left to right)
set(trf_tailleft_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_left= [0 0 0]; 
myhandles(3)= surface(Xt, Yt, Zt, 'Parent', trf_tailleft_root, 'FaceColor', color_tail_left, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_left, 'EdgeAlpha', transparency);

% Right tail
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,4]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [0.6, -1.3, 0.3]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [0 0 0]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

% Top tail
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,4]);
trf_Ry= makehgtform('yrotate', -pi/2);
trf_T= makehgtform('translate', [-1, 0, 1.2]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [0 0 0]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

% connection
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.2,0.2,1]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [-1.5, 0, 1.2]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [0 0 0]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);


% Sphere in the middle
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [1.5,1.5,0.5]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [0, 0, 1.2]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [0 0 0]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

% Fire1
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.3,0.2,0.6]);
trf_Ry= makehgtform('yrotate', pi/2);
trf_T= makehgtform('translate', [-3.7, 1.3, 0.3]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 0]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

% Fire2
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.3,0.2,0.6]);
trf_Ry= makehgtform('yrotate', pi/2);
trf_T= makehgtform('translate', [-3.7, -1.3, 0.3]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 0]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

% Fire3
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.3,0.2,0.6]);
trf_Ry= makehgtform('yrotate', pi/2);
trf_T= makehgtform('translate', [-5.32, 0, 1.2]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 0]; % drab olive
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

% Lights
%1
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [0.5, -1.3, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%2
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [-0.5, -1.3, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%3
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [0.5, 1.3, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%4
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [-0.5, 1.3, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%5
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [1.2, 0.8, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%6
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [1.2, -0.8, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1];
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%7
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [-1.2, -0.8, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1];
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%8
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [-1.2, 0.8, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1];
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%9
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [-0.5, 1.3, 0.7]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

%10
trf_tailright_root= hgtransform('Parent', trf_root);
trf_scale= makehgtform('scale', [0.5,0.5,0.3]);
trf_Ry= makehgtform('yrotate', -pi);
trf_T= makehgtform('translate', [1.5, 0, 0.68]);
set(trf_tailright_root, 'Matrix', trf_T*trf_Ry*trf_scale);
color_tail_right= [1 1 1]; 
myhandles(4)= surface(Xt, Yt, Zt, 'Parent', trf_tailright_root, 'FaceColor', color_tail_right, 'FaceAlpha', transparency, 'EdgeColor', 0.5*color_tail_right, 'EdgeAlpha', transparency);

end

