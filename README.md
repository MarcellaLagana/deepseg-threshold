# deepseg-threshold
Find appropriate threshold for each contrast with deepseg algorithm

## Dependencies

- Python 3.7 (miniconda distrib)
- SCT commit 7ed63da96fa13b4446ad636c25692ff69fe4b44f
  - Note: This commit is important as it includes specific features on deepseg to enable testing for various thresholds

## Getting started

- Download the [spine generic dataset](http://openneuro.org/datasets/ds001919/)
- Create a [parameters.sh file](https://github.com/neuropoly/spinalcordtoolbox/blob/master/shell/parameters_example.sh)
- Run processing across the DB:
~~~
sct_run_batch parameters.sh deepseg_threshold.sh
~~~
- Run the Jupyter notebook to find the optimal thresholds for each contrast:
~~~
jupyter notebook deepseg_find_threshold.ipynb
~~~
