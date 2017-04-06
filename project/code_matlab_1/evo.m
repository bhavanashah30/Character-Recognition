function K=evo(Z)
n=length(Z);
LM=norm(Z(2)-Z(n));
LR=norm(Z(1)-Z(2));
LL=norm(Z(n-1)-Z(1));
His(1)=LL+LR-LM;
for j=2:n-1
   LM=norm(Z(j-1)-Z(j+1));
   LR=norm(Z(j)-Z(j+1));
   LL=norm(Z(j-1)-Z(j));
   His(j)=LL+LR-LM;
end;
LM=norm(Z(n-1)-Z(1));
LR=norm(Z(n)-Z(1));
LL=norm(Z(n-1)-Z(n));
His(n)=LL+LR-LM;
K=His;