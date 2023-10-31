package servlet;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ImageServlet生成图片验证码会发给客户端，同时保存在服务器端Session中
 * 
 * @author gongjing
 */
@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ImageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO 该方法实现验证码的生成
		// 创建图像缓冲区
		int width=80;
		int height = 30;
		BufferedImage bufferedImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		// 通过缓冲区创建一个画布
		Graphics graphics = bufferedImg.getGraphics(); 
		// 创建颜色
		Color c = new Color(255, 255, 255); 
		//根据背景画了一个矩形框		
		graphics.setColor(c);// 为画布创建背景颜色
		graphics.fillRect(0, 0, width, height); // fillRect:填充指定的矩形
		// 字符数组
		char[] ch = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();// 转化为字符型的数组
		Random random = new Random();
		int len = ch.length;
		int index; // index用于存放随机数字
		StringBuffer sb = new StringBuffer();
		//随机生成80个噪声点
		for (int i = 0; i < 80; i++) {
			 int x=(int)(Math.random()*width);
			 int y=(int)(Math.random()*height);
			 int red=(int)(Math.random()*255);
			 int green=(int)(Math.random()*255);
			 int blue=(int)(Math.random()*255);
			 graphics.setColor(new Color(red,green,blue));	
			 graphics.drawOval(x, y, 1, 0);
		}
		// 产生长度为5的随机数字验证码
		for (int i = 0; i < 5; i++) {
			index = random.nextInt(len);// 产生随机数字
			graphics.setColor(new Color(random.nextInt(128), random.nextInt(158), random.nextInt(255))); // 设置颜色
			graphics.drawString(ch[index] + " ", (i * 15) + 5, 20);// 画数字以及数字的位置
			sb.append(ch[index]);
		}
		// 将数字保留在session中，便于后续的使用
		request.getSession().setAttribute("captcha", sb.toString()); 
		System.out.println("服务器端已保存验证码：" + sb.toString());
		//返回图像给客户端
		ImageIO.write(bufferedImg, "JPG", response.getOutputStream());
	}

}
