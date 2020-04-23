package com.lade.Service;

import com.lade.Entity.User;

import java.util.Scanner;


public class UserService {

    Scanner sc = new Scanner(System.in);





    public void registration() {
        User user = new User();

        System.out.println("quel est votre nom ?:");
        user.setName(sc.nextLine());
        System.out.println("prénom ?:");
        user.setFirstName(sc.nextLine());
        System.out.println("Email ?:");
        System.out.println("Pseudo ?:");
        System.out.println("Mot de passe ?:");

    }


}
