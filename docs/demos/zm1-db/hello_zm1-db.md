# Hello ZM1-DB

In this demo we will show how to run the simplest firmware on the ZM1-DB

More information about modules used in this demo:

- [GPIO](../../reference/libs/stdlib/gpio.md)

```python
from bsp import board
import gpio


# Print initial message.
print("Hello Zerynth!")

# Infinite loop.
while True:

    print("ZM1-DB led off")
    gpio.set(LED_BLUE,1)
    sleep(1000)

    print("ZM1-DB led on")
    gpio.set(LED_BLUE,0)
    sleep(1000)
```

In the first lines the `board` module is imported for the initial configuration of the ZM1-DB.

The demo then prints an "Hello Zerynth!" message on the standard serial port (it can be read by opening it pressing `Console` in VSCode).

The code then enters an infinite loop that alternately turns on and off the blue led and prints the led status.


