package sk.common.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {
	
	// 브랜드 기본 정보 로고 파일 수정
	public Map<String, Object> parseUpdateFileInfo(Map<String, Object> map, MultipartHttpServletRequest request)
			throws Exception {
		String filePath_temp = "C:\\goods_image\\"; // 로컬 경로에 업로드
		System.out.println(filePath_temp);
		System.out.println("map : " + map);
		
		MultipartFile multipartFile = request.getFile("BRAND_LOGO_FILE");
		System.out.println("multipartFile 확인 : " + multipartFile);
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		File file = new File(filePath_temp);

		// 업로드할 폴더가 없을경우, 폴더 생성
		if (file.exists() == false) {
			file.mkdirs();
		}
		
		if (multipartFile!= null) {
			originalFileName = multipartFile.getOriginalFilename();
			originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
			storedFileName = CommonUtils.getRandomString() + originalFileExtension;
			file = new File(filePath_temp + storedFileName);
			multipartFile.transferTo(file);

			// Map에 파일 이름 넣기
			map.put("BRAND_LOGO_FILE", storedFileName);
			System.out.println("map 확인 : " + map);
			
		}
		return map;
	}
	
	// 브랜드 상품 이미지 등록
	public Map<String, Object> parseInsertFileInfo(Map<String, Object> map, MultipartFile[] uploadFile)
			throws Exception {
		
		String filePath_temp = "C:\\goods_image\\"; // 로컬 경로에 업로드
		System.out.println(filePath_temp);
		System.out.println("map : " + map);
		System.out.println("uploadFile : " + uploadFile);
		
		int imgNum = 0; // 상품 이미지 순서 결정
		
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		File file = new File(filePath_temp);

		// 업로드할 폴더가 없을경우, 폴더 생성
		if (file.exists() == false) {
			file.mkdirs();
		}
		
		// 업로드된 상품 이미지 개수만큼 반복문 실행해서 multipartFile 객체 생성
		for(MultipartFile multipartFile : uploadFile) {
//			if (uploadFile!= null) {
				imgNum++;  // 상품 이미지 순서 1씩 증가시키고 
				
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = CommonUtils.getRandomString() + originalFileExtension;
				file = new File(filePath_temp + storedFileName);
				multipartFile.transferTo(file);

				System.out.println(" originalFileName : " + originalFileName );
				System.out.println(" storedFileName: " + storedFileName );
				System.out.println(" imgNum: " + imgNum);
				
				// Map에 파일 이름 넣기
				map.put("GOODS_IMAGE_ORG", originalFileName);
				map.put("GOODS_IMAGE_STD", storedFileName);
				map.put("GOODS_IMAGE_ORDER", imgNum);
				
				System.out.println("map 확인 : " + map);
				
//			}
		}
		
		return map;
	}
}
