//
//  ViewController.swift
//  GenericNetworkLayer
//
//  Created by Ugur Hamzaoglu on 9.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let homeVM = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData() {
        // GET POST
        homeVM.fetchPosts()
        
        // CREATE POST
        homeVM.addPosts(userId: 123123,
                        title: "HASAN OSMAN",
                        desc: "qwemqwnejqwejhqwjheqwhjejhqwe lorem ipsun dolar sit amet")
    }
    
}

