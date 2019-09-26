package com.Cablewalker.repos;

import com.Cablewalker.domain.Message;
import com.Cablewalker.domain.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);
    List<Message> findByAuthor(User author);
}