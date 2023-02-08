//
//  ViewController.swift
//  SemuaSegar
//
//  Created by made on 06/02/23.
//

import UIKit
import CoreData

// Models


class ViewController: UIViewController{
    
    
    @IBOutlet weak var viewLogin: UIView!
    
    @IBOutlet weak var viewBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewBackground.roundCorner([.topLeft,.topRight], radius: 30)
        viewLogin.roundCorner([.topLeft,.topRight,.bottomLeft,.bottomRight], radius: 20)
      
    }
    
    
    @IBAction func btnDaftarAkun(_ sender: Any) {
        performSegue(withIdentifier: "ToRegisterPage", sender: self)
    }
    
    @IBAction func btnLoginAkun(_ sender: Any) {
        performSegue(withIdentifier: "ToDashboardPage", sender: self)
    }
    
    

}

//extension UIView {
//    func roundCorner(_ corners: UIRectCorner, radius:CGFloat){
//        if #available(iOS 11, *){
//            var cornerMask = CACornerMask()
//            if(corners.contains(.topLeft)){
//                cornerMask.insert(.layerMinXMinYCorner)
//            }
//            
//            if(corners.contains(.topRight)){
//                cornerMask.insert(.layerMaxXMinYCorner)
//            }
//            
//            if(corners.contains(.bottomLeft)){
//                cornerMask.insert(.layerMinXMaxYCorner)
//            }
//            
//            if(corners.contains(.bottomRight)){
//                cornerMask.insert(.layerMaxXMaxYCorner)
//            }
//            
//            self.layer.cornerRadius = radius
//            self.layer.maskedCorners = cornerMask
//        }
//        else {
//            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//            let mask = CAShapeLayer()
//            mask.path = path.cgPath
//            self.layer.mask = mask
//        }
//        
//        
//    }
//}




