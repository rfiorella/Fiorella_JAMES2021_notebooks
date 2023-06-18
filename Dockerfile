
FROM jupyter/scipy-notebook

RUN mkdir /home/jovyan/proc_data \
    && mkdir /home/jovyan/raw_data \ 
    && mkdir /home/jovyan/scripts \
    && mkdir /home/jovyan/plots \
    && set -ex \
    && conda install --quiet --yes \
    # choose the Python packages you need
    'matplotlib' \
    'dask' \
    'pandas' \
    'xarray' \ 
    'cartopy' \
    && conda clean --all -f -y \
    && conda install --quiet --yes -c conda-forge \
    'nc-time-axis' \
    'netCDF4' \
    && conda clean --all -f -y \
    && rm -rf "/home/${NB_USER}/.cache/yarn" \
    && rm -rf "/home/${NB_USER}/.node-gyp" \
    && fix-permissions "${CONDA_DIR}" \
    && fix-permissions "/home/${NB_USER}" \
    && fix-permissions "/home/${NB_USER}/raw_data" \
    && fix-permissions "/home/${NB_USER}/proc_data" \
    && fix-permissions "/home/${NB_USER}/scripts" \
    && fix-permissions "/home/${NB_USER}/plots"

#ADD proc_data/*.nc /home/jovyan/proc_data/
ADD raw_data/*.nc /home/jovyan/raw_data/
ADD scripts/ /home/jovyan/scripts 
