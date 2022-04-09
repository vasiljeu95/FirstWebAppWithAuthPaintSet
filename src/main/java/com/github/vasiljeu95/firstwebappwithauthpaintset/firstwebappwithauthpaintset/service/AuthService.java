package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.service;

import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.repository.AuthRepository;

public class AuthService {
    public static boolean checkAuth (String login, String password) {
        return AuthRepository.checkAuth(login, password);
    }
}
