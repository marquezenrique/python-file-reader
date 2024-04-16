package main

import (
    "errors"
    "fmt"
    "time"
)

type User struct {
    ID       int
    Username string
    Email    string
    IsAdmin  bool
}

var mockUserListExampleGo = []User{
    {ID: 1, Username: "Alice", Email: "alice@example.com", IsAdmin: false},
    {ID: 2, Username: "Bob", Email: "bob@example.com", IsAdmin: true},
    {ID: 3, Username: "Charlie", Email: "charlie@example.com", IsAdmin: false},
    {ID: 4, Username: "Diana", Email: "diana@example.com", IsAdmin: true},
    {ID: 5, Username: "Evan", Email: "evan@example.com", IsAdmin: false},
    {ID: 6, Username: "Fiona", Email: "fiona@example.com", IsAdmin: true},
    {ID: 7, Username: "George", Email: "george@example.com", IsAdmin: false},
    {ID: 8, Username: "Hannah", Email: "hannah@example.com", IsAdmin: true},
    {ID: 9, Username: "Ian", Email: "ian@example.com", IsAdmin: false},
    {ID: 10, Username: "Jenna", Email: "jenna@example.com", IsAdmin: true},
}

func fetchUserDataExampleGo(userID int) (User, error) {
    for _, user := range mockUserListExampleGo {
        if user.ID == userID {
            return user, nil
        }
    }
    return User{}, errors.New("User not found")
}

func main() {
    userID := 1
    user, err := fetchUserDataExampleGo(userID)
    if err != nil {
        fmt.Println("Error fetching user data:", err)
        return
    }
    fmt.Println("User data:", user)
}
