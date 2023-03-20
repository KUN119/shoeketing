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
		String filePath_temp = "C:\\uploadImage\\"; // 로컬 경로에 업로드
		System.out.println(filePath_temp);
		System.out.println("map : " + map);
		
		// BRAND_LOGO_FILE 이름 담아줄 Map객체 선언
		Map<String, Object> logoFileMap;
		
		MultipartFile multipartFile = request.getFile((String) map.get("BRAND_LOGO_FILE"));
		System.out.println("multipartFile 확인 : " + multipartFile);
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		File file = new File(filePath_temp);

		// 업로드할 폴더가 없을경우, 폴더 생성
		if (file.exists() == false) {
			file.mkdirs();
		}
		
		if (multipartFile.isEmpty() == false) {
			originalFileName = multipartFile.getOriginalFilename();
			originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
			storedFileName = CommonUtils.getRandomString() + originalFileExtension;
			file = new File(filePath_temp + storedFileName);
			multipartFile.transferTo(file);
			logoFileMap = new HashMap<String, Object>();

			// Map에 파일 이름 넣기
			logoFileMap.put("BRAND_LOGO_FILE", storedFileName);
			
			System.out.println("logoFileMap 확인 : " + logoFileMap);
			
			return logoFileMap;
		}
		
		// 참고해서 로직 작성필요
//		if (multipartFile.isEmpty() == false) {
//			originalFileName = multipartFile.getOriginalFilename();
//			originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
//			storedFileName = CommonUtils.getRandomString() + originalFileExtension;
//			file = new File(filePath_temp + storedFileName);
//			multipartFile.transferTo(file);
//			listMap = new HashMap<String, Object>();
//
//			
//			listMap.put("BRAND_LOGO_FILE", storedFileName);
//			listMap.put("FILES_SIZE", multipartFile.getSize());
//			list.add(listMap);
//		}
		

//		while (iterator.hasNext()) {
//			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
//
//			if (multipartFile.isEmpty() == false) {
//				originalFileName = multipartFile.getOriginalFilename();
//				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
//				storedFileName = CommonUtils.getRandomString() + originalFileExtension;
//				file = new File(filePath_temp + storedFileName);
//				multipartFile.transferTo(file);
//				listMap = new HashMap<String, Object>();
//
//				listMap.put("BRAND_LOGO_FILE", storedFileName);
//				listMap.put("FILES_SIZE", multipartFile.getSize());
//				list.add(listMap);
//			}
//		}
		
		return null;
	}
}
