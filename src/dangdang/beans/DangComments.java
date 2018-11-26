package dangdang.beans;

import java.util.List;
/**
 * DangComments.java
 * @author anyunpei
 *2018��10��14������6:22:30
 *	����bean ��������Ϣӳ��bean
 */
public class DangComments {
	private String commentId;
	private List<Comment> comments;
	public DangComments() {
		super();
	}
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
}
