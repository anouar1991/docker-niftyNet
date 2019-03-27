#!/bin/bash
FSEI_JUPYTER_NOTEBOOK_PORT=2019
FSEI_TENSORBOARD_PORT=2020
FSEI_TENSORBOARD_LOGDIR=logs/
FSEI_JUPYTER_PASSWORD=awesome

jupyter notebook --generate-config
echo 'c.NotebookApp.ip ="0.0.0.0"' >> $HOME/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.allow_origin ="*"' >> $HOME/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.disable_check_xsrf=True' >> $HOME/.jupyter/jupyter_notebook_config.py
echo 'c.NotebookApp.password ="sha1:b4845af8c7bc:ca38b0e441e596b28aadb5646a1c4cbbe26b7403"' >> $HOME/.jupyter/jupyter_notebook_config.py

jupyter notebook --allow-root --port=$FSEI_JUPYTER_NOTEBOOK_PORT --no-browser&
tensorboard --logdir=$FSEI_TENSORBOARD_LOGDIR --host=0.0.0.0 --port=$FSEI_TENSORBOARD_PORT&
bash


