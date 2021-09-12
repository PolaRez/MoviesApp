//
//  MoviesScreenViewController.swift
//  MoviesApp
//
//  Created by Polina Reznik on 24/08/2021.
//

import UIKit

class MoviesScreenViewController: UIViewController {
    @IBOutlet weak var moviesTableView: UITableView!
    @IBOutlet weak var label: UILabel!
    
    let moviewVM = MoviesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        moviewVM.readFromFile(name: "movies")
    }
}
