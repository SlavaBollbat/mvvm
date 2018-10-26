//
//  DetailViewController.swift
//  MVVM - 2
//
//  Created by Слава on 28.09.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        detailLabel.text = viewModel.description
    }

 
}
