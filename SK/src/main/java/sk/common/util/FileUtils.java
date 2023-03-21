package sk.common.util;

import java.io.File;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {

	// 브랜드 기본 정보 로고 파일 수정
	public String parseBrandLogoFile(Map<String, Object> map, MultipartHttpServletRequest request) throws Exception {

		// String filePath_temp =
		// request.getServletContext().getRealPath("/resources/uploadImage/");
		// String filePath_temp = "C:\\uploadImage\\"; // 로컬 경로에 업로드
		String filePath_temp = "/Users/book/uploadImage/"; // 맥북 경로 /Users/macbook-id/uploadImage/

		System.out.println(filePath_temp);

		MultipartFile multipartFile = request.getFile("BRAND_LOGO_FILE");
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		File file = new File(filePath_temp); // 경로에 폴더 없으면 만들어줌

		if (file.exists() == false) {
			file.mkdirs();
		}

		// 참고해서 로직 작성필요
		if (multipartFile.isEmpty() == false) {
			originalFileName = multipartFile.getOriginalFilename(); // 실제파일이름
			originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf(".")); // substring .앞에 지우고
																									// .뒤에 확장자 가져옴
			storedFileName = CommonUtils.getRandomString() + originalFileExtension; // uuid 실제 저장될 파일명
			file = new File(filePath_temp + storedFileName); // 경로+이름을 포함한 file객체 생성
			multipartFile.transferTo(file); // 생성한 파일객체를 이용하여 파일 업로드
		}

//			while (iterator.hasNext()) {
//				multipartFile = multipartHttpServletRequest.getFile(iterator.next());
//				if (multipartFile.isEmpty() == false) {
//					originalFileName = multipartFile.getOriginalFilename();
//					originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
//					storedFileName = CommonUtils.getRandomString() + originalFileExtension;
//					file = new File(filePath_temp + storedFileName);
//					multipartFile.transferTo(file);
//					listMap = new HashMap<String, Object>();
//					listMap.put("BRAND_LOGO_FILE", storedFileName);
//					listMap.put("FILES_SIZE", multipartFile.getSize());
//					list.add(listMap);
//				}
//			}

		return storedFileName;
	}

	public Map<String, Object> parseUpdateFileInfo(Map<String, Object> map, MultipartHttpServletRequest request)
			throws Exception {
		String filePath_temp = "C:\\goods_image\\"; // 로컬 경로에 업로드
//		String filePath_temp = "/Users/book/uploadImage/"; // 맥북 경로  /Users/macbook-id/uploadImage/
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

		if (multipartFile != null) {
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
		for (MultipartFile multipartFile : uploadFile) {
//			if (uploadFile!= null) {
			imgNum++; // 상품 이미지 순서 1씩 증가시키고

			originalFileName = multipartFile.getOriginalFilename();
			originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
			storedFileName = CommonUtils.getRandomString() + originalFileExtension;
			file = new File(filePath_temp + storedFileName);
			multipartFile.transferTo(file);

			System.out.println(" originalFileName : " + originalFileName);
			System.out.println(" storedFileName: " + storedFileName);
			System.out.println(" imgNum: " + imgNum);

			// Map에 파일 이름 넣기
			map.put("GOODS_IMAGE_ORG", originalFileName);
			map.put("GOODS_IMAGE_STD", storedFileName);
			map.put("GOODS_IMAGE_ORDER", imgNum);

			System.out.println("map 확인 : " + map);

//			}
		}

		return null;
	}
}