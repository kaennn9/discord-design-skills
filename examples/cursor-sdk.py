"""
Local Cursor Agent that loads this repo's skills from .cursor/skills/

    pip install cursor-sdk
    set CURSOR_API_KEY=cursor_...
    python examples/cursor-sdk.py
"""

from __future__ import annotations

import os
import sys
from pathlib import Path

from cursor_sdk import Agent, AgentOptions, LocalAgentOptions

REPO_ROOT = Path(__file__).resolve().parents[1]

PROMPT = (
    " ".join(sys.argv[1:])
    or "Design an original Discord pack for a dark Arabic shop server named Qamar. Tokens first, then icon 512, banner 1920x1080, welcome with avatar hole, info, and a thin line."
)


def main() -> None:
    api_key = os.environ.get("CURSOR_API_KEY")
    if not api_key:
        raise SystemExit("Set CURSOR_API_KEY first.")

    with Agent.create(
        AgentOptions(
            api_key=api_key,
            model="composer-2.5",
            local=LocalAgentOptions(cwd=str(REPO_ROOT)),
        )
    ) as agent:
        run = agent.send(PROMPT)
        for message in run.messages():
            if message.type == "assistant":
                for block in message.message.content:
                    if block.type == "text":
                        print(block.text, end="")
        result = run.wait()
        if result.status == "error":
            raise SystemExit(f"run failed: {result.id}")


if __name__ == "__main__":
    main()
