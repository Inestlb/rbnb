import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {
  static targets = ["see-more", "button"]  // Define both targets

  connect() {
    console.log("hello")
  }

  click() {
    console.log("on est bien ckicn")
    const audio = new Audio("/audios/sound-effect-twinklesparkle-115095.mp3");
    audio.play();
    setInterval(() => {

    }, 3000);
  }
}
