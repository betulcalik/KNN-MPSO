function [ error_value ] = MPSO_knn(formula_no, k, dataset, datasetLabels, testDataset, testDatasetLabels, weights)
    global NEIGHBOR;
    
    predicted_labels=zeros(1, length(testDataset));
    real_labels=zeros(1, length(testDataset));
    error_value=0;
    
    for i=1:length(testDataset)
        real_labels(i) = Dictionary(testDatasetLabels(i));
        distance_array = Distance(formula_no, dataset, testDataset(i,:), weights);
        
        [NEIGHBOR]=Find_Neighbor(k, distance_array, datasetLabels);
        [class]=Find_Class();
        
        predicted_labels(i)=Dictionary(class.class);
        
        if predicted_labels(i) ~= real_labels(i)
            error_value = error_value + 1;
        end
    end
end