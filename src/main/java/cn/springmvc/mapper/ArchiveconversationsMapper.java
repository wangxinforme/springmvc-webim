package cn.springmvc.mapper;

import cn.springmvc.model.Archiveconversations;

public interface ArchiveconversationsMapper {
    int deleteByPrimaryKey(Long conversationid);

    int insert(Archiveconversations record);

    int insertSelective(Archiveconversations record);

    Archiveconversations selectByPrimaryKey(Long conversationid);

    int updateByPrimaryKeySelective(Archiveconversations record);

    int updateByPrimaryKey(Archiveconversations record);
}