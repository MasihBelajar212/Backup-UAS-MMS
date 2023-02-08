//
//  ItemViewController.swift
//  SemuaSegar
//
//  Created by made on 08/02/23.
//

import UIKit

class ItemViewController: UIViewController
//                            UITableViewDataSource
{
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
    
    
    
    @IBOutlet weak var fruitTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = "https://fruityvice.com/api/fruit/all"
        let url2 = "https://api.jikan.moe/v4/seasons/now"
        
        getData(from: url)
        
//        fruitTableView.dataSource = self
//        fruitTableView.register(UINib(nibName: "FruitTableViewCell", bundle: nil), forCellReuseIdentifier: "FruitCell")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogOut(_ sender: Any) {
        performSegue(withIdentifier: "ToLoginPage", sender: self)
    }
    
    private func getData(from url: String) {
            let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
                
                guard let data = data, error == nil else {
                    print("Something went wrong")
                    return
                }
                
                var fruits:[Fruit]?
                do {
                    fruits = try JSONDecoder().decode([Fruit].self, from: data)
                }
                catch {
                    print(String(describing: error))
                }
                
                guard let json = fruits else {
                    return
                }
                print(fruits!)
                print(json)
            })
            
            task.resume()
        }
    
}

struct FruitsData: Codable {
    let fruits: [Fruit]
}

struct Fruit: Codable {
    let genus: String
    let name: String
    let id: Int
    let family: String
    let order: String
    let nutritions: NutritionList
}

struct NutritionList: Codable {
    let carbohydrates: Double
    let protein: Double
    let fat: Double
    let calories: Int
    let sugar: Double
}

