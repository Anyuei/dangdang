package dangdang.beans;

import java.io.Serializable;
import java.util.List;

/**
 * ImgPath.java
 * @author anyunpei
 *2018年10月14日下午2:15:50
 *存储图片id与存储路径的关系
 */
public class ImgPath implements Serializable{
	private String imgPath_Id;
	private List<String> imgPaths;
	
	public ImgPath() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ImgPath(String imgPath_Id, List<String> imgPaths) {
		super();
		this.imgPath_Id = imgPath_Id;
		this.imgPaths = imgPaths;
	}
	public String getImgPath_Id() {
		return imgPath_Id;
	}
	public void setImgPath_Id(String imgPath_Id) {
		this.imgPath_Id = imgPath_Id;
	}
	public List<String> getImgPaths() {
		return imgPaths;
	}
	public void setImgPaths(List<String> imgPaths) {
		this.imgPaths = imgPaths;
	}
	@Override
	public String toString() {
		return "ImgPath [imgPath_Id=" + imgPath_Id + ", imgPaths=" + imgPaths + "]";
	}

}
