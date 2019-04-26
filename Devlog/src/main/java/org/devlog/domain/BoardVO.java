package org.devlog.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

  private Long bno;
  private String title;
  private String content;
  private String writer;
  private String email;
  private Date regdate;
  private Date updateDate;
  private String password;
  private int viewCnt;
}
