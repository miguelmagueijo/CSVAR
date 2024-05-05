import crypto from "crypto";
import sqlite3 from "sqlite3";
import path from "node:path";

console.log("[INFO] Opening database...");

const db = new sqlite3.Database(path.dirname(import.meta.url).split("///")[1] + "/csvar.sqlite");
console.log("[INFO] Opened database with success.");

db.serialize(() => {
	for (let i = 0; i < 5; i++) {
		const code = crypto.randomBytes(32).toString("hex");
		db.run("INSERT INTO auth_code (id) VALUES (:code);", { ":code": code });
		console.log(`[INSERT] Code "${code}" was successfully added`);
	}
});

db.close();
console.log("[INFO] Database closed.");