# image_carousel

Learn how to create an electronic picture frame that automatically rolls when left still and can be swiped directly using the following main techniques.

- Using the pageView widget (to allow left/right scrolling by touch)
- Using the Timer class to execute a specified function at specific intervals.
- StatefulWidget in action
- Life Cycle

```
- Image.asset(
            'asset/img/image_1.jpeg',
            fit: BoxFit.cover,
          ),

- children: [1, 2, 3, 4, 5]
            .map(
              (e) => Image.asset(
                'asset/img/image_$e.jpeg',
                fit: BoxFit.cover,
              ),
            )
            .toList() // map은 iterable이 return이 되는데, children 에는  list로 받기 때문에 .toList()를 항상!

```

<img align="center" src="./capture.gif" width="300px" />
