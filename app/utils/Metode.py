import numpy as np
import pandas as pd
import random
from app.utils.attributes import attrs

minD = [1, 1, 1, 1, 1, 1, 1, 1, 1]
maxD = [6, 2, 11, 6, 2, 10, 5, 6, 8]
weights = [0.032, 0.002, -0.02, -0.006, -0.003, -0.008, -0.006, 0.003, 0.023]
bias = 0
eta = 0.01

def validasiData(data) :
    for i1, row in enumerate(data):
        for i2, col in enumerate(row):
            if data[i1][i2] not in attrs[i2] :
                return False
    return True

def custom_round(number, ndigits=0):
    factor = 10 ** ndigits
    if number * factor - int(number * factor) == 0.5:
        return (int(number * factor) + (1 if number > 0 else -1)) / factor
    else:
        return round(number, ndigits)
    
def konversi(data) :
    for i1, row in enumerate(data):
        for i2, col in enumerate(row):
            data[i1][i2] = attrs[i2][str(col).lower()]
    return data

def normalisasi(data) :
    for i1, row in enumerate(data):
        for i2, x in enumerate(row):
            if i2 < 9 :
                data[i1][i2] = round((x - 1) / (maxD[i2] - 1), 2)
    return data

def train(data) :
    global bias
    result = []

    for i1, row in enumerate(data):
        count = 0
        rxs = []
        for i2, x in enumerate(row):            
            if i2 < 9 :
                count += x * weights[i2]
                
            rxs.append(x)
        y = rxs[-1]
        
        count = custom_round(count + bias, 3)
        rxs.append(count)
        
        output = 0 if count <= 0 else 1
        rxs.append(output)
        
        error = y - output
        rxs.append(error)
        bias = custom_round(bias + ( error * eta ), 3)
        for i2, col in enumerate(weights):
            weights[i2] = custom_round(col + ( error * rxs[i2] * eta ), 3)    
            
        result.append(rxs)
    return result

def uji(data):
    result = []
    
    for i1, row in enumerate(data):
        count = 0
        rxs = []
        for i2, x in enumerate(row):
            if i2 < 9 :
                count += x * weights[i2]
                
            rxs.append(x)
        y = rxs[-1]
        
        count = custom_round(count + bias, 3)
        rxs.append(count)
        
        output = 0 if count <= 0 else 1
        rxs.append(output)
        
        error = y - output
        rxs.append(error)
        
        result.append(rxs)
    return result

def calcResult(result) :
    TP = 0
    TN = 0
    FP = 0
    FN = 0

    for i, row in enumerate(result) :
        if row[9] == 1 and row[11] == 1 :
            TP += 1
            
        if row[9] == 0 and row[11] == 0 :
            TN += 1
            
        if row[9] == 0 and row[11] == 1 :
            FP += 1
            
        if row[9] == 1 and row[11] == 0 :
            FN += 1

    accuracy = (TP + TN) / (TP + TN + FP + FN)
    recall = TP / (TP + FN)
    precision = TP / (TP + FP)
    F1Score = 2 * (precision * recall) / (precision + recall)
    
    return accuracy, recall, precision, F1Score, TP, TN, FP, FN

