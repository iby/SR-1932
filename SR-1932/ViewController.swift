import AppKit

class ViewController: NSViewController
{
    @IBOutlet private weak var collectionView: NSCollectionView!

    override func viewDidLoad() {
        var content: [AnyObject] = []

        for i in 0 ..< 10 {
            content.append(i as AnyObject)
        }

        self.collectionView.itemPrototype = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "collectionViewItem") as! CollectionViewItem
        self.collectionView.content = content
    }
}

public class CollectionViewItem: NSCollectionViewItem
{
    private var controller: NSViewController?

    override public func viewDidLoad() {
        let controller: NSViewController = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "myViewController") as! NSViewController
        self.controller = controller
        self.view.addSubview(controller.view)
    }

    override public func copy(with: NSZone?) -> Any {
        return NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "collectionViewItem") as! CollectionViewItem
    }
}
