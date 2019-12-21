
#description:                                                                                      
                                                                                                  

This scripts prepares protein and drug molecules(="ligands" in this scripts)' structures,         

Then fitting one pretein and one drug molecules,caculating the affinity to get some drug molecules

in some states which fit protein molecule best. Those drug molecules can be material to design new

drug or therapy.


You can revise loop condition to run complete process. It might take 3-4 or more days.

Whole process can be divided into four parts: 1)prepare molecules,2)docking(=fitting), 3)rescoring

to get more reliable result, and 4)view the result.




#Prerequisites:


1)tools:

R-package 'Bio3d'

Gromacs

Pymol

MGLTools

Open Babel

Smina



2)files:

nma.r

correctMode.sh

forAlignPml.sh

bindingSite.r

fda.mol2

tf*.pdbqt

tf*.pdb




#usage:


$sh ./workflow.sh



#possible result

![](https://github.com/k-eeer/screening/blob/master/illustration/tf1Lig771.png)


![](https://github.com/k-eeer/screening/blob/master/illustration/tf1Lig771Far.png)

----------------------------------------------------------------------------------------------------------------------
If you want to get more information about molecules of the result from Pubchem

you can use buildSql.sh get url of Pubchem.


#pubchempy should be install

$sudo pip install pubchempy


#usage:

$sh ./buildSql.sh


#if you want to check molecule page from pubchem

#delete pound key of this line before execution 

#firefox -new-tab "https://pubchem.ncbi.nlm.nih.gov/compound/$page"



#possible result

![](https://github.com/k-eeer/screening/blob/master/illustration/buildSql.png)



----------------------------------------------------------------------------------------------------
