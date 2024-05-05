<script lang="ts">
    import { currPage } from "$lib/stores";

    $currPage = "home";
</script>

<div class="w-[650px] mx-auto">
    <form>
        <div>
            <label for="search-id" class="block text-xl font-bold">Search player</label>
            <input id="search-id" class="w-full rounded px-2 py-1 text-slate-950 mt-2 text-lg text-center" type="text"
                   placeholder="SteamID">
        </div>
    </form>

    <div class="grid grid-cols-3 gap-4 mt-10">
        <div class="stats-div">
            <p>
                0
            </p>
            <h2>
                Total cheaters
            </h2>
        </div>
        <div class="stats-div">
            <p>
                0
            </p>
            <h2>
                Banned
            </h2>
        </div>
        <div class="stats-div">
            <p>
                0
            </p>
            <h2>
                Not banned
            </h2>
        </div>
    </div>
</div>

<style>
    .stats-div {
        @apply border-2 border-slate-50/30 bg-slate-900 rounded py-4;
        text-align: center;
    }

    .stats-div h2 {
        @apply text-sm;
    }

    .stats-div p {
        @apply text-4xl mb-2;
        text-align: center;
        font-weight: bold;
    }
</style>