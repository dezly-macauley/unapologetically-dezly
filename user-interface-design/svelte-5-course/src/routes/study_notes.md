# Svelte Usage Guide
_______________________________________________________________________________

### What is a component?

It is a file that contains html, css, and javascript or typescript,
to create an element with a specific structure, style and functionality, 
that can be imported into another file.

_______________________________________________________________________________

### How to import a component into another file.

E.g. Import `Header.svelte` component to `+page.svelte`

#### Header.svelte
```svelte

<script lang=ts>

</script>

<h1>Hello World</h1>

<style>

</style>

```

#### +page.svelte
```svelte

<script>
    import Header from "./Header.svelte";
</script>

<Header />

```

_______________________________________________________________________________

### What is a prop?
This is simply declaring a variable in a component,
and then giving that variable a value after it has been imported into another
component.

The `$` before `props()` is known as a rune.

#### Header.svelte
```svelte

<script lang=ts>
    let { name }: { name: string; } = $props();
</script>

<h1>Hello { name }</h1>

<style>

</style>

```

#### +page.svelte (Method 1)
```svelte

<script>
    import Header from "./Header.svelte";
    let name = "Dezly";
</script>

<Header { name } />

```

#### +page.svelte (Method 2)
```svelte

<script>
    import Header from "./Header.svelte";
</script>

<Header name="Dezly" />

```
_______________________________________________________________________________

### Local Variables vs Reactive variables

#### +page.svelte
```svelte
<script>
    import Header from "./Header.svelte";
    let name = "Dezly";
    let ninjaName = $state("Kakashi");
</script>

<!-- This is the same as saying -->
<!-- name={name} -->
<Header {name} />

<!-- NOTE: What is the difference between 
Local variables vs Reactive state variables

Local Variables:
`name` is a local variable. It is defined within a component,
and if you change its value other components will not be updated until the 
variable `name` has been manually passed to those components.

Reactive State Variables:
`ninjaName` is a reactive state variable. It's state is share across the 
app. So if you update it's value, that value will be automatically updated 
everywhere.

-->

```
_______________________________________________________________________________

### Bindings

_______________________________________________________________________________

### Events

_______________________________________________________________________________

### Derived State

When the value of a variable depends on the state of another variable.

E.g. A shopping cart total

_______________________________________________________________________________

