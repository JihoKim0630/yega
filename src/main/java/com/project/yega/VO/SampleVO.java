package com.project.yega.VO;

import lombok.Data;

@Data
public class SampleVO {
    private String id;
    private String name;
    private String code;

    public String getId(){
        return this.id;
    }

}
