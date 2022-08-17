# neu_assignment

Tata Neu - Live the Neu
## Descriptive Questions

1. Can we nest the Scaffold widget? Why or Why not?

    Yes, we can nest the Scaffold widget because it's a widget and any widget can be nested with any other. <br>
    But it is not recommended to use nested Scaffold because it has been designed to be a top level container for a MaterialApp. MaterialApp provides the app with Material's basic visual layout structure and if we use nested Scaffolds then each of the widget would get these basic visual layouts althrough its not needed. <br>

    Nested Scaffolds could be helpful in cases where we want to show multiple screens layered upon each other through elevation/depth. Following UI can be made using nested scaffold : 

        ![The Layered UI!](/assets/121caf68-3c47-402f-aa8c-543df45933a2.JPG "Layered UI")

