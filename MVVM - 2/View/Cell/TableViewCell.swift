//
//  TableViewCell.swift
//  MVVM - 2
//
//  Created by Слава on 27.09.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        
        willSet {
            guard let new = newValue else { return }
            fullNameLabel.text = new.fullName
            ageLabel.text = new.age
        }
    }

  
}
