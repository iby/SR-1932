import AppKit

public class MyViewController: NSViewController
{
    @IBAction private func handleButtonAction(sender: NSButton) {
        Swift.print("handleButtonAction", self.view === sender.superview, self.view, sender.superview)
    }
}