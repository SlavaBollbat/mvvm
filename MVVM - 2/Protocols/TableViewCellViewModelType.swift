//
//  TableViewCellViewModelType.swift
//  MVVM - 2
//
//  Created by Слава on 27.09.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import Foundation

protocol TableViewCellViewModelType: class {
    
    var fullName: String { get }
    var age: String { get }
}
