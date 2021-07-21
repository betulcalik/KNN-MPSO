function [ distance_array ] = Manhattan_Formula(data_set,new_data_set,weights)
[sample_number,property_number]=size(data_set);
    for i=1:sample_number
    sum=0;
        for j=1:property_number
            % added weights
            sum=sum+weights(j)*abs(data_set(i,j)-new_data_set(1,j));
        end
    distance_array(i)=sum;
    end
end
