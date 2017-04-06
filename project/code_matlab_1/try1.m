% the data
     clear sh;
     sh(1)=subplot(2,1,1);
     [c,ch]=contour(peaks(32),-4:.5:4);
     ch=get(ch,'children');
     nc=numel(ch);

% #2
     cx=cell(nc,1);
     cy=cell(nc,1);
     cz=nan(nc,1);
     cend=1;
for  i=1:nc
     cbeg=cend;
     cend=cend+c(2,cend)+1;
     cx{i}=c(1,cbeg+1:cend-1);
     cy{i}=c(2,cbeg+1:cend-1);
     cz(i)=c(1,cend-1);     % <- one level/contour
end
% show the result
     cmap=jet(numel(cz));
     sh(2)=subplot(2,1,2);
for  i=1:nc
     line(cx{i},cy{i},'color',cmap(cz(i),:));
end
     colormap(cmap);
     axis(sh,'image');