import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "dateBegin", "dateEnd" ]

  connect() {
    console.log('hello from flatpickr controller');
    console.log(this.dateBeginTarget);
    flatpickr(this.dateBeginTarget, {})
    flatpickr(this.dateEndTarget, {})
  }
}
