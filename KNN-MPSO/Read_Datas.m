function [dataset,datasetLabels,testDataset,testDatasetLabels] = Read_Datas()

    global DATA

    training_data=readtable('dataset.xls','sheet','Training_Data','range','A:F');
    test_data=readtable('dataset.xls','sheet','Test_Data','range','A:F');

    DATA.data_set = training_data(:,1:5);
    DATA.data_set = table2array(DATA.data_set);
    DATA.data_class = training_data(:,6);
    New_Array = table2array(DATA.data_class);
    
    DATA.data_class = New_Array.';
    DATA.new_data = test_data(:,1:5);
    DATA.new_data = table2array(DATA.new_data);
    DATA.new_data_class = test_data(:,6);
    New_Array = table2array(DATA.new_data_class);
    DATA.new_data_class = New_Array.';
    
    dataset = DATA.data_set;
    datasetLabels = DATA.data_class;
    testDataset = DATA.new_data;
    testDatasetLabels = DATA.new_data_class;

end
