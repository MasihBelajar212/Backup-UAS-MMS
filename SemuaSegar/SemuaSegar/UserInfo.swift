//
//  UserInfo.swift
//  SemuaSegar
//
//  Created by made on 07/02/23.
//

import CoreData

@objc(Akun)

class Akun : NSManagedObject{
    @NSManaged var username : String!
    @NSManaged var password : String!
}
