function Print_Information(message, label)

    disp(message);
    global NEIGHBOR;
    
    for i=1:length(NEIGHBOR)
        fprintf('%d. NEIGHBOR information\n',i);
        neighbor_information=[' class: ',NEIGHBOR(i).class,' index: ',NEIGHBOR(i).index, ' distance:', NEIGHBOR(i).distance, 'reverse distance:', NEIGHBOR(i).reverse_distance];
        disp(neighbor_information);
    end
  
    disp('As a result, the class and other information to which the data belongs');
    disp(label);

end

