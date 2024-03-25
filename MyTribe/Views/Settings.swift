//
//  Settings.swift
//  MyTribe
//
//  Created by J. DeWeese on 3/22/24.
//

import SwiftUI

struct Settings: View {
    @State private var showProfile = false
    
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Color.black.opacity(0.1)
                        .ignoresSafeArea()
                        VStack{
                        
                            VStack(alignment: .leading) {
                            HStack{
                                Image(systemName: "arrow.left")
                                    .foregroundStyle(.primary)
                                Spacer()
                                Text("App Settings")
                                    .foregroundStyle(.primary)
                                    .fontDesign(.serif)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                Spacer()
                                Image("nullProfile")
                                    .resizable()
                                    .frame(width: 42, height: 42)
                                    .clipShape(Circle())
                                
                            }
                            .padding(.horizontal)
                            HStack{
                                Text("Vision")
                                    .foregroundStyle(.primary)
                                    .fontDesign(.serif)
                                    .fontWeight(.semibold)
                                    .font(.title3)
                                Text("Discipline")
                                    .foregroundStyle(.secondary)
                                    .fontDesign(.serif)
                                    .fontWeight(.semibold)
                                    .font(.callout)
                            }
                            Spacer()
                        }.frame(width: UIScreen.main.bounds.width * 0.96, height: 80)
                     
                           
                            ScrollView(.vertical) {
                              LazyVStack {
                                  
                                  NavigationLink {
                                   
                                  } label: {
                                      HeroSectionHeader().foregroundStyle(.blue)
                                  }
                                  
                                  VStack{
                                      Section("All your Shit") {
                                          SettingsRowView(systemName: "archivebox", details: "Collections", navName: "chevron.right")
                                              .padding(3).foregroundStyle(.blue)
                                      }
                                      .fontDesign(.serif)
                                      .fontWeight(.semibold)
                                      .padding(.horizontal)
                                      
                                      Section("Function"){
                                      SettingsRowView(systemName: "bell.badge.waveform", details: "Notifications", navName: "chevron.right").foregroundStyle(.blue)
                                      SettingsRowView(systemName: "paintbrush", details: "Theme", navName: "chevron.right").foregroundStyle(.blue)
                                          
                                         
                                      SettingsRowView(systemName: "square.and.arrow.up", details: "Export", navName: "chevron.right").foregroundStyle(.blue)
                                      SettingsRowView(systemName: "square.and.arrow.down", details: "Import", navName: "chevron.right").foregroundStyle(.blue)
                                  }
                                      .fontDesign(.serif)
                                      .fontWeight(.semibold)
                                      .padding(.horizontal)
                                      
                                      Section("Got Your Six") {
                                          SettingsRowView(systemName: "info.circle", details: "Help Center", navName: "chevron.right").foregroundStyle(.blue)
                                             
                                          SettingsRowView(systemName: "network.badge.shield.half.filled", details: " Privacy/Security", navName: "chevron.right").foregroundStyle(.blue)
                                          
                                          SettingsRowView(systemName: "envelope", details: "Contact Us", navName: "chevron.right").foregroundStyle(.blue)
                                          SettingsRowView(systemName: "gear", details: "Manage Account", navName: "chevron.right").foregroundStyle(.blue)
                                      }
                                  }
                                  .fontDesign(.serif)
                                  .fontWeight(.semibold)
                                  .padding(.horizontal)
                                }
                            }
                        
                            Text("Version 1.0.0      ©️2124 InclinedTactics")
                                .font(.footnote)
                                .foregroundStyle(.gray.opacity(0.5))
                            Spacer()
                    }
                        
                }
            }
            .navigationBarHidden(true)
        
        }
       
    }
}
        
#Preview {
    Settings()
}
