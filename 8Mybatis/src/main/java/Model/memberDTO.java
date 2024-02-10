package Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

// @Data -> 만능
@AllArgsConstructor //모든 파라미터를 받는 생성자
@NoArgsConstructor //기본 생성자
@Getter //getter 메소드
@Setter //setter 메소드
@RequiredArgsConstructor
public class memberDTO {
	
	@NonNull
	private String id;
	@NonNull
	private String pw;
	private String name;
	
}
