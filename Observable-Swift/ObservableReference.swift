//
//  ObservableReference.swift
//  Observable-Swift
//
//  Created by Leszek Ślażyński on 21/06/14.
//  Copyright (c) 2014 Leszek Ślażyński. All rights reserved.
//

public class ObservableReference<T> : ObservableProxy<T, Observable<T>>, WritableObservable {
    
    public typealias ValueType = T
    
    internal var storage : Observable<T>
    
    public override var value: T {
    get { return storage.value }
    set { storage.value = newValue }
    }
    
    public init (_ v : T, queue:dispatch_queue_t? = nil) {
        storage = Observable(v, queue:queue)
        super.init(storage)
    }
    
}
