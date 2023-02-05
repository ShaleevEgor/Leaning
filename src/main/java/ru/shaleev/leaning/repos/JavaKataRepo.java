package ru.shaleev.leaning.repos;

import ru.shaleev.leaning.domain.JavaKata;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface JavaKataRepo extends CrudRepository<JavaKata, Long> {

    List<JavaKata> findByTag(String tag);

}