package cn.springmvc.mapper;

import cn.springmvc.model.Archivemessages;

public interface ArchivemessagesMapper {

    int deleteByPrimaryKey(Long messageid);

    int insert(Archivemessages record);

    int insertSelective(Archivemessages record);

    Archivemessages selectByPrimaryKey(Long messageid);

    int updateByPrimaryKeySelective(Archivemessages record);

    int updateByPrimaryKeyWithBLOBs(Archivemessages record);

    int updateByPrimaryKey(Archivemessages record);
}