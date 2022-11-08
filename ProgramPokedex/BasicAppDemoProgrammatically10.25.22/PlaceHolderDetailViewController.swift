//
//  PlaceHolderDetailViewController.swift
//  BasicAppDemoProgrammatically10.25.22
//
//  Created by iAskedYou2nd on 11/2/22.
//

import UIKit

class PlaceHolderDetailViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    

    lazy var topLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGreen
        label.numberOfLines = 0
        label.text = "Top"
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label.widthAnchor.constraint(equalToConstant: 300).isActive = true
        return label
    }()
    
    lazy var Mainimage : UIImageView = {
        let image = UIImageView(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Gnar")
        image.backgroundColor = .systemGray5
        image.heightAnchor.constraint(equalToConstant: 300).isActive = true
        image.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        return image
    }()
    
    
    
    
    override func loadView() {
        super.loadView()
        
        print("VC: View is loading in mem")
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.createTheView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createTheView (){
        self.view.backgroundColor = .white
        self.title = "Detail page"
        
        let table2 = UITableView(frame : .zero)
        table2.translatesAutoresizingMaskIntoConstraints = false
        table2.backgroundColor = .systemCyan
        table2.dataSource = self
        table2.dataSource = self
        
        self.view.addSubview(table2)
        
            table2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
            table2.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
            table2.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
            table2.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        
        table2.addSubview(self.topLabel)
        
//            topLabel.topAnchor.constraint(equalTo: self.Mainimage.bottomAnchor, constant: 8).isActive = true
//            topLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
            topLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -48).isActive = true
            topLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: -8).isActive = true
            
        table2.addSubview(self.Mainimage)
        
//        self.Mainimage.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        self.Mainimage.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,constant: 48).isActive = true
        self.Mainimage.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        
//        self.Mainimage.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor,constant: -8).isActive = true

       
        
        

        
        
        
        
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemGray
        
        print("VC: View did load in mem")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("VC: View Will be entering")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("VC: View DID enter")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("VC: View will leave")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("VC: View did leave")
    }
    
}
