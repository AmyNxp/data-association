MM =[1,0,0,1;
    1,1,0,0;
    0,1,1,0;
    1,1,0,1;
    0,0,1,0;
    0,0,0,0]
NN=zeros(6,4,400);
k=1;
for i=1:6
    if MM(i,1)==1
        for j=1:6
            if MM(j,2)==1
                if i==j;
                else
                    for p=1:6
                        if MM(p,3)==1
                            if p==j;
                            elseif p==i;
                            else                                                       
                               for q=1:6
                                   if MM(q,4)==1
                                       if q==p;
                                       elseif q==j;
                                       elseif q==i;
                                       else
                                          NN(i,1,k)=1;
                                          NN(j,2,k)=1;
                                          NN(p,3,k)=1;
                                          NN(q,4,k)=1;
                                          k = k+1;
                                       end
                                   else
                                       ;
                                   end
                               end
                                NN(i,1,k)=1;
                                NN(j,2,k)=1;
                                NN(p,3,k)=1;
                                k=k+1;
                            end
                       end
                    end
                    NN(i,1,k)=1;
                    NN(j,2,k)=1;
                    k=k+1;
                end
            else
                ;
            end
        end
        NN(i,1,k)=1;  
        k=k+1;
    else
    end
end
for j=1:6
    if MM(j,2)==1
        for p=1:6
            if MM(p,3)==1
                if p==j;
                else
                    for q=1:6
                        if MM(q,4)==1
                            if q==p;
                            elseif q==j;
                            else
                                NN(j,2,k)=1;
                                NN(p,3,k)=1;
                                NN(q,4,k)=1;
                                k = k+1;
                            end
                        end
                    end
                    NN(j,2,k)=1;
                    NN(p,3,k)=1;
                    k = k+1;
                end
            end
        end
        NN(j,2,k)=1;
        k=k+1;
    end
end
for p=1:6
    if MM(p,3)==1
        for q=1:6
            if MM(q,4)==1
                if q==p;
                else
                    NN(p,3,k)=1;
                    NN(q,4,k)=1;
                    k = k+1;
                end
            end
        end
        NN(p,3,k)=1;
        k = k+1;
   end
end

for q=1:6
    if MM(q,4)==1
        NN(q,4,k)=1;
        k = k+1;
    end
end

for t=1:k
    t,NN(:,:,t)
end