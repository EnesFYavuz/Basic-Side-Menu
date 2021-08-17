//
//  MenuViewController.swift
//  MenuSideApp
//
//  Created by Enes Yavuz on 16.08.2021.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   var menuItems = ["HomePage","Page1","Page2","Page3"]

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userJobLabel: UILabel!
    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        userView.viewSetings(view: userView)
        userImage.image = UIImage(named: "batman")
        userImage.maskCircle(anyImage: userImage.image!)
        userNameLabel.text = "Batman"
        userJobLabel.text = "Revenger"
     
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MenuTableViewCell
        cell.NameLabel.text = menuItems[indexPath.row]
        return cell
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIImageView {
 func maskCircle(anyImage: UIImage) {


    self.contentMode = UIView.ContentMode.scaleAspectFill
    self.layer.cornerRadius = self.frame.size.width/2
    self.layer.masksToBounds = false
    self.clipsToBounds = true
}
}
extension UIView {
 func viewSetings(view: UIView) {
    view.backgroundColor = UIColor(red: 0.75, green: 0.83, blue: 0.95, alpha: 1.00)
    view.layer.cornerRadius = 15.0
    view.clipsToBounds = true
}
}

