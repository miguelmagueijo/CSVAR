<script lang="ts">
	import "../app.css";
	import Navbar from "../components/Navbar.svelte";
	import Footer from "../components/Footer.svelte";
</script>

<Navbar />
<main class="mb-auto px-4">
	<slot />
</main>
<Footer />
