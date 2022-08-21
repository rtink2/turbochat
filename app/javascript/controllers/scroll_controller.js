import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    /** On start */
    connect() {
        console.log("🔥CONNECTED🔥")
        const messages = document.getElementById("messages")
        messages.addEventListener("DOMNodeInserted", this.resetScroll)
        this.resetScroll(messages)
    }
    /** On stop */
    disconnect() {
        console.log("🌀DISCONNECTED🌀")
    }
    /** Custom function */
    resetScroll() {
        messages.scrollTop = messages.scrollHeight - messages.clientHeight
    }
}