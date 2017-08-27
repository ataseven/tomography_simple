function fig = proje3()

k=menu('Please write the entire path of your image file to the command line and the desired parameters','OK','<- Back');

if k==1
   fileinput=input('File path:  ','s')
   resim=imread(fileinput);
   b=size(resim);
   [c,d]=size(b);
   if d==3
      resim=rgb2gray(resim);
   end
   tsayi=input('Number of samples for t:  ');
   adimsay=input('Number of steps for theta:  ');
   proj1(resim,tsayi,adimsay)
end
if k==2
    proje
end
