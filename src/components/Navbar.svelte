<script>
	import { currPage } from "$lib/stores";

</script>

<nav class="w-full p-4 flex justify-between mb-10 items-center shadow shadow-yellow-400 sticky ">
	<a class="font-bold text-2xl select-none" href="/">CS<span class="text-yellow-400">VAR</span></a>
	<div class="navlinks">
		<a class={ $currPage === "home" ? "active" : "" } href="/">
			Home
		</a>
		<a class={ $currPage === "submit" ? "active" : "" } href="/new">
			Submit
		</a>
		<a class={ $currPage === "about" ? "active" : "" } href="/about">
			About
		</a>
	</div>
</nav>

<style>
    .navlinks {
        @apply gap-4;
        display: flex;
    }

    .navlinks a {
        @apply font-semibold px-2 py-1 rounded;
        display: block;
		transition-duration: 300ms;
    }

    .navlinks a:hover {
        @apply bg-yellow-100 text-slate-950;
    }

    .navlinks a.active {
		@apply bg-yellow-400 text-slate-950;
        font-weight: bold;
    }
</style>