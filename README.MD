Simple project reproducing strange UINavigationItem behaviour

Description:

Modifiying UINavigationItem's titleView after viewWillDisappear for the owning viewController was called is leading to display glitch: custom view is added to the UINavigationBar itself and is displayed at the navigation bar forever.

Steps to reproduce:
1. Run provided project on the device.
2. Press Button.
3. Start interactivePopGestureRecognizer and do not release your finger.
4. Make sure both controllers are displayed
5. Wait for text "updated" to appear on the top left corner.
6. Cancel interactivePopGestureRecognizer so that pushed viewController is displayed.
7. Pop to previous viewController using interactivePopGestureRecognizer or tap on "First back button
8. Take a look at the navigation bar

![](https://github.com/kirillyakimovich/UINavigationBarBug/blob/master/UINavigationBarBug.gif)
