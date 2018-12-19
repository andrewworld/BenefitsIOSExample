//
//  BenefitsTableVC.swift
//  Benefits
//
//  Created by Andrew on 29/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit

class BenefitsTableVC: UITableViewController {
    let loadingView = UIView()
    let spinner = UIActivityIndicatorView()
    let loadingLabel = UILabel()
    
    var categoryId: String = ""
    var benefits = [Benefit]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadBenefits()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return benefits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "BenefitsTableViewCellIdentifier"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? BenefitsTableViewCell  else {
            fatalError("The dequeued cell is not an instance of CategoriesTableViewCell.")
        }
        
        let benefit = benefits[indexPath.row]
        
        cell.nameLabel.text = benefit.name
        cell.logo.image = benefit.logo
        cell.categoryNameLabel.text = benefit.categoryName
        cell.categoryIcon.image = UIImage(named: "category_18pt")
        cell.discountLabel.text = benefit.discount
        cell.descriptionLabel.text = benefit.description
        
        return cell
    }
    
    private func loadAllBenefits() {
        apollo.fetch(query: GetBenefitsQuery()) { result, error in
            self.hideLoadingView()
            
            guard let data = result?.data?.getBenefits else { return }
            
            self.benefits = data.map{Benefit(name: $0.name, logo: nil, categoryName: $0.parentCategory.name, discount: $0.discount, description: $0.description)}
            
            self.tableView.reloadData()
        }
    }
    
    private func loadBenefitsById() {
        apollo.fetch(query: GetCategoryQuery(id: categoryId)) { result, error in
            self.hideLoadingView()
            
            guard let data = result?.data?.getCategory.benefits else { return }
            
            self.benefits = data.map{Benefit(name: $0.name, logo: nil, categoryName: $0.parentCategory.name, discount: $0.discount, description: $0.description)}
            
            self.tableView.reloadData()
        }
    }
    
    private func loadBenefits() {
        if (categoryId.isEmpty) {
            return
        }
        
        showLoadingView()
        
        if (categoryId == "all"){
            loadAllBenefits()
            
            return
        }
        
        loadBenefitsById()
    }
    
    private func showLoadingView() {
        let width: CGFloat = 120
        let height: CGFloat = 30
        let x = (tableView.frame.width / 2) - (width / 2)
        let y = (tableView.frame.height / 2) - (height / 2) - (navigationController?.navigationBar.frame.height)!
        
        loadingView.frame = CGRect(x: x, y: y, width: width, height: height)
        
        loadingLabel.textColor = .gray
        loadingLabel.textAlignment = .center
        loadingLabel.text = "Loading..."
        loadingLabel.frame = CGRect(x: 0, y: 0, width: 140, height: 30)
        
        spinner.style = .gray
        spinner.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        spinner.startAnimating()
        
        loadingView.addSubview(spinner)
        loadingView.addSubview(loadingLabel)
        
        tableView.separatorStyle = .none
        tableView.addSubview(loadingView)
    }
    
    private func hideLoadingView() {
        spinner.stopAnimating()
        spinner.isHidden = true
        
        loadingLabel.isHidden = true
        
        tableView.separatorStyle = .singleLine
    }
}
