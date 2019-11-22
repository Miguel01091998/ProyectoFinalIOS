//
//  ViewController.swift
//  Emociones
//
//  Created by Laboratorio UNAM-Apple on 10/21/19.
//  Copyright © 2019 unam.fca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emocionTF: UITextField!
    @IBOutlet weak var detalleTF: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func agregarB(_ sender: Any) {
        if emocionTF.text == "" && detalleTF.text == "" {
            let alerta = UIAlertController (title: "Alerta", message: "No hay datos.", preferredStyle: .alert)
            let mensaje = UIAlertAction (title: "Continuar", style: .default)
            alerta.addAction(mensaje)
            self.present ( alerta, animated: true, completion: nil)
        } else {
            let nuevaEmocion = Emocion (emo: emocionTF.text!, deta: detalleTF.text!)
            
            Emocion.emociones.append(nuevaEmocion)
            
            emocionTF.text = ""
            detalleTF.text = ""
            
            let aviso = UIAlertController (title: "Aviso", message: "El dato ha sido agregado", preferredStyle: .alert)
            let sennal = UIAlertAction (title: "Continuar", style: .default)
            aviso.addAction(sennal)
            self.present ( aviso, animated: true, completion: nil)
        }
    }
    @IBAction func listaB(_ sender: Any) {
    }
}

