package com.music.mrs.reply.service;

import java.util.List;
import java.util.Map;

import com.music.mrs.command.ReplyVO;
import com.music.mrs.command.UserVO;

public interface IReplyService {

	// 댓글 등록
    void replyRegist(ReplyVO vo,String uservo);
    
    // 목록 요청
    List<ReplyVO> getList(Map<String, Object> data);
    
    // 댓글 수정
    void update(ReplyVO vo);
    
    // 댓글 삭제
    void delete(int rno);
	
}
