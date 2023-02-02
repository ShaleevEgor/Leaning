package ru.shaleev.leaning.repos;

import org.springframework.data.repository.CrudRepository;
import ru.shaleev.leaning.domain.PythonKata;

import java.util.List;

public interface PythonKataRepo extends CrudRepository<PythonKata, Long> {

    List<PythonKata> findByTag(String tag);

}