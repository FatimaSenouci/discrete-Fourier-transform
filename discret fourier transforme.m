df=0.1;fs=250 ;dt=1/fs ;
t=-2:1/250:2;
j=sqrt(-1);
f=-4:df:4;
X=0;
n=0:1:length(f);
for k=1:length(t)
X=X+dt*exp(-2*j*pi*n*df*k*1/250);
end
out=X;
plot(n*df,real(X),'r','linewidth',3);
grid on; 
set(gca,'fontsize',14);
legend('Re[x(f)]');
title('Re[X(f)] en fonction de la frequence')
xlabel('Re[X(f)]');
ylabel('reel(X(F))');
plot(n*df,imag(X),'r','linewidth',3);
grid on; 
set(gca,'fontsize',14);
legend('Img[X(f)]');
title('Img[X(f)] en fonction de la frequence')
xlabel('frequence(HZ)');
ylabel('reel(X(F))');
