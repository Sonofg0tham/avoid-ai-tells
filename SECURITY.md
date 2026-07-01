# Security and provenance

This is a Claude skill: text that an AI agent reads and then follows, often with access to your files and shell. Treat it like any other dependency in your supply chain. A tampered copy can carry instructions the original never had.

## The only official source

The single canonical source of this skill is:

**https://github.com/Sonofg0tham/avoid-ai-tells**

Anything else (a fork, a gist, a mirror, a copy bundled into another project) is not maintained by me and has not been checked. A fork can look identical and still have malicious instructions added to `SKILL.md` or the reference files. Prompt injection in a skill is a real risk, not a theoretical one.

## Verify before you install

Every tagged release ships a `avoid-ai-tells.skill` package and its SHA256 checksum in the release notes. Check the file you downloaded matches before installing it.

Windows (PowerShell):
```powershell
(Get-FileHash avoid-ai-tells.skill -Algorithm SHA256).Hash
```

macOS / Linux:
```bash
shasum -a 256 avoid-ai-tells.skill
```

If the hash does not match the one in the release notes, do not install it. Get it from the official releases page instead.

Release tags are signed. On GitHub a genuine release shows a green "Verified" badge next to the tag. A fork cannot reproduce that signature.

## If you install from source

Read `SKILL.md` and everything in `references/` before you point an agent at it. You are about to let an assistant follow those instructions. That five-minute read is the same habit you would apply to any script you found online.

## Reporting a vulnerability

If you find a security issue (a way to smuggle malicious instructions in, a bug in the packaging scripts, anything that could harm someone who installs this), please report it privately rather than opening a public issue.

- Preferred: use GitHub's private vulnerability reporting on this repo (the "Report a vulnerability" button under the Security tab). Enable it in Settings > Security if it isn't on yet.
- Please include what you found, how to reproduce it, and the impact you think it has.

I'll acknowledge reports as fast as I reasonably can and credit you if you'd like once any fix is out.
