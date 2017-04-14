numFigs = input('how many figs?\n');

filename = 'temp_database2.m';


f = fopen (filename,'a');

for i = 1:numFigs
% for i = 318:numFigs
    
    %fprintf(f,'test\n');
    
    tmpi = num2str(i);
    tmpFig = ['\nname.a', tmpi, '.fig = {''''};']; 
    tmpType = ['\nname.a', tmpi, '.type = {''''};']; 
    tmpMP = ['\nname.a', tmpi, '.mp = {''''};']; 
    tmpRarity = ['\nname.a', tmpi, '.rarity = {''''};']; 
    tmpEffects = ['\nname.a', tmpi, '.effects = {''''};']; 
    tmpDamage = ['\nname.a', tmpi, '.damage = {''''};']; 
    tmpAttackTypes = ['\nname.a', tmpi, '.attackTypes = {''''};']; 
    tmpAbilities = ['\nname.a', tmpi, '.abilities = {''''};']; 
    tmpEvolves = ['\nname.a', tmpi, '.evolves = {''''};', '\n']; 
    
    fprintf(f, tmpFig);
    fprintf(f, tmpType);
    fprintf(f, tmpMP);
    fprintf(f, tmpRarity);
    fprintf(f, tmpEffects);
    fprintf(f, tmpDamage);
    fprintf(f, tmpAttackTypes);
    fprintf(f, tmpAbilities);
    fprintf(f, tmpEvolves);
    
    
 end

 fclose('all');