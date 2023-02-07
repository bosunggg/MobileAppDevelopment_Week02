//Load Image from URL
import UIKit
import PlaygroundSupport

class ViewController: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .blue
    
        //create and set image view
        let imageView = UIImageView(frame: (x:0, y:0, width:1023, height:1023))
        imageView.center = self.view.center
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        view.addSubview(imageView)
        
        //Create URL
        let imageUrlString = "https://admin.illo.tv/storage/uploads/2022/11/21/637b64848838etrees_D.jpg"
        guard let imageUrl:URL = URL(string: imageUrlString) else {
            return
        }

        imageView.loadImage(withUrl: imageUrl)
        self.view = view
    }
}
