function fig = menu()

k = MENU('Choose your option for the object to be projected;','Objects defined earlier','Matrix input','Image file','samples','p(t)');
if k==1
   proje1
end
if k==2
   proje2
end
if k==3
   proje3
end
if k==4
   proje4
end
if k==5
   proje5
end
proje
if nargout > 0, fig = h0; end
