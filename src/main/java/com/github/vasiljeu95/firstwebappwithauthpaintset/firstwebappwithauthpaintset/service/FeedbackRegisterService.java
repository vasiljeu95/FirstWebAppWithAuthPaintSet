package com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.service;

import com.github.vasiljeu95.firstwebappwithauthpaintset.firstwebappwithauthpaintset.repository.FeedbackRepository;

public class FeedbackRegisterService {
    public static boolean feedbackRegistration (String name, String email, String phone) {
        return FeedbackRepository.checkFeedbackReg(name, email, phone);
    }
}
