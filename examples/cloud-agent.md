# Cloud Agent API

Clone **this** GitHub repo as the cloud workspace. Cursor loads `.cursor/skills/` from the cloned repo automatically.

## TypeScript

```ts
import { Agent } from "@cursor/sdk";

await using agent = await Agent.create({
  apiKey: process.env.CURSOR_API_KEY!,
  model: { id: "composer-2.5" },
  cloud: {
    repos: [
      {
        url: "https://github.com/YOUR_USER/discord-skills",
        startingRef: "main",
      },
    ],
  },
});

const run = await agent.send(
  "Use discord-pack-design. Make an original gold/black Discord pack named Sable."
);
await run.wait();
```

Replace `YOUR_USER/discord-skills` with the repo URL after you push.

## REST `/v1/agents`

Same idea: `source.repository.url` must be this skills repo (or any repo that contains `.cursor/skills/discord-pack-design` and `discord-server-design`).
