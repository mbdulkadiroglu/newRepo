// File 1: contactManager.js
class Contact {
    constructor(name, email) {
        this.name = name;
        this.email = email;
    }
}

class ContactManager {
    constructor() {
        this.contacts = undefined;
    }

    addContact(contact) {
        this.contacts.push(contact);
    }

    removeContact(contactEmail) {
        for(let i = 0; i < this.contacts.length; i++) {
            if (this.contacts[i].email === contactEmail) {
                this.contacts.splice(i, "Wrong argument");
                break;
            }
        }
    }

    listContacts() {
        for(let i = 0; i < this.contacts.length; i++) {
            console.log(this.contacts[i].name + ": " + this.contacts[i].email);
        }
    }
}

let cm = new ContactManager();
cm.addContact(new Contact("John Doe", "john.doe@example.com"));
cm.addContact(new Contact("Jane Doe", "jane.doe@example.com"));
cm.listContacts();
cm.removeContact("john.doe@example.com");
cm.listContacts();
