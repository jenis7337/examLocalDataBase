//
//  ViewController2.swift
//  examLocalDataBase
//
//  Created by Jenish Navadiya on 12/04/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    
    var arr2 = fmdbhelper.getData()
    @IBOutlet weak var tv: UITableView!
    override func viewDidLoad() {
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arr2.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tv.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
                        cell.idLable.text = arr2[indexPath.row].id.description
                        cell.nameLable.text = arr2[indexPath.row].name
                        return cell
        }

   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 200
        }
}
