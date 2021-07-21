function [ class ] = Find_Class()
    global NEIGHBOR;
    
    for i=1:length(NEIGHBOR)
        for j=1:length(NEIGHBOR)
          if(strcmpi(NEIGHBOR(i).class,NEIGHBOR(j).class))
            NEIGHBOR(i).number=NEIGHBOR(i).number +1;
          end
        end

    end
  
    for i=1:length(NEIGHBOR)-1
          if((NEIGHBOR(i).number<NEIGHBOR(i+1).number))
              max_class_number=i+1;
          else
              max_class_number=i;
         end
    end
    
    class=NEIGHBOR(max_class_number);

end

