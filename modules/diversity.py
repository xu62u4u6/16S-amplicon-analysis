import numpy as np
import pandas as pd

class Diversity:
    def __init__():
        pass

class Alpha(Diversity):
    def __init__():
        pass
    
    @staticmethod
    def shannon(asv):
        relative = asv.to_relative()
        return -(relative*np.where(relative==0, 0, np.log(relative))).sum()  
    
    @staticmethod
    def chao1(asv):
        Sobs = (asv > 0).sum()
        occur1 = (asv == 1).sum()
        occur2 = (asv == 2).sum()
        return Sobs + occur1**2/(occur2*2)
    


class Beta(Diversity):
    def __init__():
        pass
    
    @staticmethod
    def Jaccard(asv, indexA, index1, index2):
        pass
    
    @staticmethod
    def bray_curtis(asv):
        pass
    