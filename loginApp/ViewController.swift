//
//  ViewController.swift
//  loginApp
//
//  Created by Cassia Franco on 31/10/20.
//  Copyright © 2020 Cassia Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtLogin: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createFilmes(){
        let film1 = Film(name: "Homem de Ferro", imageName: "homemdeferro", isMyFavorite: true)
        let film2 = Film(name: "Star Wars", imageName: "starwars", isMyFavorite: true)
        let film3 = Film(name: "Ponyo", imageName: "ponyo", isMyFavorite: true)
        let film4 = Film(name: "Jardim de Meteorio", imageName: "jardimdemeteorio", isMyFavorite: true)
        let film5 = Film(name: "Ombro Amigo", imageName: "ombroamigo", isMyFavorite: true)
        let film6 = Film(name: "Kiki delivery service", imageName: "kiki", isMyFavorite: true)
        let film7 = Film(name: "O conto da princesa Kaguya", imageName: "princesakaguya", isMyFavorite: true)
        let film8 = Film(name: "Meu amigo Tororo", imageName: "amigotororo", isMyFavorite: true)
        let film9 = Film(name: "Contos da TerraMar", imageName: "terramar", isMyFavorite: true)
        let film10 = Film(name: "Carole and Tuesday", imageName: "caroletuesday", isMyFavorite: true)
        let film11 = Film(name: "Howl's moving castle", imageName: "castelo", isMyFavorite: true)
        
        DataFilms.films.append(film1)
        DataFilms.films.append(film2)
        DataFilms.films.append(film3)
        DataFilms.films.append(film4)
        DataFilms.films.append(film5)
        DataFilms.films.append(film6)
        DataFilms.films.append(film7)
        DataFilms.films.append(film8)
        DataFilms.films.append(film9)
        DataFilms.films.append(film10)
        DataFilms.films.append(film11)
        
    }

    @IBAction func openAction(_ sender: Any) {
        if (txtLogin.text == "ca" &&
            txtPassword.text == "1234"){
            DataFilms.films.removeAll()
            createFilmes()
            performSegue(withIdentifier: "tela2", sender: self)
            
        }
         else{
            let alert = UIAlertController(title: "Atenção" , message: "Login ou senha inválido", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }

}
