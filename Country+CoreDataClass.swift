//
//  Country+CoreDataClass.swift
//  Core Data
//
//  Created by Nick Rice on 27/07/2021.
//
//

import Foundation
import CoreData

@objc(Country)
public class Country: NSManagedObject {
    
    public var wrappedShortName: String { shortName ?? "Unknown Country" }
    
    public var wrappedFullName: String { fullName ?? "Unknown Country" }
    
    public var candyArray: [Candy] {
        (candy as? Set<Candy> ?? []).sorted { $0.wrappedName < $1.wrappedName }
    }

}
