function [S, bytes, time]= gsim_GSimP_iter_Q(A,B,kmax,QA,QB)
%gsim_GSimP_iter_Q Computes similarity of QA,QB by GSimP
%   Input: 
%             A,B: adjacency Matrix
%             kmax: maximum number of iteratoin
%             QA,QB: Queries of GA, GB
%   Output: 
%             S: Similarity matrix of QA,QB
%             bytes: memory usage of GSimP in each iteration
%             time: running time of GSimP in each iteration
    fprintf('\n >> Start gsim_GSimP_iter\n');

    time = zeros(kmax,1);
    bytes = zeros(kmax,1);

    nb = size(B,1);                 %length of B
    na = size(A,1);                 %length of A

    tic
    fprintf(' Computing S .');
    U = ones(na,1);                 %initialize   
    V = ones(nb,1);
    
    for k=1:kmax
       
        U= [A*U A'*U];              %iterating model
        V= [B*V B'*V];
        
        fprintf('.');
        time(k) = toc;              %record running time
        
        mem=whos;                   %record memory
        bytes(k) =sum([mem.bytes]); 
        
    end
  
        QA =  U(QA,:);              %extract queries
        QB =  V(QB,:);
        S = QA*QB';                 %similarity matrix
        S = S/norm(S, 'fro');       %normalization

end
