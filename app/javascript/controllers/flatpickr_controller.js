import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "dateBegin", "dateEnd" ]

  connect() {
    console.log('hello from flatpickr controller');
    console.log(this.dateBeginTarget);
    flatpickr(this.dateBeginTarget, {
      altInput: true,
      plugins: [new rangePlugin({ input: "#end_time"})],
      minDate: "today"
    })
  }
}
