let status = "OPEN";

function toggleStatus() {

    // NOTE: `?` This is the ternary operator
    // It is a shorthand for an if else statement.
    // The syntax is:
    // variableName = condition ? valueIfTrue : valueIfFalse;
    status = status === "OPEN" ? "CLOSED" : "OPEN";

    // If status is "OPEN" then this function will set the value to "CLOSED"
    // and vice versa.

}

console.log(status);
toggleStatus();
console.log(status);

