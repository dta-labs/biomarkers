***Identification of biomarkers for the diagnosis and prognosis of type 2 diabetes based-on gut microbiota and Machine Learning***

**Description of problem to be solved**:
The metabolic syndrome (*MetS*) is known to substantially reduce the quality of life. MetS is associated with a high incidence of non-communicable diseases such as type 2 diabetes mellitus, cardiovascular diseases, cancer, among others. Multiple investigations focus the early diagnosis of *MetS* and its possible evolution in the patient on the basis of gene expression and clinical parameters.
However, we are interested in supporting the clinical diagnosis and prognosis of MetS-associated diseases based on the gut microbiota. Which means that we will take into account the set of microorganisms (bacteria, fungi, archaea, viruses and parasites) that reside in the intestine, given their relationship with diseases such as obesity, type 2 diabetes, as well as its influence on control glycemic.
Beyond of traditional diagnostic methods, Machine Learning (*ML*) can learn non-linear interactions iteratively from large amounts of data. This is possible using computer algorithms, which are already being applied in various fields, including the evaluation and prediction of disease risk.
The genes analysis belonging to the intestinal microbiota would allow the identification of excretory proteins with biomarker potential for the diagnosis and prognosis of diabetes and metabolic syndrome using supervised Machine Learning algorithms. For this reason, this project seeks to create a “pipeline” of classification algorithms (set of concatenated software) for data mining and analysis that allows predicting the appearance of type 2 diabetes and the progression of complications based on in the gut microbiota.
 
**Proposed Schedule**:
Milestone 1:	Access and download of public databases from Amazon S3, of experiments on the intestinal microbiota associated with patients with type 2 diabetes (1192 databases with 5 to 9 Giga Bytes each).
Milestone 2:	Genome assembly of a multiple cell bacterial data. Doe to databases being double read (forward & reverse), the assembly can generate up to four times the size of the original databases.
Milestone 3:	Download of the bacteria databases and comparative analysis of the sequences obtained in milestone 2 with the sequences of each bacterium (BLAST).
Milestone 4:	Identify and segment genes with known functions and create a map that identifies them.
Milestone 5:	Identification of excretory proteins with biomarker potential for the diagnosis and prognosis of diabetes and metabolic syndrome using Machine Learning tools.

**Plan for sharing outcomes or resources created during project
Set of interconnected tools that would allow**:
1.	Analysis of the gut microbiota of a patient.
a.	Assembly of the intestinal genome.
b.	Identification of the bacteria to which each genome belongs.
2.	Identify if biomarkers are present that allow the diagnosis and prognosis of diabetes and metabolic syndrome.
3.	Create a map to identify the genes associated with microorganisms that may be involved in susceptibility or resistance to MetS-product diseases.
4.	Automatically learn from identified biomarkers to improve the diagnosis and prognosis of type 2 diabetes.
