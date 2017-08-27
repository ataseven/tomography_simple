function fig = menu()
flag=1;
    flag=0;
    k = MENU('Here are some images (100x100) and their back projections (250 samples at 250 angles);','circle','ellipse','square','rectangle','ring','spatial resolution phantom','<- Back');
    if k==1
        circle
    end
    if k==2
        ellipse
    end
    if k==3
        square
    end
    if k==4
        rectang
    end
    if k==5
        ring
    end
    if k==6
        k2=MENU('Select one of the three options for number of detectors and view angles;','250x250','500x500','250x250 (Histogram equalized)','<- Back');
        if k2==1
            performance
        end
        if k2==2
            performance500
        end
        if k2==3
            imhistli
        end
        if k2==4
            proje4
        end
end
if k==7
    proje
end
if nargout > 0, fig = h0; end
