package dangdang.beans;

import java.util.List;
/**
 * DangComments.java
 * @author anyunpei
 *2018年10月14日下午6:22:30
 *
 */
public class DangComments {
	private String commentId;
	private List<Comment> comments;
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {

		this.commentId = commentId;
	}
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "DangComments [commentId=" + commentId + ", comments=" + comments + "]";
	}
	public DangComments(String commentId, List<Comment> comments) {
		super();
		this.commentId = commentId;
		this.comments = comments; 
	}
	public DangComments() {
		super();
	}
	
}
