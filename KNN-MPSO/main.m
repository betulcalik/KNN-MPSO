clc;

% settings: 
maxFEs=300;
neighbor_number=input('Please enter the neighbor number: ');
formula_no=input('Press 1 for Euclidean, press 2 for Manhattan in the selection of the distance formula: ');

% read data and send MPSO:
[dataset, datasetLabels, testDataset, testDatasetLabels] = Read_Datas();
[weights, min_error_value, max_error_value, mean_value, std_value] = MPSO(formula_no, neighbor_number, maxFEs, dataset,datasetLabels,testDataset,testDatasetLabels);

% results:
fprintf('\nWeights: \n');
fprintf('%d, ', weights);
fprintf('\nMinimum error value: %.1f\n', min_error_value);
fprintf('Maximum error value: %.1f\n', max_error_value);
fprintf('Mean error value: %.1f\n', mean_value);
fprintf('Standard deviation error value: %.1f\n', std_value);

fprintf('\nEnd: %s\n', datestr(now,'HH:MM:SS.FFF'));