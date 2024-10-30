<script lang=ts>
    import Header from "./Header.svelte";
    let name = ("Dezly")
    let ninjaName = $state("Obito");
    let status: "OPEN" | "CLOSED" = $state("OPEN");

    function toggle() {
        status = status === "OPEN" ? "CLOSED" : "OPEN";
    }

    let fullName = $derived(ninjaName + " " + "Uchiha");

</script>

<!-- This is the same as saying -->
<!-- name={name} -->
<Header { name } { ninjaName } />

<!--
    Updating the text box will update the value of ninjaName
-->
<input type="text" bind:value={ninjaName} />

<p>The store is now {status}</p>

<button onclick={toggle}>Status</button>

<h2>Hello {fullName}</h2>
