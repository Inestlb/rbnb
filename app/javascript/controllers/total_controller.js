import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total"
export default class extends Controller {
  static Targets = ["final", "start", "end", "price"]

  connect() {
    console.log("hola");
    console.log(this.endTarget);
    console.log(this.startTarget);
    console.log(this.priceTarget);
    console.log(this.finalTarget);

  }

  count() {
    const counter= ((Date.parse(this.endTarget.value) - Date.parse(this.startTarget.value)) / (1000 * 60 * 60));
    const total_price= counter * this.priceTarget.value
    this.finalTarget.value = total_price
    console.log(total_price);
  }
}
