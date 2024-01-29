import { Controller } from "@hotwired/stimulus"
import SlimSelect from 'slim-select'
// Connects to data-controller="dropdown"
export default class extends Controller {
  connect(){
    console.log("Hola desde el controlador de slim")
    new SlimSelect({
      select: this.element
    })
  }
}
