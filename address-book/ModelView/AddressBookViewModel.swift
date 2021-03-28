//
//  AddressBookViewModel.swift
//  address-book
//
//  Created by Giovanna Moeller on 27/03/21.
//

import Foundation

class AddressBookViewModel: ObservableObject { // The compiler knows that it may publish changes. When it does, the viewModel will be updated because it is marked with the @EnvironmentObject property wrapper.
    @Published var addressBook = AddressBook() // Tell observing views what properties (inside classes) will change and then send them the changed values which will update any relevant views.
    
    var contactCount: Int {
        addressBook.numberOfContacts
    }
    
    var favoritedContactsCount: Int {
        addressBook.numberOfFavorites
    }
    
    func toggleFavorite(atIndex index: Int) {
        addressBook.toggleFavorite(atIndex: index)
    }
    
    func contact(atIndex index: Int) -> Contact {
        addressBook.contact(atIndex: index)
    }
}
