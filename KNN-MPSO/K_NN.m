clc
global DATA;
global NEIGHBOR;
    
fprintf('You can classify with the k-nearest neighbor algorithm.\n');
neighbor_number=input('Please enter the neighbor number: ');
distance_formula_number=input('Press 1 for Euclidean, press 2 for Manhattan in the selection of the distance formula');

Read_Datas();
distance_array=Distance(distance_formula_number,DATA.data_set,DATA.new_data);
disp(distance_array);

[NEIGHBOR] = Find_Neighbor(neighbor_number,distance_array,DATA.data_class);

[class]=Find_Class();

message='Class estimation according to classical KNN';
Print_Information(message, class);