colormap('gray');

for r=1:512

    for c=1:512

        B1(r,c)=uint8(128-127*sin(2*pi*3*c/512));

        B2(r,c)=uint8(128-127*sin(2*pi*45*c/512));
        
        B3(r,c)=uint8(128-127*sin(2*pi*90*c/512));
    end

end

figure(1); imshow(B1); figure(2); imshow(B2);
figure(3); imshow(B3);

%% 2
h_lp = (1/100)*ones(10,10); %impulsvaret för LP filtrering

h_hp = [1 0 -1; 2 0 -2; 1 0 -1]; %impulssvaret för HP filtrering

B1_filt_lp = uint8(conv2(single(h_lp),single(B1)));

B2_filt_lp = uint8(conv2(single(h_lp),single(B2)));

B3_filt_lp = uint8(conv2(single(h_lp),single(B3)));

B1_filt_hp = uint8(conv2(single(h_hp),single(B1)));

B2_filt_hp = uint8(conv2(single(h_hp),single(B2)));

B3_filt_hp = uint8(conv2(single(h_hp),single(B3)));

figure; 
subplot(2,3,1), imshow(B1_filt_lp); 
subplot(2,3,2), imshow(B2_filt_lp);
subplot(2,3,3), imshow(B3_filt_lp);


subplot(2,3,4), imshow(B1_filt_hp); 
subplot(2,3,5), imshow(B2_filt_hp);
subplot(2,3,6), imshow(B3_filt_hp);

%% 3
B_frek = fft2(B2);
figure(1)
mesh(abs(B_frek(1:256, 1:256)));

figure(2)
B2_filt_lp_frek = fft2(B2_filt_lp);
mesh(abs(B2_filt_lp_frek(1:256, 1:256)));

%% 4
Bird = imread('Bird_lab3.jpg');

%imshow(Bird);

h_hp = [1 0 -1; 2 0 -2; 1 0 -1]; %impulssvaret för HP filtrering

h_hp_trans = transpose(h_hp);

Bird_black = rgb2gray(Bird);

figure(1)
imshow(Bird_black)

Bird_black_filt_hp_vertical = uint8(conv2(single(h_hp),single(Bird_black)));

Bird_black_filt_hp_horizontal = uint8(conv2(single(h_hp_trans),single(Bird_black)));

figure(2);
imshow(Bird_black_filt_hp_vertical);

figure(3);
imshow(Bird_black_filt_hp_horizontal);















