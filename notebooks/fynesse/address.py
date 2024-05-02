from functools import partial
import hashlib
import math
from typing import List, Dict

import numpy as np
import pandas as pd


def hash(event, length=5):
    return hashlib.sha1(event.encode()).hexdigest()[:length]


def pad_to_length(series: np.ndarray, n: int, constant_values=0) -> np.ndarray:
    '''TODO
    '''
    return np.pad(series, (0, n-len(series)), mode='constant', constant_values=constant_values)


def filtered(df: pd.DataFrame, event: str = None) -> pd.DataFrame:
    predicate = True
    
    if event:
        predicate &= df['event'] == event

    return df.loc[predicate]


def make_timeseries(df: pd.DataFrame, event: str) -> np.ndarray:
    '''TODO
    '''
    ticks = filtered(df, event='cycles')
    samples = filtered(df, event=event)
    merged = pd.merge(ticks, samples, how='left', on='timestamp')
    return merged['period_y'].fillna(0).to_numpy(copy=True)


def aggregate_timeseries(df: pd.DataFrame, event: str, bin_size: int) -> np.ndarray:
    '''TODO
    Passing in bin_size=1 results in the same behavior as calling make_timeseries.
    '''
    timeseries = make_timeseries(df, event)

    # pad to the nearest multiple of the bin_size
    timeseries = np.pad(timeseries, (0, math.ceil(len(timeseries)/bin_size) * bin_size - len(timeseries)), mode='constant')
    timeseries = np.sum(timeseries.reshape(-1, bin_size), axis=1)
    return timeseries


def aggregate(timeseries: np.ndarray, bin_size: int) -> np.ndarray:
    '''
    '''
    timeseries = np.pad(timeseries, (0, math.ceil(len(timeseries)/bin_size) * bin_size - len(timeseries)), mode='constant')
    timeseries = np.sum(timeseries.reshape(-1, bin_size), axis=1)
    return timeseries


def make_features(master_dict: Dict[str, Dict[str, List[np.ndarray]]], featured_events: List[str], n_bins: int, models: List[str]) -> np.ndarray:
    '''Order matters
    '''
    master_list = list()

    for model in models:
        for event in featured_events:
            master_list += master_dict[model][event]

    max_len = max(map(len, master_list))
    bin_size = max_len // n_bins + bool(max_len % n_bins)

    master_list = list(map(partial(aggregate, bin_size=bin_size), map(partial(pad_to_length, n=max_len), master_list)))

    if len(featured_events) == 1:
        return np.row_stack(master_list)
    
    features = list()

    for i, model in enumerate(models):
        features.append(np.column_stack([master_list[i*200+j*100:i*200+(j+1)*100] for j in range(len(featured_events))]))

    return np.row_stack(features)


def make_features_deprecated(inferences: List[pd.DataFrame], event: str, bin_size: int) -> np.ndarray:
    '''TODO
    '''
    aggregator = partial(aggregate_timeseries, event=event, bin_size=bin_size)
    features = list(map(aggregator, inferences))

    # TODO: shall we always pad to the maximum observed length?
    # find the required padding length
    max_len = max(map(len, features))
    features = list(map(lambda feature: np.pad(feature, (0, max_len-len(feature)), mode='constant'), features))
    return np.row_stack(features)



