function [ neighbor ]= Find_Neighbor(neighbor_reverse_distance,distance_array,data_classes)

[minimum,index]=sort(distance_array);

    for i=1:neighbor_reverse_distance
        neighbor(i).class=data_classes(index(i));
        neighbor(i).index=index(i);
        neighbor(i).distance=distance_array(index(i));
        neighbor(i).number=0;   
        neighbor(i).reverse_distance=0; 
    end

end

