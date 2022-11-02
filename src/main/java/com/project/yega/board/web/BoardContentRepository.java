package com.project.yega.board.web;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.yega.entity.BoardContentEntity;

@Repository
public interface BoardContentRepository extends JpaRepository<BoardContentEntity,Integer> {
	Page<BoardContentEntity> findByBoardId(int boardId, Pageable pageable);
	
	@Query(nativeQuery = true, value="UPDATE BOARD_CONTENT SET LOOK_UP_CNT = LOOK_UP_CNT+1 WHERE CONTENT_SEQ=:contentSeq")
	BoardContentEntity updateLookupCnt(@Param("contentSeq") int contentSeq);
}
