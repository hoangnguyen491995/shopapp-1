package com.example.ott_fe.entity;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.experimental.SuperBuilder;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.util.Date;

@Data
@MappedSuperclass
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@SuperBuilder
public abstract class BaseEntity {

    @Column()
    @CreatedBy
    String createdBy;

    @Column()
    @LastModifiedBy
    String modifiedBy;

    @Column()
    @CreatedDate
    Date created_date;

    @Column()
    @LastModifiedDate
    Date updated_date;

    @PrePersist
    void preInsert() {
        this.created_date = new Date();
        this.createdBy = "Hoang Nguyen";
    }

    @PreUpdate
    void preUpdate() {
        this.updated_date = new Date();
        this.modifiedBy = "Hoang Nguyen";
    }
}
