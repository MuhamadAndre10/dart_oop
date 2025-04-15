// Mixin like a copy paste

abstract class Multimedia {}

// dengan menggunakan on, artinya mixin playable dan stopable hanya bisa digunakan pada class yang memiliki superclass Multimedia
// jika tidak ada superclass Multimedia, maka tidak bisa menggunakan mixin playable dan stopable
mixin Playable on Multimedia {
  void play() {
    print('Playing...');
  }
}

mixin Stopable on Multimedia {
  void stop() {
    print('Stopping...');
  }
}

class Video extends Multimedia with Playable, Stopable {}

void main(List<String> args) {
  var video = Video();
  video.play();
  video.stop();
}
