clear;
clc;

%%
%options:


type = {'normal', 'fire', 'water', 'grass', 'electric', 'ice', 'fighting', 'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon', 'dark', 'steel', 'fairy'};
typeOption = sort(type);

status = {'paralyze', 'sleep', 'confusion', 'noxious', 'burn', 'poison'};

statusOptions = sort(status);

%%
%searcher:

simpleDatabaseNew

x = inputdlg({'type', 'mp', 'rarity', 'Effects', 'damage', 'attackTypes', 'abilities', 'blank name', 'attackTypes2', 'evolves'});

disp('Figures containing: ')
disp(x)



for i = 1:length(fieldnames(name))
    
    %for i = 1:6
    iString = num2str(i);
    string = ['name.', 'a', iString ];
    
    %%
    %type:
    if not(isempty(x{1}))
        stringType = [string, '.type'];
        tmpType = eval(stringType);
        %tmp1 = strcmpi( tmpType, x(1));
        
        tmpType = lower(tmpType);
        x(1) = lower(x(1));
        tmp1 = strfind(tmpType, x(1));
        if any(horzcat(tmp1{:})) == 0;
           tmp1 = 0;
        else
           tmp1 = 1;
        end
        
        
        
    else
        tmp1 = 1;
    end
    %%
    %mp:
    if not(isempty(x{2}))
        stringMp = [string, '.mp'];
        tmpMp = eval(stringMp);
        %tmp2 = strcmpi( tmpMp, x(2));
        
        tmpMp = lower(tmpMp);
        x(2) = lower(x(2));
        tmp2 = strfind(tmpMp, x(2));
        if any(horzcat(tmp2{:})) == 0;
           tmp2 = 0;
        else
           tmp2 = 1;
        end
        
        
    else
        tmp2 = 1;
    end
        %%
    %rarity:
    if not(isempty(x{3}))
        stringRarity = [string, '.rarity'];
        tmpRarity = eval(stringRarity);
        %tmp3 = strcmpi( tmpRarity, x(3));
        tmpRarity = lower(tmpRarity);
        x(3) = lower(x(3));
        tmp3 = strfind(tmpRarity, x(3));
        if any(horzcat(tmp3{:})) == 0;
           tmp3 = 0;
        else
           tmp3 = 1;
        end
        
    else
        tmp3 = 1;
    end
        %%
    %status
    if not(isempty(x{4}))
        
       
        stringEffects = [string, '.effects'];
        tmpEffects = eval(stringEffects);
        %tmp4 = strcmpi( tmpEffects, x(4));
        tmpEffects = lower(tmpEffects);
        x(4) = lower(x(4));
        tmp4 = strfind(tmpEffects, x(4));
        if any(horzcat(tmp4{:})) == 0;
           tmp4 = 0;
        else
           tmp4 = 1;
        end
        
    else
        tmp4 = 1;
    end
        %%
    %damage:
    if not(isempty(x{5}))
        stringDamage = [string, '.damage'];
        tmpDamage = eval(stringDamage);
        tmp5 = strcmpi( tmpDamage, x(5));
                
%         tmpDamage = lower(tmpDamage);
%         x(5) = lower(x(5));
%         tmp5 = strfind(tmpDamage, x(5));
%         if any(horzcat(tmp5{:})) == 0;
%            tmp5 = 0;
%         else
%            tmp5 = 1;
%         end
        
        
    else
        tmp5 = 1;
    end
        %%
    %attackTypes:
    if not(isempty(x{6}))
        stringAttackTypes = [string, '.attackTypes'];
        tmpAttackTypes = eval(stringAttackTypes);
        %tmp6 = strcmpi( tmpAttackTypes, x(6));
        
        tmpAttackTypes = lower(tmpAttackTypes);
        x(6) = lower(x(6));
        tmp6 = strfind(tmpAttackTypes, x(6));
        if any(horzcat(tmp6{:})) == 0;
           tmp6 = 0;
        else
           tmp6 = 1;
        end
        
        
    else
        tmp6 = 1;
    end
        %%
    %abilities:
    if not(isempty(x{7}))
        stringAbilities = [string, '.abilities'];
        tmpAbilities = eval(stringAbilities);
        %tmp7 = strcmpi( tmpAbilities, x(7));
        
        tmpAbilities = lower(tmpAbilities);
        x(7) = lower(x(7));
        tmp7 = strfind(tmpAbilities, x(7));
        if any(horzcat(tmp7{:})) == 0;
           tmp7 = 0;
        else
           tmp7 = 1;
        end
        
    else
        tmp7 = 1;
    end
    
    %%
    %blank name
    if not(isempty(x{8}))
        stringEmpty = [string, '.fig'];
        tmpEmpty = eval(stringEmpty);
        tmp8 = strcmpi( tmpEmpty, '');
    
        
    end
       
    %%
        %attackTypes:
    if not(isempty(x{9}))
        stringAttackTypes2 = [string, '.attackTypes'];
        tmpAttackTypes2 = eval(stringAttackTypes2);
        %tmp6 = strcmpi( tmpAttackTypes, x(6));
        
        tmpAttackTypes2 = lower(tmpAttackTypes2);
        x(9) = lower(x(9));
        tmp9 = strfind(tmpAttackTypes2, x(9));
        if any(horzcat(tmp9{:})) == 0;
           tmp9 = 0;
        else
           tmp9 = 1;
        end
        
        
    else
        tmp9 = 1;
    end
    
    
           %%
    %evolves
    if not(isempty(x{10}))
        
       
        stringEvolves = [string, '.evolves'];
        tmpEvolves = eval(stringEvolves);
        %tmp4 = strcmpi( tmpEffects, x(4));
        tmpEvolves = lower(tmpEvolves);
        x(10) = lower(x(10));
        tmp10 = strfind(tmpEvolves, x(10));
        if any(horzcat(tmp10{:})) == 0;
           tmp10 = 0;
        else
           tmp10 = 1;
        end
        
    else
        tmp10 = 1;
    end
    
    
    %%
    %printer
    if x{8}== '2'
        if tmp8 == 1
        tmpStringi = num2str(i);
        tmpString = [string, '.fig'];
        tmpStringi = ['ID: ', tmpStringi];
        disp(tmpStringi)
        %disp(eval(tmpString));  
        end
     elseif (any(tmp1) && any(tmp2) && any(tmp3) && any(tmp4) && any(tmp5) && any(tmp6) && any(tmp7) && any(tmp9) && any(tmp10))
         tmpStringi = num2str(i);
         tmpString = [string, '.fig'];
         tmpStringi = ['ID: ', tmpStringi];
         
         %newstring = [tmpStringi, eval(tmpString)];
         part1 = char(tmpStringi);
         part2 = char(eval(tmpString));
         newstring = [part1, '   ', part2];
         disp(newstring);
         %disp(part1);
         %disp(part2);
         %disp(tmpStringi)
         %disp(eval(tmpString));
    end
    
end







