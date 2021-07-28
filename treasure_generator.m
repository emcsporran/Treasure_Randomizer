%% treasure_generator.m

%% Clean Up

clear all;
close all;
clc 


%% Path Setup

delim = path_delim();
infopath = strcat(pwd,delim,'Treasure_Table_Info');
addpath(infopath);
libpath = strcat(pwd,delim,'lib');
addpath(libpath);


%% Variables

[CR4,CR10,CR16,CR17] = individual_treasure_file('individual_treasure_table');
d100 = dice(100);

coin = calculate_coin(CR4,d100);
disp(coin);

%% Functions

function delim = path_delim()

    if ismac
        % Code to run on Mac platform
        disp('Paths setup using MACOS notation');
        delim = '/';
    elseif isunix
        % Code to run on Linux platform
        disp('Paths setup using UNIX notation');
        delim = '/';
    elseif ispc
        % Code to run on Windows platform
        disp('Paths setup using WINDOWS notation');
        delim = '\';
    else
        disp('Platform not supported')
    end

end


function roll = dice(number)
    
    c = clock;
    seed = ceil(str2double(strcat(num2str(c(4)),num2str(c(5)),num2str(c(6)))));
    rng(seed);
    roll = randi([1,number],1);
    
end


function [CR4,CR10,CR16,CR17] = individual_treasure_file(filepath)
    
    CR4 = xlsread(filepath,'CR4');
    CR10 = xlsread(filepath,'CR10');
    CR16 = xlsread(filepath,'CR16');
    CR17 = xlsread(filepath,'CR17');
    
end


function coin = calculate_coin(CR,roll)
    dim = size(CR);
    row = 1;
    check = true;
    
    for i = 1:dim(1)
        
        if roll <= CR(i,1)&&(check == true)
            row = i;
            check = false;
        end
        
    end

    coin = zeros(1,(dim(2)-1)/3);
    for i = 2:3:(dim(2))
        if CR(row,i) ~= 0
            temp = (i+1)/3;
            coin(1,temp) = CR(row,i)*dice(CR(row,i+1))*CR(row,i+2);
        end
    end

end


%% Edits
% [dd/mm/yyyy] Update
% [28/07/2021] Created File