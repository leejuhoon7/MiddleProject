package co.jtrip.common;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DataSource {
   private static SqlSessionFactory sqlSessionFactory;
   private DataSource() {};
   
   public static SqlSessionFactory getInstance() {  //My batis연결
      String resource="config/config-mybatis.xml";
      InputStream inputStream;
      System.out.println("데이터 연결 됐음. 마이바티스 출발~~~");
      try {
         inputStream = Resources.getResourceAsStream(resource);
         sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);         
      }catch(Exception e) {
         e.printStackTrace();
      }
      return sqlSessionFactory;
   }
}