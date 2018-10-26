//
//  TableViewVodelType.swift
//  MVVM - 2
//
//  Created by Слава on 27.09.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import Foundation

protocol TableViewViewModelType {
    
    func numberOfRows() -> Int

    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectedRow(atIndexPath indexPath: IndexPath)
}
