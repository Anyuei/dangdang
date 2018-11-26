package dangdang.beans;

import java.io.Serializable;
import java.util.Date;
/**
 * Comment.java
 * @author anyunpei
 *2018��10��22������9:36:47
 * ��������bean
 */
public class Comment implements Serializable{
	private String pId;//��Ʒid
	private String uId;//�û�id
	private String comment;//����
	private Date commentTime;//����ʱ��
	public Comment() {
	}
	public String getUId() {
		return uId;
	}
	public void setUId(String uId) {
		this.uId = uId;
	}
	public String getPId() {
		return pId;
	}
	public void setPId(String pId) {
		this.pId = pId;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	@Override
	public String toString() {
		return "Comment [uId=" + uId + ", pId=" + pId + ", comment=" + comment + ", commentTime=" + commentTime + "]";
	}
	public Comment(String uId, String pId, String comment, Date commentTime) {
		super();
		this.uId = uId;
		this.pId = pId;
		this.comment = comment;
		this.commentTime = commentTime;
	}

}
