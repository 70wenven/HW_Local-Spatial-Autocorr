clear
clc
format short G
% Contiguity Matrix
cm =[0 1 1 1 1 1 1 
    1 0 0 0 1 0 0  
    1 0 0 1 0 0 0 
    1 0 1 0 0 1 0
    1 1 0 0 0 0 1 
    1 0 0 1 0 0 1 
    1 0 0 0 1 1 0];

% Sum of Contiguity Matrix Rows
s = sum(cm,2)

% Row Standardized Spatial Weights Matrix
w = cm./s
% ??????_g_TOTAL = 5659
% ?????????????_g_TOTAL = 2052
% ??????_g_TOTAL = 13528
% ????????????_g_TOTAL = 2011
% ????????_g_TOTAL = 2825
% ??????_g_TOTAL = 3307
% ??????_g_TOTAL = 3621
x = [5659
    2052
    13528
    2011
    2825
    3307
    3621]

% Z-Scores for a Population  https://www.mathworks.com/help/stats/zscore.html
z = zscore(x,1)

% LISA
I = z.*(w*z)