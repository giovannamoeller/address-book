//
//  ContactView.swift
//  address-book
//
//  Created by Giovanna Moeller on 26/03/21.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        ZStack {
            VStack {
                ForEach(0..<4) { index in
                    HStack {
                        //Image()
                        VStack(alignment: .leading) {
                            Text("Alexis")
                                .font(.title2).bold()
                                Text("Postal Code: 10012")
                                    .font(.body)
                            }
                            Image(systemName: "star").font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }.frame(width: 360.0, height: 100.0)
                    .background(Color.white)
                    .cornerRadius(16.0)
                    .shadow(color: Colors.shadowColor1, radius: 1.44, x: 0, y: 0.54)
                    .shadow(color: Colors.shadowColor1, radius: 2.82, x: 0, y: 2.33)
                    .shadow(color: Colors.shadowColor1, radius: 5.07, x: 0, y: 5.67)
                    .shadow(color: Colors.shadowColor2, radius: 9.16, x: 0, y: 10.82)
                    .shadow(color: Colors.shadowColor2, radius: 16.04, x: 0, y: 18.08)
                    .shadow(color: Colors.shadowColor2, radius: 26.67, x: 0, y: 27.71)
                    .shadow(color: Colors.shadowColor3, radius: 42, x: 0, y: 40)
                    Spacer().frame(height: 45.0)
                    
                }
            }
           
        }
        
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
