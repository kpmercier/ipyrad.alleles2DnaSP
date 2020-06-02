# ipyrad.alleles2DnaSP

The goal of this bash script is to reformat the .alleles file output from ipyrad in order to be read by DnaSP v6. It should work in a bash shell.

I wrote this for my own use and have it here just in case it could be useful for someone else. I used it with files from ipyrad v0.9.18 and input to DnaSP v6.12.03 (February 26, 2019) and ran the script on my macbook in a bash shell.

__To Run__
Place the script (ipyrad_alleles_2_dnasp.sh) in the folder containing .alleles file(s) from ipyrad you wish to convert. Then navigate to that folder in the terminal. In the terminal run:

  sh ipyrad_alleles_2_dnasp.sh prefix1 prefix2 ...

prefix arguments: In the formatting procedure, we need to add '>' before each individual identifier, so the script requires the prefix(s) of the individual names as an argument. For example, all the individuals in my dataset started with 'bo' 'ps' or 'ol' so I ran:

  sh ipyrad_alleles_2_dnasp.sh bo ps ol

For each .alleles file in the folder, this script will create a new file prefaced with 'DnaSP_' then the original file name, formatted for DnaSP. It will not modify the original .alleles file.

__Small caution__
Using the prefix arguments as described is not the most robust way to add the '>' to the individual names. If you happen to use combinations of IUPAC codes as the prefix arguments, it WILL fuck up the sequence data. But the original file is never modified, so its not the worst thing in the world. 
