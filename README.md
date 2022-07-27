# archaeal_promoters
Repository designated to code and data from archaeal promoter annotation based on explainable Support Vector Machines (SVM).

The main branch contains the codes used to train/test and explain the SVM model.
The codes containing in this repository are:
01 - get_features.ipynb
02 - delimiter.ipynb
03 - shuffler.ipynb
04 - svm_predictor.ipynb

The code 01 will read a folder with the target sequences. For each file in the folder, there should be only genetic information (ATCG) of the sequences delimited by line breaks. Each sequence is going to get its dinucleotides converted into DNA Duplex Stability (DDS) parameters. A new folder will be populated with a the same number of files in the input folder.

The code 02 will take as input the output of code 01. A folder with a series of DDS values are spread out in every new line of the file. Code 02 needs a parameter associated to the size of the original sequences (n-1). An original sequence containing 100 nucleotides will need the value 99 as parameter. This code only rearranges the DDS values according to the size of their original sequence. A new folder with the same number of input files is populated with files delimited by \t (indicating a new DDS value) and a \n (indicating a new sequence).

The code 03 will shuffle the nucleotides of n input sequences and save this in files on a new folder keeping the original name with the _shuffled suffix attached.
 
The code 04 is an SVM-based classifier for archaeal promoter sequences. It's train/test data comprises on 3800 experimental and in-silico validate promoter sequences from the following archaea: Haloferax volcanii, thermococcus kodakarensis, sulfolobus soflataricus, aciduliprofundum boonei, and thermofilum pendens. The train/test sequences were submitted to code 01 and code 02. A label has been assigned, where 0 = non-promoter and 1 = promoter. Non-promoter sequences were obtained with the code 03. 

The predicted_promoters branch contains the outcome of a prediction method to annotate promoters in upstream sequences of archaeal organisms.
