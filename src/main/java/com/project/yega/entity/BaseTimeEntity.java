package com.project.yega.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class BaseTimeEntity {

    @CreatedDate
    @Column(name = "CREATE_DT", nullable = false)
    private LocalDateTime createDt;

    @LastModifiedDate
    @Column(name = "UPDATE_DT", nullable = true)
    private LocalDateTime updateDt;

    public LocalDateTime getCreatDt() {
        return createDt;
    }

    public LocalDateTime getUpdateDt() {
        return updateDt;
    }
}