//
//  ContactView.swift
//  address-book
//
//  Created by Giovanna Moeller on 26/03/21.
//

import SwiftUI

struct ContactView: View {
    @EnvironmentObject var viewModel: AddressBookViewModel
    // This view watches AddressBookViewModel due to EnvironmentObject
    var body: some View {
        ZStack {
            VStack {
                ForEach(0..<viewModel.contactCount) { index in
                    HStack {
                        let contact = viewModel.contact(atIndex: index)
                        Image(contact.image).resizable().scaledToFit()
                            .frame(width: 56, height: 56)
                        VStack(alignment: .leading) {
                            Text("\(contact.name)")
                                .font(.title3).bold()
                            Text("\(contact.displayPostalCode)")
                                    
                        }.padding()
                        Button(action: {
                            viewModel.toggleFavorite(atIndex: index)
                        }) {
                            contact.isFavorite ? Image(systemName: "star.fill") :
                                Image(systemName: "star")
                        }.font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/).foregroundColor(Colors.main)
                            
                    }.frame(width: 300.0, height: 90.0)
                    .background(Color.white)
                    .cornerRadius(16.0)
                    .shadow(color: Colors.shadow1, radius: 1.44, x: 0, y: 0.54)
                    .shadow(color: Colors.shadow1, radius: 2.82, x: 0, y: 2.33)
                    .shadow(color: Colors.shadow1, radius: 5.07, x: 0, y: 5.67)
                    .shadow(color: Colors.shadow2, radius: 9.16, x: 0, y: 10.82)
                    .shadow(color: Colors.shadow2, radius: 16.04, x: 0, y: 18.08)
                    .shadow(color: Colors.shadow2, radius: 26.67, x: 0, y: 27.71)
                    .shadow(color: Colors.shadow3, radius: 42, x: 0, y: 40)
                    Spacer().frame(height: 40.0)
                    
                }
            }
        }
        
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView().environmentObject(AddressBookViewModel()) // You added in the EnvironmentObject, but you didn’t pass down the AddressBookViewModel from its parent (or a more distant ancestor). The environmentObject modifier will resolve this error. Go to the AddressBookView.swift and add the modifier:
    }
}
