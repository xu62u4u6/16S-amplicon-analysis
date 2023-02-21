import pandas as pd
import numpy as np
from diversity import Diversity


class ASV(pd.DataFrame):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.columns = self.columns.astype(np.int64)
        self.columns = self.columns.sort_values()
        self.test = 0
        
    def to_relative(self):
        return self/self.sum(axis=0)
    
    def alpha(self, method: Diversity.Alpha):
        return method(self)
    
    def beta(self, method: Diversity.Beta):
        return method(self)
        
