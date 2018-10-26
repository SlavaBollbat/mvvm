//
//  ViewModel.swift
//  MVVM - 2
//
//  Created by Слава on 27.09.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import Foundation


class ViewModel: TableViewViewModelType {
   
    private var selectedIndexPath: IndexPath?
    
    private var profiles = [Profile(name: "John", secondName: "Smith", age: 33),
                              Profile(name: "Max", secondName: "Colby", age: 19),
                              Profile(name: "Mark", secondName: "Selmon", age: 55)]
    
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let indexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[indexPath.row])
    }
    
    func selectedRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    

    
}
