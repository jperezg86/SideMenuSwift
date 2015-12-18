//
//  MenuTableView.swift
//  SideMenu
//
//  Created by Jose Manuel Perez on 12/1/15.
//  Copyright © 2015 tecprosolutions. All rights reserved.
//

import Foundation

class MenuTableView: UITableViewController {
    var collapsibleSection = Set<MenuItem>()
    var sections  = [SectionMenu]()
    var seccion1 = [MenuItem]()
    var seccion2 = [MenuItem]()
    var configSection = [MenuItem]()
    
    override func viewDidLoad() {
        seccion1 = [MenuItem(title: "Mi Perfil", imageName: "user"),
                    MenuItem(title:"Recompensas", imageName: "recompensa"),
                    MenuItem(title:"Recomendaciones", imageName: "recomendaciones"),
        ]
        seccion2 = [ MenuItem(title:"Inicio", imageName: "home"),
                     MenuItem(title:"Explorar", imageName: "explorar"),
                     MenuItem(title:"Trendy", imageName: "trendy"),
                     MenuItem(title:"Evento", imageName: "eventos"),
                     MenuItem(title:"Cupones", imageName: "cupones"),
                     MenuItem(title:"Guía", imageName: "guia")]
        
        configSection = [MenuItem(title:"Editar Perfil", imageName: "home"),
                         MenuItem(title:"Configuración", imageName: "explorar"),
                         MenuItem(title:"Información", imageName: "trendy"),
                         MenuItem(title:"Salir", imageName: "eventos")]
        
        self.sections = [SectionMenu(title: "configuracion", items: self.configSection),
                         SectionMenu(title: "seccion1", items: self.seccion1),
                         SectionMenu(title: "seccion2", items: self.seccion2)]
        
        let headerView  = MenuHeaderView(frame: CGRect(x: 0.0, y: 0.0, width: 380, height: 130))
        self.tableView.tableHeaderView = headerView

    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1;
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return self.sections[section].sectionTitle
        return ""
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sections[section].items!.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let menuItem = self.sections[indexPath.section].items![indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        if indexPath.section == 0 {
               cell.backgroundColor =  UtilFunctions.UIColorFromRGB(0xF5F5F5)
        }

        cell.imageView?.image = menuItem.image
        cell.textLabel?.text = menuItem.title
        return cell
    }
}

class SectionMenu : NSObject{
    var sectionTitle : String?
    var items : [MenuItem]?
    init (title: String,items: [MenuItem]){
        super.init()
        self.sectionTitle = title
        self.items = items
    }
}


class MenuItem : NSObject{
    
    var image : UIImage?
    var title : String?
    var imageName: String?
    
    init (title : String, imageName: String){
        super.init()
        self.title = title
        self.imageName = imageName
        self.image = UIImage(named: self.imageName!)!
    }
    
}
