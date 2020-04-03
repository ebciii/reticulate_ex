# reticulate_ex (reticulate example)

### Objective ###
Introductory exercise in which R is used for data preprocessing, and Python is used in `reticulate` to train a Support Vector Machine for a simple classification task.

### Approach ###
Follow instructions in [R and Python: Using reticulate to get the best of both worlds](https://www.statworx.com/de/blog/r-and-python-using-reticulate-to-get-the-best-of-both-worlds/). After running into a problem, reach out to the author, [Manuel Tilgner](https://www.linkedin.com/in/manuel-tilgner-93616b101/?msgConversationId=6651730593560178688&msgOverlay=true), on LinkedIn for help.

### R Markdown Report

My efforts thus far are summarized in the RMarkdown Report, entitled [reticulate - Using R for Data Wrangling and Python for A Clasification Task](html/Reticulate_RdataWrangling_PythonPredictions.html)

### Current Status  

I've turned off the chunks that giving the error (e.g. "Tune the Model", "Evaluate the Accuracy of the Model", the latter of which fails because it doesn't get variables from the former), so that the Rmd report will render.

I am getting the following error in the chunk under the heading "Tune the model." The error is:

```
Quitting from lines 185-195 (Reticulate_RdataWrangling_PythonPredictions.Rmd)
Error in py_call_impl(callable, dots$args, dots$keywords) :
  TypeError: object of type 'CategoricalDtype' has no len()

Detailed traceback:
  File "<string>", line 1, in <module>
  File "/anaconda3/lib/python3.7/site-packages/sklearn/model_selection/_search.py", line 722, in fit
    self._run_search(evaluate_candidates)
  File "/anaconda3/lib/python3.7/site-packages/sklearn/model_selection/_search.py", line 1191, in _run_search
    evaluate_candidates(ParameterGrid(self.param_grid))
  File "/anaconda3/lib/python3.7/site-packages/sklearn/model_selection/_search.py", line 711, in evaluate_candidates
    cv.split(X, y, groups)))
  File "/anaconda3/lib/python3.7/site-packages/sklearn/model_selection/_split.py", line 719, in split
    y = check_array(y, ensure_2d=False, dtype=None)
  File "/anaconda3/lib/python3.7/site-packages/sklearn/utils/validation.py", line 480, in check_array
    if hasattr(array, "dtypes") and len(array.dtypes):
Calls: <Anonymous> ... py_capture_output -> force -> <Anonymous> -> py_call_impl
Execution halted
```

I've updated both conda and reticulate, and the problem persists.
