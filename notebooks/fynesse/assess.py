'''
TODO
'''
from typing import Any, List, Tuple
import pickle

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd


def normalize_timestamp(df: pd.DataFrame) -> pd.DataFrame:
    '''
    TODO
    inplace
    '''
    df.loc[:, 'timestamp'] = df['timestamp'] - df.iloc[0]['timestamp']
    return df


def normalize_index(df):
    '''
    TODO
    inplace
    '''
    df = df.reset_index().drop(columns='index')
    return df


def extract_slice(df, indices):
    '''
    TODO
    '''
    return df.iloc[indices[0]:indices[1]]


def extract_inferences(df: pd.DataFrame, cutoffs: Tuple[int, int] = (0.5, 1.0)) -> List[pd.DataFrame]:
    '''
    TODO
    check check check your cutoff times!
    for some reason you can't call it twice?
    '''

    # allow for some margins of error?
    # alternative approach: find the rows whose .diff() value is close to the requested value
    inference_starts = df.loc[np.isclose(df['timestamp'].diff().values, cutoffs[1], atol=1e-1)].index.values.tolist()
    dataloading_starts = df.loc[np.isclose(df['timestamp'].diff().values, cutoffs[0], atol=1e-1)].index.values.tolist()

    # ARCHIVED:
    # inference_starts = df.loc[df['timestamp'].diff() > cutoffs[1]].index.values.tolist()
    # dataloading_starts = df.loc[(df['timestamp'].diff() > cutoffs[0]) & (df['timestamp'].diff() < cutoffs[1])].index.values.tolist()

    # warning: generator, can only be consumed once?
    block_edges = zip(inference_starts, dataloading_starts)

    inferences = list(map(lambda block_edge: normalize_index(normalize_timestamp(extract_slice(df, block_edge))), block_edges))

    return inferences
    

def eat_pickle(filepath: str) -> Any:
    '''
    TODO
    '''
    with open(filepath, 'rb') as f:
        obj = pickle.load(f)
    return obj


def make_pickle(filepath: str, obj: Any) -> None:
    '''
    TODO
    '''
    with open(filepath, 'wb') as f:
        pickle.dump(obj, f)


def visualize_inferences(inferences: List[pd.DataFrame], event: str, figsize: Tuple[int, int] = (16,8)) -> Tuple[plt.Figure, plt.Axes]:

    fig, ax = plt.subplots(figsize=figsize)
    alpha = 10 / len(inferences)
    x_min, x_max = 0, 0

    for inference in inferences:
        if event not in inference['event'].unique():
            continue

        inference = inference.loc[inference['event'] == event]
        x_max = max(len(inference)-1, x_max)

        ax.scatter(np.arange(len(inference)), inference['period'], c='#1f77b4', marker='.', alpha=alpha)
    
    ax.set_xlim([x_min, x_max])

    return fig, ax

