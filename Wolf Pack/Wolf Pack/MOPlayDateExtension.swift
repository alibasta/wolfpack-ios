//
//  MOPlayDateExtension.swift
//  Wolf Pack
//
//  Created by Matt Berteaux on 9/5/14.
//  Copyright (c) 2014 Orbital Labs. All rights reserved.
//




import CoreData

extension MOPlayDate {
    class func create(date: NSDate, location: String, owner: MOUser) -> MOPlayDate {
        var playDate = NSEntityDescription.insertNewObjectForEntityForName("PlayDate", inManagedObjectContext: ModelUtil.defaultMOC) as MOPlayDate
        playDate.date = date
        playDate.location = location
        playDate.owner = owner

        return playDate
    }
    
    func addInvitationChild(child:MOChild) -> MOInvitation {
        return MOInvitation.create(child, status: MOInvitationStatusInvited, playDate: self)
    }
    
    func findInvitation(child:MOChild) -> MOInvitation? {
        for element in self.invitations {
            if let invitation = element as? MOInvitation {
                if invitation.child.id == child.id {
                    return invitation
                }
            }
        }
        return nil
    }
    
    class func requestAll() -> NSFetchRequest {
        var request = NSFetchRequest(entityName: "PlayDate")
        var sort = NSSortDescriptor(key: "id", ascending: true)
        request.sortDescriptors = [sort]
        return request
    }
    
    class func send(playDate:MOPlayDate, invitations:[MOInvitation]) {
        
    }
}
