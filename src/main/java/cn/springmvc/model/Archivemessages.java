package cn.springmvc.model;

public class Archivemessages {
    private Long messageid;

    private Long time;

    private String direction;

    private String type;

    private String subject;

    private Long conversationid;

    private String body;

    public Long getMessageid() {
        return messageid;
    }

    public void setMessageid(Long messageid) {
        this.messageid = messageid;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public Long getConversationid() {
        return conversationid;
    }

    public void setConversationid(Long conversationid) {
        this.conversationid = conversationid;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
}