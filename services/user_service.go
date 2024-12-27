package services

import "go-starter/models"

type UserService struct {
}

func NewUserService() *UserService {
	return &UserService{}
}

func (s *UserService) Get(id uint) (*models.User, error) {
	return &models.User{
		ID:        id,
		Email:     "test@example.com",
		FirstName: "John",
		LastName:  "Doe",
	}, nil
}
