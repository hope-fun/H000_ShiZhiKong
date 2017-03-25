/*****************************************************************************
 *
 *                      HOPERUN PROPRIETARY INFORMATION
 *
 *          The information contained herein is proprietary to HopeRun
 *           and shall not be reproduced or disclosed in whole or in part
 *                    or used for any design or manufacture
 *              without direct written authorization from HopeRun.
 *
 *            Copyright (c) 2013 by HopeRun.  All rights reserved.
 *
 *****************************************************************************/
package com.artistmobile.kpyx.server.logical.cache;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import com.artistmobile.kpyx.server.data.service.vo.PlayerVO;

/**
 * TODO
 * 
 * @ClassName: TestCache
 * @author nikm
 * @date 2013-4-10
 *
 */
public class TestCache {

	/**
	 * Test method for {@link com.artistmobile.kpyx.server.logical.cache.MemcacheHandler#set(java.lang.String, java.lang.Object)}.
	 */
	@Test
	public void testMemcacheStore() {
		String msg = "--- This is cache data 1 ---";
		CacheManager.getInstance().set("Test-memcache-01", msg);
		assertEquals(msg, (String)CacheManager.getInstance().get("Test-memcache-01"));
		
		String[] msg2 = {"--- This is cache data 2 ---", "--- This is cache data 3 ---"};
		CacheManager.getInstance().set("Test-memcache-02", msg2);
		assertEquals(msg2, (String[])CacheManager.getInstance().get("Test-memcache-02"));
		
		PlayerVO player = new PlayerVO();
		player.setId("Test-player-id-01");
		CacheManager.getInstance().set("Test-memcache-03", player);
		PlayerVO player2 = (PlayerVO)CacheManager.getInstance().get("Test-memcache-03");
		assertEquals(player.getId(), player2.getId());
		
		CacheManager.getInstance().flushAll();
	}
	
	/**
	 * Test method for {@link com.artistmobile.kpyx.server.logical.cache.MemcacheHandler#delete(java.lang.String)}.
	 */
	@Test
	public void testMemcacheDelete() {
		PlayerVO player = new PlayerVO();
		player.setId("Test-player-id-02");
		CacheManager.getInstance().set("Test-memcache-04", player);
		PlayerVO player2 = (PlayerVO)CacheManager.getInstance().get("Test-memcache-04");
		assertEquals(player.getId(), player2.getId());
		
		CacheManager.getInstance().delete("Test-memcache-04");
		assertEquals(null, CacheManager.getInstance().get("Test-memcache-04"));
		
		CacheManager.getInstance().flushAll();
	}

	/**
	 * Test method for {@link com.artistmobile.kpyx.server.logical.cache.MemcacheHandler#get(java.lang.String)}.
	 */
	@Test
	public void testMemcacheTtl() {
		String msg = "--- This is cache data 5 ---";
		CacheManager.getInstance().set("Test-memcache-05", msg, 1);

		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		assertEquals(null, (String)CacheManager.getInstance().get("Test-memcache-05"));
		
		msg = "--- This is cache data 6 ---";
		CacheManager.getInstance().set("Test-memcache-06", msg, 3);
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals(msg, (String)CacheManager.getInstance().get("Test-memcache-06"));
		
		CacheManager.getInstance().flushAll();
	}

	/**
	 * Test method for {@link com.artistmobile.kpyx.server.logical.cache.MemcacheHandler#flushAll()}.
	 */
	@Test
	public void testMemcacheFlushAll() {
		String msg = "--- This is cache data 7 ---";
		CacheManager.getInstance().set("Test-memcache-07", msg);
		
		CacheManager.getInstance().flushAll();
		assertEquals(null, CacheManager.getInstance().get("Test-memcache-07"));
	}

}
