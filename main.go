package main

import (
	"fmt"
	"go-starter/services"
)

func main() {
	userService := services.NewUserService()

	user, err := userService.Get(1)
	if err != nil {
		panic(err)
	}

	fmt.Printf("Found user: %s %s\n", user.FirstName, user.LastName)
}
