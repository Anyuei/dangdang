package dangdang.beans;

import java.io.Serializable;
import java.util.Date;

public class Comment implements Serializable{
	private String uId;//用户id
	private String pId;//产品id
	private String comment;//评论
	private Date commentTime;//评论时间
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
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
}
