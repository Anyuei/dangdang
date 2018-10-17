package dangdang.test;
import java.util.List;

import org.junit.jupiter.api.Test;
import dangdang.beans.Category;
import dangdang.dao.CategoryDao;
import dangdang.utils.MybatisUtil;

public class CategoryDaoTest {
	@Test
	public void queryCategoryById() {//2018��10��16�ղ���ͨ��
		CategoryDao dao=MybatisUtil.getMapper(CategoryDao.class);
		List<Category> category=dao.queryCategoryById("10");
		for (Category category2 : category) {
			System.out.println(category2);
		}
		
	}
	@Test
	public void queryAllCategory() {//2018��10��16�ղ���ͨ��
		CategoryDao dao=MybatisUtil.getMapper(CategoryDao.class);
		List<Category> category=dao.queryAllCategory();
		for (Category category2 : category) {
			System.out.println(category2);
		}
		
	}
	
}
