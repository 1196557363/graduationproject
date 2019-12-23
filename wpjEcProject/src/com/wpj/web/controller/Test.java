package com.wpj.web.controller;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class Test {
	public static void main(String[] args) throws IOException {
		
		
		RandomAccessFile r = null;
		RandomAccessFile w = null;
		
		
		try {
			r = new RandomAccessFile(new File("G:\\123\\day01-2019年5月22日\\01-视频\\02 谷粒商城的相关技术.avi"), "r");
			w = new RandomAccessFile(new File("02 谷粒商城的相关技术.avi"), "rw");
			
			r.seek(w.length());
			w.seek(w.length());
			
			byte[] b = new byte[100];
			int len = 0;
			while((len = r.read(b)) >=0) {
				w.write(b, 0, len);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//关流
			if (r!=null) {
				r.close();
			}
			if (w!=null) {
				w.close();
			}
		}

		
		
		
	}
}
