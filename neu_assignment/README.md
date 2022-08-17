# neu_assignment

Tata Neu - Live the Neu
## Descriptive Questions

1. Can we nest the Scaffold widget? Why or Why not?

    Yes, we can nest the Scaffold widget because it's a widget and any widget can be nested with any other. <br>
    But it is not recommended to use nested Scaffold because it has been designed to be a top level container for a <font color="blue">MaterialApp</font>. <font color="blue">MaterialApp</font> provides the app with Material's basic visual layout structure and if we use nested Scaffolds then each of the widget would get these basic visual layouts althrough its not needed. <br>

    Nested Scaffolds could be helpful in cases where we want to show multiple screens layered/stacked upon each other through elevation/depth. 

2. What are the different ways we can create a custom widget ?

    Custom widgets basically means designing a single component UI so that it can be reused at multiple places without any code changes. We can make these widgets using following ways:

    1. **StatefulWidgets** - have all the configuration information in the object itself.For UI to change we need to <br> call <font color="blue">build()</font> method. It doesn not have mutable state.
        The Build method of stateless widgets are called only in three situations : the first time the widget is inserted in the tree, when the widget's parent changes its configuration, and when an InheritedWidget it depends on changes.

    2. **StatefulWidgets** - have mutable state but immutable instance.We can call the <font color="blue">build()</font> method by invoking <font color="blue">State.setState</font> anytime which would change the UI dynamically.

    3. **CustomPainter** - is a widget that provides a virtual surface called <font color="blue">canvas</font> on which we can draw any of our custom UI which is not available with premade widgets.

    4. **RenderObjects** - deals with layout, painting, hit testing, accesiblity.

3. How can I access platform(iOS or Android) specific code from Flutter?

    We can acces platform(iOS or Android) code by using Flutter's inbuilt platform-specific API called <font color="blue">Platform Channels</font> which is a messgae passing style.<br>
    Flutter sends messages to a non-Dart portion of app using this channel.<br>
    The non-Dart portion of the app listens to this message using platform channels and take actions using native programming languages and sends back a response to Flutter.<br>
    These messages can be of any standard message codec that supports simple JSON-like values, such as booleans, numbers, Strings, byte buffers, and Lists and Maps of these.

4. What is BuildContext? What is its importance?

    BuildContext is source to locate the widget in a <font color="blue">Widget Tree</font>.Each widget has its own BuildContext. Widget Tree doesnt create this context information, rather it's created by <font color="blue">Element Tree</font>.

    Its importance are:

    1. To find the correct build() method of the correct type in widget tree extending <font color="blue">InheritedWidget</font>.
    2. Interacting with RenderObjects.
    3. It serves as a bridge between the widgets and rendering layer.


## Coding Questions

1. Refactor the code below so that the children will wrap to the next line when
   the display width is small for them to fit.

           import 'package:flutter/material.dart';
           class LongStringWidget extends StatelessWidget {
           const LongStringWidget({Key? key}) : super(key: key);

           @override
           Widget build(BuildContext context) {
           return Wrap(
           children: const [
                    Chip(label: Text("I")),
                    Chip(label: Text("am")),
                    Chip(label: Text("looking")),
                    Chip(label: Text("for")),
                    Chip(label: Text("a")),
                    Chip(label: Text("job")),
                    Chip(label: Text("and")),
                    Chip(label: Text("need")),
                    Chip(label: Text("something")),
                    Chip(label: Text("good")),
                ],
               );
              }
            }


2. Identify the problem in the following code block and correct it.

            String longOperationMethod() {
                int counting = 1;
                while(counting <= 1000000000) {
                    counting += 1;
                }
                return "$counting! times I print the value";
            }
    
    problem was unnecessary reassigning the value of counting.

3. In the below code, list1 declared with var, list2 with final and list3 with const.
   What is the difference between these lists? Will the last two lines compile?

            
            var list1 = ["Ok", "love", "Flutter"];

            final list2 = list1;
            list2[2] = "dart"; // will not compile

            const list3 = list1; // will not compile

    a <font color="blue">var</font> keyword is used to declare a variable. The Dart Compiler automatically knows the type of data based on the assigned value to the variable because Dart is an <font color="blue">infer type language</font>. 
    
    a <font color="blue">final</font> keyword is used for a varibale that can be assigned only once. Once assigned a value,cannot be changed.

    a <font color="blue">const</font> keyword means that the object's entire deep state can be determined entirely at compile time and that the object will be frozen and completely immutable. A const object does not have access to anything you would need to calculate at runtime.For any given const value, a single const object will be created and re-used no matter how many times the const expression(s) are evaluated.

    the second last statement will compile even after second reassignment because after first assignment list2 will become variable.
    the last statement will not compile becaue const declared variable needs the assignment to be constant as well.








    






