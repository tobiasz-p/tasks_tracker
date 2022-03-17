import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

export default class extends Controller {
    connect() {
        this.modal = new Modal(this.element)
        this.modal.show()
    }

    submitEnd(event) {
        if (event.detail.success) {
            this.modal.hide()
        }
    }

    hideBeforeRender(event) {
        if (this.isOpen()) {
            event.preventDefault()
            this.element.addEventListener('hidden.bs.modal', event.detail.resume)
            this.modal.hide()
        }
    }

    isOpen() {
        return this.element.classList.contains("show")
    }
}