# GSim+: Efficient Retrieval of Node-to-Node Similarity Across Graphs at Billion Scale

## Environment:
- Rocky Linux 8.7
- Intel Core Xeon CPU E5-2660 v3 @ 2.60GHz, with 62.5 GB of RAM
- Matlab R2021b

## Main:
(1)Time  
cd Exp_Time/  
run main_Time.m  
  
(2) Memory  
cd Exp_Mem/  
run main_Mem.m  
  
(3) Accuracy 
cd Exp_ACC/  
run main_Acc.m  

(4) Test_Example： Experimental verification of Examples 1, 2 and 3 in the paper
>Example_1: the detailed processing of each step of GSIM\
>Example_2: the detailed processing of each step of GSimP\
>Example_3: the convergence rate proof
  
(5) GB: Randomly generate subgraph of GA as GB  
cd Gen_GB/  
run main_Gen

## Compared Algorithms:
GSimP: Our algorithms;\
GSIM: The conventional algorithm via power iteration;\
GSVD: The best-known competitor via low-rank SVD;\

## Datasets:
We use real-life datasets publicly available on   
DBLP: https://dblp.org/  
SNAP: http://snap.stanford.edu/data/  
LAW: https://sparse.tamu.edu/LAW
  
DBLP (DP): DP: A co-authorship DBLP graph\
cit-HepPh (HP): social friendship from ego-Facebook\
email-EuAll (EE): Email network from a EU research institution\
wiki-Talk (WT) :Wikipedia talk (communication) network\
soc-LiveJournal1 (LJ): LiveJournal online social network\
uk-2002 (UK):2002 web crawl of .uk domain

