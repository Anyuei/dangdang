package dangdang.beans;

import java.io.Serializable;
import java.util.List;

/**
 * Category.java
 * 
 * @author anyunpei 2018年10月19日下午8:39:23 封装了类别实体bean
 */
public class Category implements Serializable {
	private String categoryID;
	private String categoryName;
	private String father_categorieID;
	private List<Category> child_categories;

	public Category() {
		super();
	}

	public Category(String categoryID, String categoryName, List<Category> child_categories,
			String father_categorieID) {
		super();
		this.categoryID = categoryID;
		this.categoryName = categoryName;
		this.child_categories = child_categories;
		this.father_categorieID = father_categorieID;
	}

	public String getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public List<Category> getChild_categories() {
		return child_categories;
	}

	public void setChild_categories(List<Category> child_categories) {
		this.child_categories = child_categories;
	}

	public String getFather_categorieID() {
		return father_categorieID;
	}

	public void setFather_categorieID(String father_categorieID) {
		this.father_categorieID = father_categorieID;
	}

	@Override
	public String toString() {
		return "Category [categoryID=" + categoryID + ", categoryName=" + categoryName + ", child_categories="
				+ child_categories + ", father_categorieID=" + father_categorieID + "]";
	}

}
