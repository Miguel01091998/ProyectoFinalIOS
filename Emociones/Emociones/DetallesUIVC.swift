//
//  DetallesUIVC.swift
//  Emociones
//
//  Created by Laboratorio UNAM-Apple on 10/21/19.
//  Copyright © 2019 unam.fca. All rights reserved.
//

import UIKit

class DetallesUIVC: UIViewController {
    
    var datos : Emocion?
    @IBOutlet weak var EmocionL: UILabel!
    @IBOutlet weak var DetalleL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmocionL.text = datos?.emo
        DetalleL.text = datos?.deta
       
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
