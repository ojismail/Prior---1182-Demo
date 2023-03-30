import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // add hidden class to all content elements
    let contents = document.querySelectorAll("dd");
    contents.forEach((content) => {
      content.classList.add("hidden");
      content.style.maxHeight = null;
    });
  }

  next(event) {
    let nodes = document.getElementsByClassName(`${event.currentTarget.dataset.id}`)
    for (let el of nodes) {
      el.classList.toggle("hidden")
      if (el.classList.contains("hidden")) {
        el.nextElementSibling.style.maxHeight = null;
      } else {
        el.nextElementSibling.style.maxHeight = el.nextElementSibling.scrollHeight + "px";
      }
    }
  }
}
