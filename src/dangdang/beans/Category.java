package dangdang.beans;

import java.io.Serializable;
import java.util.List;

public class Category implements Serializable {
	 private String categoryID;
	 private String categoryName;
	 private List<Category> child_categories;
	 private String father_categorieID;
	public Category() {
		super();
		// TODO Auto-generated constructor stub
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
