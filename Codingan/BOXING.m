         
%%
image = imread('smoke.jpg');
figure,imshow(image);
title('gambar asli');
rgbimage = rgb2gray(image);
figure,imshow(rgbimage);
title('gambar abu');
bwimage = imbinarize(rgbimage,'adaptive');
figure,imshow(bwimage);
title('gambar BW');
image1 = imfill(bwimage,'holes')
figure,imshow(image1);
title('gambar telah jadi');

%%
% label = bwlabel(image1);
% % j=2
% for j=1:max(max(label))
%     [row, col] = find(label==j);
%     len = max(row)-min(row)+2;
%     breadth = max(col)-min(col)+2;
%     target = uint8(zeros([len breadth]));
% %     sy = min(col)-1
% %     sx = min(row)-1
%     
% %     for i=1:size(row,1)
% %         x = row(i,1)-sx;
% %         y = col(i,1)-sy;
% %         target(x,y) = image(row(i,1),col(i,1));
% %         
% %     end
%     target = image(min(row):max(row),min(col):max(col));
%     labelTarget{j} = {target};
%     mytitle = strcat('object nomor',num2str(j));
%     figure;imshow(target);title(mytitle);
% end
bboxes = regionprops(image1,'Area','BoundingBox');
figure;imshow(image);
hold on;
axis on;
% for i=1 : max(max(label))
for k=1 : length(bboxes)
    
    CurrBB = bboxes(k).BoundingBox;
    breadth = CurrBB(3) + 1;
    len = CurrBB(4) + 1;
    target = uint8(zeros([len breadth]));
    target = image(CurrBB(2):CurrBB(4)+CurrBB(2)-1,CurrBB(1):CurrBB(3)+CurrBB(1)-1);
    mytitle = strcat('object nomor',num2str(k));
    figure;imshow(target);title(mytitle);
    rectangle('Position',[CurrBB(1),CurrBB(2),CurrBB(3),CurrBB(4),],...
    'EdgeColor' , 'r',...
	'LineWidth', 3)
% i=2
%     [row, col] = find(label==j);
%     len = max(row)-min(row)+2;
%     breadth = max(col)-min(col)+2;
%     
%     rectangle('Position',[min(col) min(row) breadth-1 len-1],...
% 	'EdgeColor', 'r',...
% 	'LineWidth', 3,...
% 	'LineStyle','-')
end
hold off;