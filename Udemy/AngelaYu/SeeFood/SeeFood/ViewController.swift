//
//  ViewController.swift
//  SeeFood
//
//  Created by MK on 12/17/24.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	@IBOutlet weak var imageView: UIImageView!
	
	let imagePicker = UIImagePickerController()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		imagePicker.delegate = self
		imagePicker.sourceType = .photoLibrary
		imagePicker.allowsEditing = false
	}
	
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
		if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
			imageView.image = userPickedImage
			guard let ciImage = CIImage(image: userPickedImage) else {
				fatalError("Could not convert UIImage into CIImage.")
			}
			detect(image: ciImage)
		}
		
		imagePicker.dismiss(animated: true, completion: nil)
	}
	
	func detect(image: CIImage) {
		guard let model = try? VNCoreMLModel(for: MobileNetV2().model) else {
			fatalError("Loading CoreML Model Fatal.")
		}
		
		let request = VNCoreMLRequest(model: model) { (request, error) in
			guard let results = request.results as? [VNClassificationObservation] else {
				fatalError("Model failed to process image.")
			}
			
			if let firstResult = results.first {
				self.navigationItem.title = firstResult.identifier
			}
		}
		
		let handler = VNImageRequestHandler(ciImage: image)
		
		do {
			try handler.perform([request])
		}
		catch {
			print(error)
		}
	}
	
	@IBAction func cameraTapped(_ sender: UIBarButtonItem) {
		present(imagePicker, animated: true, completion: nil)
	}
	
}
