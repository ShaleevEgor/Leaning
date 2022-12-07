package ru.shaleev.leaning.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.shaleev.leaning.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}