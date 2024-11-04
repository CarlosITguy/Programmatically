//
//  ViewController.swift
//  BasicAppDemoProgrammatically10.25.22
//
//  Created by iAskedYou2nd on 11/2/22.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView?
    var NetwrokManager: NetworkManagable
    var data: [String]
    
    init(netowrkManager: NetworkManagable = NetworkManager()) {
        self.NetwrokManager = netowrkManager
        self.data = netowrkManager.fetchData()
        super.init(nibName: nil, bundle: nil)
            }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
    }
    
    private func setUpUI() {
        
        self.view.backgroundColor = .systemBlue
        self.title = "Programmatic Example"
        
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .systemRed
        table.dataSource = self
        table.delegate = self
        // Register Cell
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "SampleCell")
        table.register(ProgrammaticTableViewCell.self, forCellReuseIdentifier: "ProgCell")
        
        // Add View To View Hierarchy
        self.view.addSubview(table)
        
        table.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        table.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        table.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        table.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
//        self.view.trailingAnchor.constraint(equalTo: table.trailingAnchor, constant: 8).isActive = true
//        self.view.bottomAnchor.constraint(equalTo: table.bottomAnchor, constant: 8).isActive = true
        
        
        // Alt Approach
//        let topConstraint = table.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8)
//        let leadingConstraint = table.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8)
//        let trailingConstraint = table.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8)
//        let bottomConstraint = table.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
//        NSLayoutConstraint.activate([topConstraint, leadingConstraint, trailingConstraint, bottomConstraint])
        
        
        self.tableView = table
        
    }
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProgCell", for: indexPath) as? ProgrammaticTableViewCell else {
            fatalError("Whoops, something went wrong")
        }
//        cell.textLabel?.text = "\(indexPath)"
        cell.progImageView.image = UIImage(named: self.data[indexPath.row % data.count])
        cell.progMidLabel.text = self.data[indexPath.row]
        return cell
    }

    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let placeholderVC = PlaceHolderDetailViewController()
        self.navigationController?.pushViewController(placeholderVC, animated: true)
    }
}
