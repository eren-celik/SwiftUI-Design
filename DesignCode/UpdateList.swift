//
//  UptadeList.swift
//  DesignCode
//
//  Created by Eren  Çelik on 16.01.2021.
//

import SwiftUI

struct UpdateList: View {
    
    @ObservedObject var store = UpdateStore()
    
    func addUpdate() {
        store.updates.append(Update(image: "Card6", title: "React Native for Designers", text: "Build your own iOS and Android app with custom animations, Redux and API data.", date: "FEB 14"))
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(store.updates) { updates in
                    NavigationLink(
                        destination: UpdateDetail(update: updates),
                        label: {
                            HStack {
                                Image(updates.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width : 60 , height : 60)
                                    .background(Color.black)
                                    .cornerRadius(20)
                                    .padding(.trailing, 4.0)
                                    
                                VStack(alignment: .leading){
                                    Text(updates.title)
                                        .font(.system(size: 20, weight: .bold))
                                    Text(updates.text)
                                        .lineLimit(2)
                                        .font(.subheadline)
                                        .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                    Text(updates.date)
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            }.padding(.vertical , 8)
                    })
                }
                .onDelete{ index in
                    self.store.updates.remove(at : index.first!)
                }
                .onMove { (source : IndexSet , destination : Int ) in
                    self.store.updates.move(fromOffsets: source, toOffset: destination)
                }
            }
            .navigationTitle("Update")
            .navigationBarItems(
                leading: Button(action: { addUpdate() }, label: {
                    Text("Add Update ")
                }),
                trailing: EditButton()
            )
        }
    }
}

struct UptdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}


struct Update : Identifiable{
    var id = UUID()
    let image: String
    let title : String
    let text : String
    let date : String
}
let updateData = [
    Update(image: "Card1", title: "SwiftUI Advanced", text: "Take your SwiftUI app to the App Store with advanced techniques like API data, packages and CMS.", date: "JAN 1"),
    Update(image: "Card2", title: "Webflow", text: "Design and animate a high converting landing page with advanced interactions, payments and CMS", date: "OCT 17"),
    Update(image: "Card3", title: "ProtoPie", text: "Quickly prototype advanced animations and interactions for mobile and Web.", date: "AUG 27"),
    Update(image: "Card4", title: "SwiftUI", text: "Learn how to code custom UIs, animations, gestures and components in Xcode 11", date: "JUNE 26"),
    Update(image: "Card5", title: "Framer Playground", text: "Create powerful animations and interactions with the Framer X code editor", date: "JUN 11")
]


