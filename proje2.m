function fig = proje1()

k = MENU('Please enter your matrix (or simply copy and paste it) in matrix form of matlab from the command line','OK','<- Back');

if k==1
   R=input('Type your matrix here  ')
   rmax1=max(R);
   rmax2=max(rmax1);
   R=round(R/rmax2*255);
   anglesayi=input('Enter the number of the number of angles for the projection  ')  
   tsayi=input('Enter the number of detectors (i.e. the number of samples for each angle) ')
   proj1(R,anglesayi,tsayi)
end
if k==2
    proje
end

if nargout > 0, fig = h0; end
