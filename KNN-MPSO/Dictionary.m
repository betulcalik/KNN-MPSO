function classnumber=Dictionary(class)
c=char(class);

% classes came from dataset
classes={'Very Low', 'Low', 'Middle', 'High'};
classes2={'very_low', 'Low', 'Middle', 'High'};

    for i=1:4
        a=char(classes(i));
        b=char(classes2(i));

            if strcmp(a,c) || strcmp(b,c)
                classnumber=i;
            end
    end
end
