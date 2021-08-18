//
//  MenuViewController.swift
//  MenuSideApp
//
//  Created by Enes Yavuz on 16.08.2021.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var page=[cellModel]()
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userJobLabel: UILabel!
    @IBOutlet weak var userView: UIView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        appendSideMenuItem()
        mainImageView.makeBlurImage(targetImageView: mainImageView, imageName: "batman")
        userImage.maskCircle(anyImage: userImage, imageName: "batman")
        userNameLabel.text = "Batman"
        userJobLabel.text = "Revenger"
     
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return page.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MenuTableViewCell
        cell.pageName.text = page[indexPath.row].pageName
        cell.pageImage.image = UIImage(named: page[indexPath.row].pageimageName!) 
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch page[indexPath.row].pageName {
        case "Home":
            self.dismiss(animated: true, completion: nil)
        case "Settings":
            performSegue(withIdentifier: "settingsVc", sender: nil)
        case "Logout":
            Alert().exitAlert(title: "Warning", message: "Do you want to exit the application?", viewController: self)
        default: break
        }
    
    }
    func appendSideMenuItem(){
        page.append(cellModel(pageimageName: "home", pageName: "Home"))
        page.append(cellModel(pageimageName: "settings", pageName: "Settings"))
        page.append(cellModel(pageimageName: "logout", pageName: "Logout"))
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
    func maskCircle(anyImage: UIImageView,imageName:String) {
    anyImage.image = UIImage(named: imageName)
    self.contentMode = UIView.ContentMode.scaleAspectFill
    self.layer.cornerRadius = self.frame.size.width/2
    self.layer.masksToBounds = false
    self.clipsToBounds = true
}
    func makeBlurImage(targetImageView:UIImageView?,imageName:String)
        {
        targetImageView?.image = UIImage(named: imageName)
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = 0.4
        blurEffectView.frame = targetImageView!.frame
        targetImageView?.addSubview(blurEffectView)
        }
}

