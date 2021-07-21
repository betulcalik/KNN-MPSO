function [ distance_array ] = Euclidean_Formula(data_set,new_data_set,weights)
[sample_number,property_number]=size(data_set);
%distance_array
    for i=1:sample_number
    sum=0;
        for j=1:property_number
            % added weights
            sum=sum+weights(j)*(data_set(i,j)-new_data_set(1,j))^2;
        end
        distance_array(i)=sqrt(sum);
    end
end

