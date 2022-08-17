# neu_assignment

Tata Neu - Live the Neu
## Descriptive Questions

1. Can we nest the Scaffold widget? Why or Why not?

    Yes, we can nest the Scaffold widget because it's a widget and any widget can be nested with any other. <br>
    But it is not recommended to use nested Scaffold because it has been designed to be a top level container for a **MaterialApp**. **MaterialApp** provides the app with Material's basic visual layout structure and if we use nested Scaffolds then each of the widget would get these basic visual layouts althrough its not needed. <br>

    Nested Scaffolds could be helpful in cases where we want to show multiple screens layered/stacked upon each other through elevation/depth. 

2. What are the different ways we can create a custom widget ?

    Custom widgets basically means designing a single component UI so that it can be reused at multiple places without any code changes. We can make these widgets using following ways:

    1. **StatefulWidgets** - have all the configuration information in the object itself.For UI to change we need to <br> call **build()** method. It doesn not have mutable state.
        The Build method of stateless widgets are called only in three situations : the first time the widget is inserted in the tree, when the widget's parent changes its configuration, and when an InheritedWidget it depends on changes.

    2. **StatefulWidgets** - have mutable state but immutable instance.We can call the **build()** method by invoking **State.setState** anytime which would change the UI dynamically.

    3. **CustomPainter** - is a widget that provides a virtual surface called **canvas** on which we can draw any of our custom UI which is not available with premade widgets.

    4. **RenderObjects** - deals with layout, painting, hit testing, accesiblity.

3. How can I access platform(iOS or Android) specific code from Flutter?

    We can acces platform(iOS or Android) code by using Flutter's inbuilt platform-specific API called **Platform Channels** which is a messgae passing style.<br>
    Flutter sends messages to a non-Dart portion of app using this channel.<br>
    The non-Dart portion of the app listens to this message using platform channels and take actions using native programming languages and sends back a response to Flutter.<br>
    These messages can be of any standard message codec that supports simple JSON-like values, such as booleans, numbers, Strings, byte buffers, and Lists and Maps of these.

4. What is BuildContext? What is its importance?

    BuildContext is source to locate the widget in a **Widget Tree**.Each widget has its own BuildContext. Widget Tree doesnt create this context information, rather it's create by **Element Tree**.


    






