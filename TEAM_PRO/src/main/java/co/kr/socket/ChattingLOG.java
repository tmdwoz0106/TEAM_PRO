package co.kr.socket;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import org.springframework.stereotype.Component;

@Component
public class ChattingLOG {

	/*
	 * static File file = null; static BufferedWriter bufferedwriter = null; static
	 * FileWriter filewriter = null;
	 * 
	 * 
	 * public static File getFileInstance() { if (file == null) { file = new
	 * File("C:\\Users\\rlqja\\Desktop\\chatLOG.txt"); } return file; }
	 * 
	 * public static BufferedWriter getBufferedWriterInstance() { if (bufferedwriter
	 * == null) { bufferedwriter = new
	 * BufferedWriter(getFileWriterInstance(getFileInstance())); } return
	 * bufferedwriter; }
	 * 
	 * public static FileWriter getFileWriterInstance(File file) { if (filewriter ==
	 * null) { try { filewriter = new FileWriter(file); } catch (IOException e) { //
	 * TODO Auto-generated catch block e.printStackTrace(); } } return filewriter; }
	 */

	public void inputChatLog(String message) {
		try {
			// 파일 객체 생성
			File file = new File("C:\\Users\\tmdwo\\OneDrive\\바탕 화면\\파이널\\기범이형 코드\\soket\\chat.txt");
			BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, true));

			if (file.isFile() && file.canWrite()) {
				// 쓰기
				bufferedWriter.write(message);
				// 개행문자쓰기
				bufferedWriter.newLine();

				bufferedWriter.close();
			}
		} catch (IOException e) {
			System.out.println(e);
		}
	}

	public static ArrayList<ChatLogVO> outputChatLog() throws IOException  {
		String filePath = "C:\\Users\\tmdwo\\OneDrive\\바탕 화면\\파이널\\기범이형 코드\\soket\\chat.txt";
		File file = new File(filePath);
		// File객체 생성
		ArrayList<ChatLogVO> arr = new ArrayList<>();
		if (file.exists()) {
			// 파일이 존재하면
			BufferedReader reader = new BufferedReader(new FileReader(file));
			System.out.println("파일내용 출력------------------");
			String line = null;
			while ((line = reader.readLine()) != null) {
				System.out.println(line);
				StringTokenizer token = new StringTokenizer(line, "||");
				while(token.hasMoreTokens()) {
					arr.add(new ChatLogVO(token.nextToken(),token.nextToken(),token.nextToken()));
				}
			}
			System.out.println("------------------------------");
			for(int i=0; i<arr.size(); i++) {
				System.out.println(arr.get(i));
			}
			reader.close();
		}

		new FileOutputStream(filePath).close();
		
		return arr;
	}
	
	public static void main(String[] args) {
		try {
			outputChatLog();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
