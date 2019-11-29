%METODO DE GAUSS-JORDAN
[m,n]=size(a);
for j=1:m-1
    for z=2:m
        if(a(j,j)==0)
            t=a(j,:);a(j,:)=a(z,:)
            a(z,:)=t
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for j=m:-1:2
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for s=1:m
    a(s,:)=a(s,:)/a(s,s);
    x(s)=a(s,n);
end
disp('Gauss-Jordan method:');            
a
x'
%GAUUS JORDAN
[m,n]=size(a);
for j=1:m-1
    for z=2:m
        if(a(j,j)==0)
            t=a(j,:);a(j,:)=a(z,:)
            a(z,:)=t
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for j=m:-1:2
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
    for s=1:m
        a(s,:)=a(s,:)/as(s,s);
    end
end
disp('Gauss-Jordan Method:');
a
x'