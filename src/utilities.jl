module utilities
export meshgrid,write2mat,readmat,rickerWave

using Random,MAT,Plots,Dates,TimerOutputs,WriteVTK,DataFrames,CSV,ProgressMeter
##
"
Meshgrid 2 vectors or 3 vectors
"
function meshgrid(x,y)
    x2=zeros(length(x),length(y));
    y2=x2;
    x2=repeat(x,1,length(y));
    y2=repeat(reshape(y,1,length(y)),length(x),1);
    return x2,y2
end
##
"
write a mat file
"
function write2mat(path,var)
    file=matopen(path,"w");
    write(file,"data",data);
    close(file);
    return nothing
end
##
"
read a mat file
"
function readmat(path,var)
    file=matopen(path);
    tt=read(file,var);
    close(file)
    return tt
end
##
"
ricker wavelet
"
function rickerWave(freq,dt,ns,M)
    ## calculate scale
    E=10 .^(5.24+1.44 .*M);
    s=sqrt(E.*freq/.299);

    t=dt:dt:dt*ns;
    t0=1 ./freq;
    t=t .-t0;
    ricker=s .*(1 .-2*pi^2*freq .^2*t .^2).*exp.(-pi^2*freq^2 .*t .^2);
    ricker=ricker;
    ricker=Float32.(ricker);
    return ricker
end

end
