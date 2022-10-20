package com.project.yega.board.web;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.yega.entity.BoardEntity;

@Repository
public interface BoardRepository extends CrudRepository<BoardEntity,Integer> {
}
