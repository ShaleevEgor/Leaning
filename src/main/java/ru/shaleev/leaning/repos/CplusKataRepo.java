package ru.shaleev.leaning.repos;

import org.springframework.data.repository.CrudRepository;
import ru.shaleev.leaning.domain.CplusKata;

import java.util.List;

public interface CplusKataRepo extends CrudRepository<CplusKata, Long> {

     List<CplusKata> findByTag(String tag);
}