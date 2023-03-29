import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }

  next(event) {
    let nodes = document.getElementsByClassName(`${event.currentTarget.dataset.id}`)
    for (let el of nodes) {
      el.classList.toggle("hidden")
    }
  }
}
