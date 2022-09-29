package com.project.yega.VO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Data
@Getter
@Setter
@ToString
public class SampleVO {
    private String id;
    private String name;
    private String code;

    public String getId(){
        return this.id;
    }

}
