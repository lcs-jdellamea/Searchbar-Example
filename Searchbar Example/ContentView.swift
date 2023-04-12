//
//  ContentView.swift
//  Searchbar Example
//
//  Created by Jack Dellamea on 4/12/23.
//

import SwiftUI

struct ContentView: View {
   
    //MARK: Stored properties
    
    // The list of items to show
    @State var items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    // The search term the user has provided
    @State var searchText = ""
    
    //MARK: Computed properties
   
    // The possibly-filtered array of items
    
    var body: some View {
        
        NavigationView {
            
            VStack {
            
                Text("Searching on:\(searchText)")
                
                List(items, id: \.self) { currentItem in Text(currentItem)}
            
                }
        .searchable(text: $searchText)
        
            }
        }

    
    }

