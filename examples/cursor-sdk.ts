/**
 * Local Cursor Agent that loads this repo's skills from .cursor/skills/
 *
 *   npm i @cursor/sdk
 *   export CURSOR_API_KEY="cursor_..."
 *   npx tsx examples/cursor-sdk.ts
 *
 * Cloud: clone this GitHub repo as the agent workspace so the same
 * .cursor/skills folders exist on the VM.
 */
import { Agent } from "@cursor/sdk";
import { fileURLToPath } from "node:url";
import path from "node:path";

const repoRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");

const prompt =
  process.argv.slice(2).join(" ") ||
  "Design an original Discord pack for a dark Arabic shop server named Qamar. Tokens first, then icon 512, banner 1920x1080, welcome with avatar hole, info, and a thin line.";

const agent = await Agent.create({
  apiKey: process.env.CURSOR_API_KEY!,
  model: { id: "composer-2.5" },
  local: { cwd: repoRoot },
});

try {
  const run = await agent.send(prompt);
  for await (const event of run.stream()) {
    if (event.type === "assistant") {
      for (const block of event.message.content) {
        if (block.type === "text") process.stdout.write(block.text);
      }
    }
  }
  const result = await run.wait();
  if (result.status === "error") {
    console.error("\nrun failed:", result.id);
    process.exit(2);
  }
} finally {
  await agent[Symbol.asyncDispose]();
}
