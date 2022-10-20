package com.project.yega.board.web;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.yega.entity.BoardContentEntity;

@Repository
public interface BoardContentRepository extends JpaRepository<BoardContentEntity,Integer> {
}
