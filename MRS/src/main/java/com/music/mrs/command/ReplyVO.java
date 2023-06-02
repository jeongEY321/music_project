package com.music.mrs.command;

import java.time.LocalDateTime;

/*
CREATE TABLE reply (
    rno INT PRIMARY KEY AUTO_INCREMENT,
   display_name VARCHAR(250) NOT NULL,
    
   FOREIGN KEY (display_name) 
   REFERENCES users(display_name)
   ON DELETE CASCADE,
   
   reply_content VARCHAR(3000) NOT NULL
);
*/
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReplyVO {
   
   
   
   private int reply_no;
   private String reply_content;
   private LocalDateTime regDate;
   
   

}