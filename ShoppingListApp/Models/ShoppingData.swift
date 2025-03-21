//
//  ShoppingData.swift
//  ShoppingListApp
//
//  Created by Christian Do on 2/23/25.
//
import UIKit

struct ShoppingData {
    static var groups: [ShoppingGroup] = [
        ShoppingGroup(name: "Apple", items: [
            ShoppingItem(name: "Green Apple", price: 1.50, imageName: "green_apple", taxGroup: .standard, category: "Apple"),
            ShoppingItem(name: "Organic Apple", price: 1.75, imageName: "organic_apple", taxGroup: .standard, category: "Apple")
        ], iconName: "apple_icon"),
        ShoppingGroup(name: "Laptop", items: [
            ShoppingItem(name: "Apple", price: 1200.00, imageName: "apple_laptop", taxGroup: .standard, category: "Laptop"),
            ShoppingItem(name: "Dell", price: 1000.00, imageName: "dell", taxGroup: .standard, category: "Laptop"),
            ShoppingItem(name: "Lenovo", price: 900.00, imageName: "lenovo", taxGroup: .standard, category: "Laptop"),
            ShoppingItem(name: "HP", price: 850.00, imageName: "hp", taxGroup: .standard, category: "Laptop"),
            ShoppingItem(name: "Asus", price: 800.00, imageName: "asus", taxGroup: .standard, category: "Laptop")
        ], iconName: "laptop_icon"),
        ShoppingGroup(name: "Health", items: [
            ShoppingItem(name: "Shampoo", price: 8.99, imageName: "shampoo", taxGroup: .reduced8, category: "Health"),
            ShoppingItem(name: "Conditioner", price: 9.99, imageName: "conditioner", taxGroup: .reduced8, category: "Health"),
            ShoppingItem(name: "Bodywash", price: 7.99, imageName: "bodywash", taxGroup: .reduced8, category: "Health"),
            ShoppingItem(name: "Lotion", price: 5.99, imageName: "lotion", taxGroup: .reduced8, category: "Health"),
            ShoppingItem(name: "Hand Soap", price: 3.99, imageName: "hand_soap", taxGroup: .reduced8, category: "Health")
        ], iconName: "health_icon")
    ]

    // Method to add a new group
    static func addGroup(group: ShoppingGroup) {
        groups.append(group)
    }
    
    // Method to update an existing group
    static func updateGroup(oldGroupName: String, newGroup: ShoppingGroup) {
        if let groupIndex = groups.firstIndex(where: { $0.name == oldGroupName }) {
            groups[groupIndex] = newGroup
        }
    }

    // Method to delete a group
    static func deleteGroup(groupName: String) {
        if let groupIndex = groups.firstIndex(where: { $0.name == groupName }) {
            groups.remove(at: groupIndex)
        }
    }
    
    // Method to add a new item to a specific group
    static func addItem(to groupName: String, item: ShoppingItem) {
        if let index = groups.firstIndex(where: { $0.name == groupName }) {
            groups[index].items.append(item)
        }
    }
    
    // Method to update an existing item in a group
    static func updateItem(in groupName: String, itemName: String, newItem: ShoppingItem) {
        if let groupIndex = groups.firstIndex(where: { $0.name == groupName }) {
            if let itemIndex = groups[groupIndex].items.firstIndex(where: { $0.name == itemName }) {
                groups[groupIndex].items[itemIndex] = newItem
            }
        }
    }

    // Method to delete an item from a group
    static func deleteItem(from groupName: String, itemName: String) {
        if let groupIndex = groups.firstIndex(where: { $0.name == groupName }) {
            if let itemIndex = groups[groupIndex].items.firstIndex(where: { $0.name == itemName }) {
                groups[groupIndex].items.remove(at: itemIndex)
            }
        }
    }
}
