import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["loginButton", "profileMenu"]

  connect() {
    console.log("Controller connected")
    this.loginButtonTarget.addEventListener("click", this.toggleAnimation.bind(this))
  }

  toggleAnimation() {
    console.log("Toggle animation")
    console.log("loginButtonTarget:", this.loginButtonTarget)
    console.log("profileMenuTarget:", this.profileMenuTarget)

    this.loginButtonTarget.classList.toggle("fa-x")
    this.profileMenuTarget.classList.toggle("active")
  }
}
