%% UNIVERSITE DE BRETAGNE OCCIDENTALE 
%   L2 CMI 
% TRAVAUX PRATIQUE MATHEMATIQUE 
% SCRIPTE POUR SIMMULER LE PROBLEM DE MONTY HALL
%                                                RENDU LE : 29/04/2019 


%% le SCRPITE : 

%% % declaration et initialisation des variables utlisées 

clc
clear all;
lose=0;
win=0;
garder=0;
ngarder=0;
N=10000;
%% simuler le jeux N fois 
% 
for i=1:N                 
gate=[0 0 0];
gate(randi(3))=1           % le 1 veut dire une voiture 
choix=randi(3);            % le choix va avoir une valeur entre 1 et 3 


    for j=1:3
        if(gate(choix)==1)
             porter=[gate(choix) 0 ];               
    
            elseif  ((j~=choix))
                     porter=[gate(choix) gate(j)]
         end 

    end

%% le deuxieme choix 

choix2=randi(2);                    

if(porter(choix2)== gate(choix))   % si le choix et le meme j'incrimente la variable garder 
    garder=garder+1;                    
    if(porter(choix2)==1)
        win=win+1;            
    else 
        lose=lose+1;
    end
    
else 
     ngarder=ngarder+1;               
     if(porter(choix2)==1)
        win=win+1;
    else 
        lose=lose+1;
    end
end

end
%% AFFICHAGE DES RESULTATS 
lose
win
garder
ngarder
pie([win lose])


%%*******************************************************************