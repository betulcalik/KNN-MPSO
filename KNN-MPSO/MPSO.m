%================================================
% MPSO: A Modified Particle Swarm Optimization Using Adaptive Strategy
% % Authors: Hao Liu, XueWei Zhang, LiangPing Tu
% Journal: Expert System With Applications
% Email: haoliu@ustl.edu.cn,    liuhustl@sina.cn
%================================================
% function [Gbest, fGbest, FEs, Fbest]=MPSO(N,dim,FEs_Max,T_Max,fun,err,LB,UB,opt_f,run)
function [weights, min_error_value, max_error_value, mean_value, std_value] = MPSO(formula_no, neighbor_number, maxFEs, dataset, datasetLabels, testDataset, testDatasetLabels)
%% Settings 
N=50;
k=neighbor_number;
Max_FEs=maxFEs;     % Dim*1E4;  %Max. no. of function evaluations
dim=5; % dimension = 5 -> STG, SCG, STR, LPR, PEG, UNS
UB=ones(1, dim); 
LB=zeros(1, dim);
results=zeros(1, Max_FEs);
Vmax0=0.5*(UB-LB);
%% Inertial Weight 
% w=0.72984;
w_max=0.9;
w_min=0.4;
Fbest=[];   x=rand;
%% Learning Factor 
c1=2;%1.49618;
c2=c1;
%% Initialize Population 
Xmax=repmat(UB,N,1);
Xmin=repmat(LB,N,1);
X=Xmin+(Xmax-Xmin).*rand(N,dim);
Vmax=repmat(Vmax0,N,1);
V=-Vmax+2*Vmax.*rand(N,dim);
%% Evaluation of particles 
fX(N)=inf;
for i=1:N
    % fX(i)=cec17_func(X(i,:)', fun);
    fX(i)=MPSO_knn(formula_no, k, dataset, datasetLabels, testDataset, testDatasetLabels, X(i,:)');
end
FEs=N;
%% Initialize Pbest and Gbest 
Pbest=X;   
fPbest=fX;
[gbestValue, gbestIndex]=min(fPbest); 
Gbest=Pbest(gbestIndex,:); 
Fbest=[Fbest gbestValue];   
mpso_index = 1;
fes = 2;
%% Iteration 
% for t=2:T_Max+1
while fes < Max_FEs
    t = fes;
    %% Update Position X and Velocity V and check the responding bounds
    x=4*x*(1-x);
    w=x*w_min+(w_max-w_min)*t/Max_FEs;
    u=randperm(N,2);
    for i=1:N
        [U,index]=min(fPbest(u));
        if min(fPbest(u))<fPbest(i)
            Ubest(i,:)=Pbest(index,:);
        else
            Ubest(i,:)=Pbest(i,:);
        end
    end
    V=w*V+c1*rand(N,dim).*(Ubest-X)+c2*rand(N,dim).*(repmat(mean(Pbest),N,1)-X);%(repmat(mean(Pbest),N,1)-X);
    V=max(-Vmax,min(Vmax,V));
    
    for i=1:N
        if exp(fX(i))/exp(mean(fX))>rand
            X(i,:)=w*X(i,:)+(1-w)*V(i,:)+Gbest;
        else
            X(i,:)=X(i,:)+V(i,:);
        end
    end
    X=max(Xmin,min(Xmax,X));
    %% Terminal replacement mechanism 
    for i=1:N
        % fX(i)=cec17_func(X(i,:)', fun);
        fX(i)=MPSO_knn(formula_no, k, dataset, datasetLabels, testDataset, testDatasetLabels, X(i,:)');
        fes = fes + 1;
    end
    [worst,index]=max(fX);
    z=[1:index-1,index+1:N];
    d=randperm(length(z),2);
    NewX=Gbest+rand*(Pbest(z(d(2)),:)-Pbest(z(d(1)),:));
    NewX=max(LB,min(UB,NewX));
    % fNewX=cec17_func(NewX',fun);
    fNewX=MPSO_knn(formula_no, k, dataset, datasetLabels, testDataset, testDatasetLabels, NewX');
    fes = fes + 1;
    if fNewX<worst
        X(index,:)=NewX;
        fX(index)=fNewX;
    end
    %% Evaluate Fitness and Change Pbest 
    for i=1:N
        if fX(i) < fPbest(i)
            Pbest(i,:)=X(i,:);
            fPbest(i)=fX(i);
        end
        results(mpso_index) = fX(i);
        mpso_index = mpso_index + 1;
        if fPbest(i)<gbestValue
            Gbest=Pbest(i,:);
            gbestValue=fPbest(i);
        end
    end
    FEs = FEs + N;
    %% Record GbestValue so far for plotting
     if rem(t,4)==0
        Fbest=[Fbest gbestValue];
     end  
end % end iteration
weights = Gbest;
min_error_value = min(results);
max_error_value = max(results);
mean_value = mean(results);
std_value = std(results);
end % end function    