package com.Cablewalker.repos;

import com.Cablewalker.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String userName);
    List<User> findAllByUsername(String userName);
    User findByActivationCode(String code);
}
