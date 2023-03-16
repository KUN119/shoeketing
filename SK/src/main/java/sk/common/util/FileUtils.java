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
	public String parseBrandLogoFile(Map<String, Object> map, MultipartHttpServletRequest request)
			throws Exception {
		//String filePath_temp = request.getServletContext().getRealPath("/resources/uploadImage/");
		//String filePath_temp = "C:\\uploadImage\\"; // 로컬 경로에 업로드   
		String filePath_temp = "/Users/book/uploadImage/"; // 맥북 경로  /Users/macbook-id/uploadImage/
		
		System.out.println(filePath_temp);

		MultipartFile multipartFile = request.getFile("BRAND_LOGO_FILE");
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		File file = new File(filePath_temp);  //경로에 폴더 없으면 만들어줌

		if (file.exists() == false) {
			file.mkdirs();
		}
		
		// 참고해서 로직 작성필요
		if (multipartFile.isEmpty() == false) {
			originalFileName = multipartFile.getOriginalFilename();    //실제파일이름
			originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));   //substring .앞에 지우고 .뒤에 확장자 가져옴
			storedFileName = CommonUtils.getRandomString() + originalFileExtension;  //uuid 실제 저장될 파일명
			file = new File(filePath_temp + storedFileName);  // 경로+이름을 포함한 file객체 생성
			multipartFile.transferTo(file);   //생성한 파일객체를 이용하여 파일 업로드        
		}
		

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
		
		return storedFileName;
	}
}
