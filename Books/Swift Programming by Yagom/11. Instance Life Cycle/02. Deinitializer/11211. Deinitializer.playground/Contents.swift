class FileManager {
	var fileName: String
	
	init(fileName: String) {
		self.fileName = fileName
	}
	
	func openFile() {
		print("Open File: \(self.fileName)")
	}
	
	func modifyFile() {
		print("Modify File: \(self.fileName)")
	}
	
	func writeFile() {
		print("Write File: \(self.fileName)")
	}
	
	func closeFile() {
		print("Close File: \(self.fileName)")
	}
	
	deinit {
		print("Deinit instance")
		
		self.writeFile()
		self.closeFile()
	}
}

var fileManager: FileManager? = FileManager(fileName: "alpha.txt")

if let manager: FileManager = fileManager {
	manager.openFile()
	manager.modifyFile()
}

fileManager = nil

/**
 * ## 11.2 인스턴스 소멸
 * #### 11-14 클래스의 디이니셜라이저 활용
 * 클래스의 인스턴스는 디이니셜라이저(Deinitializer)를 구현할 수 있다.
 * 인스턴스가 메모리에서 해제되기 직전에 인스턴스와 관련된 정리 작업을 구현할 수 있다.
 * 디이니셜라이저는 deinit 키워드로 구현되고 자동으로 호출된다.
 * 디이니셜라이저는 클래스의 인스턴스에만 구현할 수 있다.
 *
 * 클래스에는 디이니셜라이저를 하나만 구현할 수 있다.
 * 디이니셜라이저는 매개변수도 없고, init() 처럼 ()를 필요로 하지도 않는다. 자동으로 호출되므로 코드로 호출할 수도 없다.
 * 디이니셜라이저는 인스턴스가 소멸되기 직전에 호출되므로 인스턴스의 모든 프로퍼티에 접근할 수 있고 프로퍼티의 값도 변경할 수 있다.
 */
