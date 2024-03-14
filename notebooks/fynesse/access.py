'''
TODO
'''
import pandas as pd


def _load_raw(filepath: str) -> pd.DataFrame:
    '''
    Loads the file at filepath and returns the corresponding DataFrame.
    '''

    columns = ['process', 'pid', 'timestamp', 'period', 'event', 'ip', 'source1', 'source2']

    # TODO: make it make sense, please
    # a hacky way of dealing with different row formats
    try:
        df = pd.read_csv(filepath, usecols=[1,2,3,4], delim_whitespace=True, names=columns)
        if len(df) == 0:
            return df
        
    except:
        df = pd.read_csv(filepath, usecols=[1,2,3,4], delim_whitespace=True, header=None)
        df.columns = columns[1:5]

    df['timestamp'] = pd.to_numeric(df['timestamp'].apply(lambda x: x.split(':')[0]))
    df['timestamp'] = df['timestamp'] - df.iloc[0]['timestamp']

    # getting rid of the trailing colon in the 'event' row
    df.loc[:, 'event'] = list(map(lambda event: ''.join(event.split(':')), df['event'].values))
    return df


def process(in_filepath, out_filepath):
    '''
    Loads the file at in_filepath, parses it into the corresponding DataFrame, then stores it at out_filepath. 
    '''

    # TODO: accept the path to a shared parent folder and two target filenames?
    df = _load_raw(in_filepath)
    df.to_csv(out_filepath)


def load_df(filepath: str):
    return pd.read_csv(filepath, index_col=0)