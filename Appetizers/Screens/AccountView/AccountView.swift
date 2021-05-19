//
//  AccountView.swift
//  Appetizers
//
//  Created by Katerina Utlik on 4/7/21.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
//                    DatePicker("Birthday",
//                               selection: $viewModel.user.birthday,
//                               displayedComponents: .date)
                    
                    DatePicker("Birthday",
                               selection: $viewModel.user.birthday,
                               in: Date().oneHundredTenYearsAgo...Date().eighteenYearsAgo,
                               displayedComponents: .date)
                    
                    Button("Save Changes") {
                        viewModel.saveChanges()
                    }
                }
                Section(header: Text("Requests")) {
                    Toggle(isOn: $viewModel.user.extraNapkins, label: {
                        Text("Extra Napkins")
                    })
                    
                    Toggle(isOn: $viewModel.user.frequentRefills, label: {
                        Text("Frequent Refills")
                    })
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .accentColor(.brandPrimary)
            .navigationTitle("🤓 Account")
            .onAppear {
                viewModel.retrieveUser()
            }
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

