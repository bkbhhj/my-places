//
//  NewPlaceViewController.swift
//  my places
//
//  Created by Павел Тимофеев on 15.04.2022.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    @IBOutlet weak var imagePlace: UIImageView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
        
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if  indexPath.row == 0 {
            
            let cameraIcon = UIImage(named: "camera")
            let photoIcon = UIImage(named: "photo")

            
            
            let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
         
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in

                self.chooseImagePicker(source: .camera)
                
            }
            camera.setValue(cameraIcon, forKey: "image")
            
            let photo = UIAlertAction(title: "Photo", style: .default) { _ in
                self.chooseImagePicker(source: .photoLibrary)

                }
          
            
            photo.setValue(photoIcon, forKey: "image")

             
                let cancel = UIAlertAction(title: "Cancel", style: .cancel)
             
                actionSheet.addAction(camera)
                actionSheet.addAction(photo)
                actionSheet.addAction(cancel)
                present(actionSheet, animated: true)
                
            
            

        
    } else {
            view.endEditing(true)
        }
    }
  
}


// MARK: Text Field delegate


     extension NewPlaceViewController: UITextFieldDelegate {
    // скрываем клавиатуру по нажатию
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}
// MARK: Work with image

extension NewPlaceViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func chooseImagePicker(source: UIImagePickerController.SourceType){
        
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            present(imagePicker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        imagePlace.image = info[.editedImage] as? UIImage
        imagePlace.contentMode = .scaleToFill
        imagePlace.clipsToBounds = true
        dismiss(animated: true)
        
    }
    
}
