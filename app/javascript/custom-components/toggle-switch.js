import {html, LitElement} from "lit-element";
import {toggleSwitchStyles} from "./toggle-switch-styles"; // shar ed style

class ToggleSwitch extends LitElement {


    static get styles() {
        return toggleSwitchStyles;
    }

    static get properties() {
        return {
            id: {type: String},
            small: {type: Boolean},
            checked: {type: Boolean, reflect:true}
        }
    }

    constructor() {
        super();
        this.small = false;
        this.checked = false;
        this.id = '';
    }

    get value() {
        return this.shadowRoot.querySelector("input[type=checkbox]").checked;
    }

    render() {
        return html `
            <label class="el-switch${this.small? ' el-switch-sm':''}">
              <input type="checkbox" name="${this.id}" id="${this.id}" .checked=${this.checked}>
              <span class="el-switch-style"></span>
            </label>
        `
    }
}

customElements.define("toggle-switch", ToggleSwitch)
