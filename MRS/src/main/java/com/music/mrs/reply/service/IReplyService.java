package com.music.mrs.reply.service;

import java.util.List;
import java.util.Map;

import com.music.mrs.command.ReplyVO;

public interface IReplyService {

	// 댓글 등록
    void replyRegist(ReplyVO vo);
    
    // 목록 요청
    List<ReplyVO> getList(Map<String, Object> data);
    
    // 댓글 수정
    void update(ReplyVO vo);
    
    // 댓글 삭제
    void delete(int rno);
	
}
