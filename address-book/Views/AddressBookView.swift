//
//  AddressBookView.swift
//  address-book
//
//  Created by Giovanna Moeller on 26/03/21.
//

import SwiftUI

struct AddressBookView: View {
    @StateObject private var viewModel = AddressBookViewModel()
    
    @State private var displayFavoriteCount = true
    // From the last section, the AddressBookViewModel has a Published property named addressBook. When the addressBook changes, it will now update the viewModel because of the added StateObject property wrapper. Before you added this attribute, the viewModel didn’t know that it was supposed to be watching for updates from the AddressBookViewModel.
    
    var body: some View {
        VStack {
            Spacer().frame(height: 20.0)
            Text("Address Book").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(Colors.main)
            Spacer().frame(height: 40.0)
            ContactView().environmentObject(viewModel)
            Spacer().frame(height: 20.0)
            
            VStack(alignment: .leading) {
                HStack(alignment: .firstTextBaseline) {
                        if displayFavoriteCount {
                            Text("You have \(viewModel.favoritedContactsCount) favorite" +
                                    (viewModel.favoritedContactsCount != 1 ? "s." : ".")).font(.title3)
                        } else {
                            Text("You have \(viewModel.favoritedContactsCount) favorite" +
                                    (viewModel.favoritedContactsCount != 1 ? "s." : ".")).font(.title3).hidden()
                        }
                    }
                
                HStack {
                    Toggle("Display number of favorites", isOn: $displayFavoriteCount).toggleStyle(SwitchToggleStyle(tint: Colors.main)).font(.body)
                }
            }
            
        }.frame(width: 300.0)
    }
}

struct AddressBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddressBookView()
    }
}
