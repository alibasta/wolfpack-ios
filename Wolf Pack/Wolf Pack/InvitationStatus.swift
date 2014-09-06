//
//  InvitationStatus.swift
//  Wolf Pack
//
//  Created by Sean Hess on 9/5/14.
//  Copyright (c) 2014 Orbital Labs. All rights reserved.
//

import Foundation

class InvitationStatus {
    var child: MOChild
    var invited: Bool
    var accepted: Bool
    
    init(child:MOChild, invited:Bool, accepted:Bool) {
        self.child = child
        self.invited = invited
        self.accepted = accepted
    }
}