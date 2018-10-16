package dangdang.beans;
/**
 * ImgPath.java
 * @author anyunpei
 *2018年10月14日下午2:15:50
 *存储图片id与存储路径的关系
 */
public class ImgPath {
	private String imgPath_Id;
	private String imgPath;
	public String getImgPath_Id() {
		return imgPath_Id;
	}
	public void setImgPath_Id(String imgPath_Id) {
		this.imgPath_Id = imgPath_Id;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String toString() {
		return "ImgPath [imgPath_Id=" + imgPath_Id + ", imgPath=" + imgPath + "]";
	}
	public ImgPath(String imgPath_Id, String imgPath) {
		super();
		this.imgPath_Id = imgPath_Id;
		this.imgPath = imgPath;
	}
	public ImgPath() {
		super();

	}
	
}
