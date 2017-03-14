numFigs = input('how many figs?\n');

f = fopen ('simpleDatabaseWritten.m','a');

for i = 1:numFigs
    
    %fprintf(f,'test\n');
    
    tmpi = num2str(i);
    tmpFig = ['\nname.a', tmpi, '.fig = {''''};']; 
    tmpType = ['\nname.a', tmpi, '.type = {''''};']; 
    tmpMP = ['\nname.a', tmpi, '.mp = {''''};']; 
    tmpRarity = ['\nname.a', tmpi, '.rarity = {''''};']; 
    tmpStatus = ['\nname.a', tmpi, '.status = {''''};']; 
    tmpDamage = ['\nname.a', tmpi, '.damage = {''''};']; 
    tmpAttackTypes = ['\nname.a', tmpi, '.attackTypes = {''''};']; 
    tmpAbilities = ['\nname.a', tmpi, '.abilities = {''''};', '\n']; 
    
    fprintf(f, tmpFig);
    fprintf(f, tmpType);
    fprintf(f, tmpMP);
    fprintf(f, tmpRarity);
    fprintf(f, tmpStatus);
    fprintf(f, tmpDamage);
    fprintf(f, tmpAttackTypes);
    fprintf(f, tmpAbilities);
    
    
end