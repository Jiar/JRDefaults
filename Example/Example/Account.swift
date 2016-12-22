//
//  Account.swift
//  Example
//
//  Created by Jiar on 16/12/22.
//  Copyright © 2016年 Jiar. All rights reserved.
//

import Foundation
import JRDefaults

struct Account: DefaultSettable {
    
    public enum StringKey: String {
        case none
        case name
        case phone
        case email
    }
    
    public enum ArrayKey: String {
        case none
    }
    
    public enum DictionaryKey: String {
        case none
        case familyRelations
    }
    
    public enum DataKey: String {
        case none
    }
    
    public enum StringArrayKey: String {
        case none
        case schools
    }
    
    public enum IntegerKey: String {
        case none
        case id
        case age
    }
    
    public enum FloatKey: String {
        case none
    }
    
    public enum DoubleKey: String {
        case none
        case money
    }
    
    public enum BoolKey: String {
        case none
        case single
    }
    
    public enum URLKey: String {
        case none
        case accountUrl
    }
    
    public enum AnyKey: String {
        case none
    }
    
}
