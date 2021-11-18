//
//  ViewController.swift
//  ifkadyrovPW5
//
//  Created by user209023 on 11/12/21.
//

import UIKit

class ArticleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        setupTableView()
    }

    private func setupTableView() {
        let rect = CGRect(x: 15, y: 15, width: view.frame.width - 30, height: view.frame.height - 30)
        
        tableView = UITableView(frame: rect)
        //tableView.register(TableCell.self, forCellReuseIdentifier: cellId)
        //tableView.register(EyeCell.self, forCellReuseIdentifier: "eyeCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = UIColor.clear
        tableView.rowHeight = 80
        tableView.showsVerticalScrollIndicator = true
        tableView.translatesAutoresizingMaskIntoConstraints = false //
        tableView.layer.cornerRadius = 35
        tableView.layer.masksToBounds = true
        
        self.view.addSubview(tableView)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

