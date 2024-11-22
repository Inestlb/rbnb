import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

// Connects to data-controller="datepicker"
export default class extends Controller {

  static targets = ["start", "end", "price"]
  connect() {
    console.log(this.element);
    console.log(this.startTarget);
    console.log(this.endTarget);
    flatpickr(this.startTarget, {
      enableTime: true,
      minTime: "08:00",
      maxTime: "22:00"
    });
    flatpickr(this.endTarget, {
      enableTime: true,
      minTime: "08:00",
      maxTime: "22:00"
    });
  }

  trigger() {

    const start = new Date(this.startTarget.value);
    const end = new Date(this.endTarget.value);
    console.log(start);
    console.log(end);
    const diff = end - start
    console.log(diff / (1000 * 60 * 60));
    const hours = diff / (1000 * 60 * 60);
    const pricePerHour = this.priceTarget.dataset.price;
    console.log(pricePerHour);
    parseFloat(pricePerHour);
    const totalPrice = parseFloat(pricePerHour) * hours;
    console.log("totalPrice = ", totalPrice);
    this.priceTarget.innerText = `${totalPrice}€`
  }
}
