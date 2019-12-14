//
//  Box.swift
//  MVVM
//
//  Created by ahmed elmemy on 12/14/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import Foundation


class Binding<T>
{
    typealias Listener = (T) -> Void
    var listener : Listener?
    var value : T
    {
        didSet
        {
            listener?(value)
        }
    }
    init(_ value:T) {
        self.value = value
    }
    func bind(listener:Listener?){
        self.listener = listener
        listener?(value)
    }
}
