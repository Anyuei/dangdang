package dangdang.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {
	private static SqlSessionFactory factory;
	static {
		InputStream in=null;
		try {
			in=Resources.getResourceAsStream("mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(in);
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("��ʼ������ʧ��");
		}finally {
			try {
				in.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	private static ThreadLocal<SqlSession> tol =new ThreadLocal<SqlSession>();
	/**
	 * �ӱ����̳߳� ��ȡ �Ự����ȡ�����Ự ���½��Ự
	 * @return
	 */
	public static SqlSession openSession() {
		SqlSession sqlSession = tol.get();
		if (sqlSession==null) {
			sqlSession = factory.openSession();
			tol.set(sqlSession);
		}
		return sqlSession;
	}
	/**
	 * �ͷ���Դ
	 */
	public static void close() {
		SqlSession sqlSession = openSession();
		if (sqlSession!=null) {
			sqlSession.close();
			tol.remove();
		}
	}
	/**
	 * ��ȡDaoʵ����Ķ���
	 */
	public static <T> T getMapper(Class<T> c) {
		SqlSession sqlSession = openSession();
		T t = sqlSession.getMapper(c);
		return t;
	}
	/**
	 * �ύ����
	 */
	public static void commit(){
		openSession().commit();
	}
	/**
	 * �ع�����
	 */
	public static void rollback(){
		openSession().rollback();
	}
}

