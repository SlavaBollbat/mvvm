//
//  DetailViewModel.swift
//  MVVM - 2
//
//  Created by Слава on 28.09.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import Foundation


class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) years old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
