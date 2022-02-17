package com.prac.s1;

import static org.junit.Assert.*;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class DataSourceTest extends MyJunitTest {
	@Autowired
	private DataSource datasource;
	@Autowired
	private SqlSession Session;
	@Test
	public void connectionTest() throws Exception{
		assertNotNull(datasource.getConnection());
	}
	@Test
	public void sessionTest() {
		assertNotNull(Session);
	}
}
