<h1 class="text-center text-4xl text-yellow-400 font-bold mb-4">
	Showcase and track new cheater
</h1>
<div class="w-[600px] mx-auto">
	<p class="text-justify mb-10">
		In order to showcase and track a new cheater in CSVAR you need to fill in some fields.
		<br>
		After filling them out, your request will be verified and confirmed.
	</p>
	<form class="space-y-4" on:submit|preventDefault={() => console.log("here")}>
		<div>
			<label for="steam_id" class="block font-semibold text-lg mb-1">
				Cheater SteamID
			</label>
			<input id="steam_id" name="steam_id" type="text" class="w-full rounded text-slate-950 p-1"
				   pattern="[0-9]{'{17}'}$" minlength="17" maxlength="17" placeholder="17 digits ID (ex: 76561197960287930)"
				   required />
			<small class="text-xs opacity-60">Must be in DEC and 64 bit</small>
		</div>
		<div>
			<label for="youtube_link" class="block font-semibold text-lg mb-1">
				Youtube link with parts of user cheating
			</label>
			<input id="youtube_link" name="youtube_link" type="text" class="w-full rounded text-slate-950 p-1"
				   pattern="https\:\/\/www\.youtube\.com\/watch\?v\=.{'{11,600}'}" minlength="17" maxlength="17"
				   placeholder="ex: https://www.youtube.com/watch?v=dQw4w9WgXcQ" required />
		</div>
		<button class="block py-2 px-8 border-2 border-yellow-400 rounded mt-4 mx-auto  duration-300
						hover:bg-yellow-400 hover:text-slate-950" type="submit">
			Submit request
		</button>
	</form>
</div>
