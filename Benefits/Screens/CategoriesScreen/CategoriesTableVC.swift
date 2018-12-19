//
//  CategoriesTableVC.swift
//  Benefits
//
//  Created by Andrew on 28/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit
import Apollo

class CategoriesTableVC: UITableViewController {
    let loadingView = UIView()
    let spinner = UIActivityIndicatorView()
    let loadingLabel = UILabel()
    
    var categories = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCategories()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "CategoriesTableViewCellIdentifier"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CategoriesTableViewCell  else {
            fatalError("The dequeued cell is not an instance of CategoriesTableViewCell.")
        }
        
        let category = categories[indexPath.row]
        
        cell.name.text = category.name
        cell.imageView?.image = UIImage(named: "category_24pt")
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let benefitsTableVC = segue.destination as? BenefitsTableVC else {
            fatalError("Unexpected destination: \(segue.destination)")
        }
        
        guard let categoriesTableViewCell = sender as? CategoriesTableViewCell else {
            fatalError("Unexpected sender: \(String(describing: sender))")
        }
        
        guard let indexPath = tableView.indexPath(for: categoriesTableViewCell) else {
            fatalError("The selected cell is not being displayed by the table")
        }
        
        let category = categories[indexPath.row]
        benefitsTableVC.navigationItem.title = category.name
        benefitsTableVC.categoryId = category.id
    }
    
    private func loadCategories(){
        showLoadingView()
        
        apollo.fetch(query: GetCityQuery(id: "5bd083578673813050d06034")) { result, error in
            self.hideLoadingView()
            
            guard let data = result?.data?.getCity.categories else { return }
            
            var categories = data.map{Category(id: $0.id, name: $0.name)}
            
            categories.insert(Category(id: "all", name: "ВСЕ КАТЕГОРИИ"), at: 0)
            
            self.categories = categories
            
            self.tableView.reloadData()
        }
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
