<script lang=ts>
    import Header from "./Header.svelte";

    let formState = $state({
        name: "",
        birthday: "",
        step: 0,
        error: ""
    });

</script>

<main>

    <p>Step: {formState.step}</p>

</main>
