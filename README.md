This script is a demo to screening possible drug with the software, Smina.

R-package ,Bio3d and rescoring function of smina are used to improve screening accruacy. 
<br /><br />
You can use buildSql.sh to build a MySQL table of PubChem pages of  possible drug.

And you can revise loop condition to run complete process. It might take 3-4 or more days.

<br /><br />


# Prerequisites:

# 1)tools:

R-package 'Bio3d'

Gromacs

Pymol

MGLTools

Open Babel

Smina

<br /><br />

# 2)input files:

nma.r

correctMode.sh

forAlignPml.sh

bindingSite.r

fda.mol2

<br /><br />



# Usage:


$sh ./workflow.sh

<br /><br />

# Output:

![](https://github.com/k-eeer/screening/blob/master/illustration/tf1Lig771.png)


![](https://github.com/k-eeer/screening/blob/master/illustration/tf1Lig771Far.png)

----------------------------------------------------------------------------------------------------------------------
If you want to get more information about molecules of the result from Pubchem

you can use buildSql.sh get url of Pubchem.

<br /><br />
#pubchempy should be install

$sudo pip install pubchempy

<br /><br />
# Usage:

$sh ./buildSql.sh
<br /><br />

#if you want to check molecule page from pubchem

#delete pound key of the following line before execution 

#firefox -new-tab "https://pubchem.ncbi.nlm.nih.gov/compound/$page"

<br /><br />

# Output:

![](https://github.com/k-eeer/screening/blob/master/illustration/buildSql.png)



----------------------------------------------------------------------------------------------------
