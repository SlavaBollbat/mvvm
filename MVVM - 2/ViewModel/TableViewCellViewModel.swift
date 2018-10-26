//
//  TableViewCellViewModel.swift
//  MVVM - 2
//
//  Created by Слава on 27.09.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + profile.secondName
    }
    
    var age: String {
        return String(profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
