import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import { French } from "flatpickr/dist/l10n/fr.js"

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "dateBegin", "dateEnd" ]

  connect() {
    // console.log('hello from flatpickr controller');
    // console.log(this.dateBeginTarget);

    const bookedDates = [""]
    console.log(bookedDates);

    flatpickr(this.dateBeginTarget, {
      altInput: true,
      plugins: [new rangePlugin({ input: "#date_end"})],
      minDate: "today",
      locale: French,
      altFormat: "J F Y",
    })
    flatpickr(this.dateEndTarget, {
    })
  }
}
