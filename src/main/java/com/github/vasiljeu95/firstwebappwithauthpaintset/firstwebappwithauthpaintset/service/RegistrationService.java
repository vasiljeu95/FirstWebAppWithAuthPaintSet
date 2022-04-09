package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.service;

import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.repository.RegistrationRepository;

public class RegistrationService {
    public static boolean register(String login, String password) {
        return RegistrationRepository.register(login, password);
    }
}
