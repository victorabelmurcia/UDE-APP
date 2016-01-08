*UDE-APP: Univeral Data Exploration Application*

**Overview**
The aim of this application is to provide universal interface for exploration of any dataset structured as a typical rectangular data matrix.
It provides smart numerical and visual summaries of variables' distributions, including joint distributions of up to three variables.
UDE-APP recognizes variables' types and choose an appropriate means of summarization and visualization.

UDE-APP is written in R programming language using _Shiny_ framework. Visualization engine is _ggplot_ and _ggvis_.

**Uploading data**
UDE works on data uploaded by the user. Dataset can be of text format with uniequivocal field separator, which has to `","`, `";"` or `"\t"`.
Alternatively, .RData object storing one data.frame names "data" may be used. This allows UDE-APP to automatically use advanced R functionalities like ordered factors and contrasts as provided by the user in the .RData file.

**Authors**
Szymon Talaga, sztal111@gmail.com
Victor Murcia
