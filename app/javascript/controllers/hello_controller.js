import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("SOy hello controller")
    this.element.textContent = "Hello World!"
  }
}
