function [ distance_array ] = Distance(formula_no, data_set, new_data_set, weight_coefficients)

    if (formula_no==1)
        % added weight coefficients for Euclidean algorithm
        distance_array = Euclidean_Formula(data_set, new_data_set, weight_coefficients);
    elseif (formula_no==2)
         % added weight coefficients for Manhattan algorithm
         distance_array = Manhattan_Formula(data_set, new_data_set, weight_coefficients);
    else
         fprintf('Wrong choice');
    end

end

