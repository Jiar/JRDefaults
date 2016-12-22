//
//  JRDefaults.swift
//  JRDefaults
//
//  Created by Jiar on 16/12/22.
//  Copyright © 2016年 Jiar. All rights reserved.
//

import Foundation

public protocol DefaultSettable: StringDefaultSettable, ArrayDefaultSettable, DictionaryDefaultSettable, DataDefaultSettable, StringArrayDefaultSettable, IntegerDefaultSettable, FloatDefaultSettable, DoubleDefaultSettable, BoolDefaultSettable, URLDefaultSettable, AnyDefaultSettable{}

public protocol DefaultSettableBase {
    
    static func namespaced<T: RawRepresentable>(_ key: T) -> String
    
}

public extension DefaultSettableBase {
    
    static func namespaced<T: RawRepresentable>(_ key: T) -> String {
        return "\(Self.self).\(key.rawValue)"
    }
    
    fileprivate static var JRDefaults: UserDefaults {
        if let userDefaults = UserDefaults.init(suiteName: "\(Self.self)") {
            return userDefaults
        } else {
            return UserDefaults.standard
        }
    }
    
}

/****************  Object  ****************/

public protocol ObjectDefaultSettable: DefaultSettableBase {
    
    associatedtype ObjectKey: RawRepresentable
    
}

public extension ObjectDefaultSettable where ObjectKey.RawValue == String {
    
    static func set(_ value: Any, forKey key: ObjectKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func object(forKey key: ObjectKey) -> Any? {
        let key = namespaced(key)
        return JRDefaults.object(forKey: key)
    }
    
    static func removeObject(forKey key: ObjectKey) {
        let key = namespaced(key)
        return JRDefaults.removeObject(forKey: key)
    }
    
}

/****************  String  ****************/

public protocol StringDefaultSettable: DefaultSettableBase {
    
    associatedtype StringKey: RawRepresentable
    
}

public extension StringDefaultSettable where StringKey.RawValue == String {
    
    static func set(_ value: String, forKey key: StringKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func string(forKey key: StringKey) -> String? {
        let key = namespaced(key)
        return JRDefaults.string(forKey: key)
    }
    
}

/****************  Array  ****************/

public protocol ArrayDefaultSettable: DefaultSettableBase {
    
    associatedtype ArrayKey: RawRepresentable
    
}

public extension ArrayDefaultSettable where ArrayKey.RawValue == String {
    
    static func set(_ value: [Any], forKey key: ArrayKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func array(forKey key: ArrayKey) -> [Any]? {
        let key = namespaced(key)
        return JRDefaults.array(forKey: key)
    }
    
}

/****************  Dictionary  ****************/

public protocol DictionaryDefaultSettable: DefaultSettableBase {
    
    associatedtype DictionaryKey: RawRepresentable
    
}

public extension DictionaryDefaultSettable where DictionaryKey.RawValue == String {
    
    static func set(_ value: [String: Any], forKey key: DictionaryKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func dictionary(forKey key: DictionaryKey) -> [String: Any]? {
        let key = namespaced(key)
        return JRDefaults.dictionary(forKey: key)
    }
    
}

/****************  Data  ****************/

public protocol DataDefaultSettable: DefaultSettableBase {
    
    associatedtype DataKey: RawRepresentable
    
}

public extension DataDefaultSettable where DataKey.RawValue == String {
    
    static func set(_ value: Data, forKey key: DataKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func data(forKey key: DataKey) -> Data? {
        let key = namespaced(key)
        return JRDefaults.data(forKey: key)
    }
    
}

/****************  StringArray  ****************/

public protocol StringArrayDefaultSettable: DefaultSettableBase {
    
    associatedtype StringArrayKey: RawRepresentable
    
}

public extension StringArrayDefaultSettable where StringArrayKey.RawValue == String {
    
    static func set(_ value: [String], forKey key: StringArrayKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func stringArray(forKey key: StringArrayKey) -> [String]? {
        let key = namespaced(key)
        return JRDefaults.stringArray(forKey: key)
    }
    
}

/****************  Integer  ****************/

public protocol IntegerDefaultSettable: DefaultSettableBase {
    
    associatedtype IntegerKey: RawRepresentable
    
}

public extension IntegerDefaultSettable where IntegerKey.RawValue == String {
    
    static func set(_ value: Int, forKey key: IntegerKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func integer(forKey key: IntegerKey) -> Int {
        let key = namespaced(key)
        return JRDefaults.integer(forKey: key)
    }
    
}

/****************  Float  ****************/

public protocol FloatDefaultSettable: DefaultSettableBase {
    
    associatedtype FloatKey: RawRepresentable
    
}

public extension FloatDefaultSettable where FloatKey.RawValue == String {
    
    static func set(_ value: Float, forKey key: FloatKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func float(forKey key: FloatKey) -> Float {
        let key = namespaced(key)
        return JRDefaults.float(forKey: key)
    }
    
}

/****************  Double  ****************/

public protocol DoubleDefaultSettable: DefaultSettableBase {
    
    associatedtype DoubleKey: RawRepresentable
    
}

public extension DoubleDefaultSettable where DoubleKey.RawValue == String {
    
    static func set(_ value: Double, forKey key: DoubleKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func double(forKey key: DoubleKey) -> Double {
        let key = namespaced(key)
        return JRDefaults.double(forKey: key)
    }
    
}

/****************  Bool  ****************/

public protocol BoolDefaultSettable: DefaultSettableBase {
    
    associatedtype BoolKey: RawRepresentable
    
}

public extension BoolDefaultSettable where BoolKey.RawValue == String {
    
    static func set(_ value: Bool, forKey key: BoolKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func bool(forKey key: BoolKey) -> Bool {
        let key = namespaced(key)
        return JRDefaults.bool(forKey: key)
    }
    
}

/****************  URL  ****************/

public protocol URLDefaultSettable: DefaultSettableBase {
    
    associatedtype URLKey: RawRepresentable
    
}

public extension URLDefaultSettable where URLKey.RawValue == String {
    
    static func set(_ value: URL, forKey key: URLKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func url(forKey key: URLKey) -> URL? {
        let key = namespaced(key)
        return JRDefaults.url(forKey: key)
    }
    
}

/****************  Any  ****************/

public protocol AnyDefaultSettable: DefaultSettableBase {
    
    associatedtype AnyKey: RawRepresentable
    
}

public extension AnyDefaultSettable where AnyKey.RawValue == String {
    
    static func set(_ value: Any, forKey key: AnyKey) {
        let key = namespaced(key)
        JRDefaults.set(value, forKey: key)
    }
    
    static func any(forKey key: AnyKey) -> Any? {
        let key = namespaced(key)
        return JRDefaults.object(forKey: key)
    }
    
}
