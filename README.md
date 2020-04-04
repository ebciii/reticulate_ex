# reticulate_ex (reticulate example)

### Objective ###
Introductory exercise in which R is used for data preprocessing, and Python is used in `reticulate` to train a Support Vector Machine for a simple classification task.

### Introduction
This is a worked example of the tutorial, [R and Python: Using reticulate to get the best of both worlds](https://www.statworx.com/de/blog/r-and-python-using-reticulate-to-get-the-best-of-both-worlds/). Although only a year old at the time this example was rerun, there have been numerous changes that needed to be addressed to get the example to run without error or warnings. These changes were outlined in the Conclusion section at the end of the R Markdown report. The text in the "Data Analysis" section and the first part of the "Conclusions" is from the original post. Tweeks made to the code are flagged with comment (### Updated script) in the script of the report, and summarized at end of Conclusions.

### Approach ###
Follow instructions in [R and Python: Using reticulate to get the best of both worlds](https://www.statworx.com/de/blog/r-and-python-using-reticulate-to-get-the-best-of-both-worlds/). 

### R Markdown Report

The implentation of this tutorial is summarized in the RMarkdown Report, entitled [reticulate - Using R for Data Wrangling and Python for A Clasification Task](html/Reticulate_RdataWrangling_PythonPredictions.html)

#### Updates Needed
Several tweeks were made to this tutorial to get it to run without errors or warnings:  
- The test and training data needed to be explicitly converted to np.array (e.g., y_train = np.array(...)) to avoid an error.  
- 'RBF' had to be changed to 'rbf' to avoid an error, and `gamma` needed to made explicit to address warnings (e.g, `svm.SVC(kernel = 'rbf', gamma='scale')`).  
- To the `grid` assignment in "Tune the model," `, iid=True` had to be added to address warnings about changes in the versions.  
