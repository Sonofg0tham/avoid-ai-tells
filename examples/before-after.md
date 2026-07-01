# Before and After

Worked examples showing the skill in action across registers. The "before" version is plausible AI output. The "after" is what the skill produces. Each note says which tells were fixed.

---

## 1. Project README intro

**Before**
> In today's fast-paced development landscape, **TokenGuard** stands as a powerful, robust, and seamless solution for managing API secrets. By leveraging cutting-edge encryption, it doesn't just store your keys — it transforms how your team thinks about security. Whether you're a solo developer or a large enterprise, TokenGuard has you covered.

**After**
> TokenGuard stores API keys encrypted at rest and injects them into your build at runtime, so secrets never sit in plaintext in your repo or your CI logs. It works the same whether you have one key or two hundred.

Fixed: generic opening, bold overkill, rule of three ("powerful, robust, seamless"), negative parallelism ("doesn't just store, it transforms"), cursed vocab (leverage, robust, seamless, cutting-edge), false range ("solo developer or large enterprise"), puffery. Added a concrete specific (what it actually does).

---

## 2. Release notes

**Before**
> We're thrilled to announce v2.1! 🚀 This release marks a pivotal moment in our journey, delivering a host of exciting improvements that will elevate your workflow. Moreover, we've squashed several bugs, further solidifying our commitment to quality.

**After**
> v2.1 is out. The big change: scans now run in parallel, so a full repo scan that took 90 seconds now takes about 25. We also fixed the crash when a `.env` file had no trailing newline.

Fixed: emoji in heading, sycophancy ("thrilled"), puffery ("pivotal moment in our journey"), -ing significance tail ("further solidifying"), conjunctive crutch ("Moreover"), cursed vocab (elevate, host of). Added real numbers and a specific bug.

---

## 3. LinkedIn post

**Before**
> I'm excited to share that I've completed my Security+ certification! 🎉 This journey has been incredibly rewarding. It's not just a certificate — it's a testament to months of hard work, dedication, and perseverance. Grateful for everyone who supported me on this path. Onwards and upwards! 💪

**After**
> Passed Security+ this week. The part that actually stuck with me was the risk-management section. I went in thinking it was box-ticking and came out using the same threat-modelling logic on a side project the next day. Happy to share my study notes if anyone's sitting it soon.

Fixed: sycophantic opener, emoji, negative parallelism ("not just a certificate, it's a testament"), rule of three ("hard work, dedication, perseverance"), cliché closer. Added a real opinion and a concrete offer.

---

## 4. Cover letter paragraph

**Before**
> As a passionate and detail-oriented professional, I am excited to leverage my robust skill set to drive impactful results in this role. My multifaceted experience has equipped me with the tools to navigate complex challenges and foster collaborative environments.

**After**
> I spent the last three years in SIEM and endpoint security at a large telecoms operator, mostly tuning detection rules and cutting alert noise. In one quarter I reduced false positives on our endpoint alerts by about 40%, which gave the on-call team their evenings back.

Fixed: cursed vocab (leverage, robust, multifaceted, navigate, foster, impactful), no-specifics-no-stance. Replaced adjectives about the person with a thing the person did and a number.

---

## 5. Blog post opening

**Before**
> When it comes to securing your CI/CD pipeline, there are a myriad of factors to consider. In this article, we'll delve into the intricate world of pipeline security and explore how you can unlock its full potential. From secret scanning to dependency checks, the possibilities are endless.

**After**
> Most pipeline breaches I've read about come down to one of two things: a leaked secret or a poisoned dependency. This post covers how to catch both before they ship, using tools you can add to a GitHub Actions workflow in an afternoon.

Fixed: generic opening, cursed vocab (myriad, delve, intricate, unlock), false range ("from X to Y"), vague filler ("possibilities are endless"). Added a stance and a concrete scope.

---

## What to notice

The "after" versions are shorter, but that's a side effect, not the goal. The real change is that each one says something only a person who did the work could say: a number, a specific bug, an actual opinion. Strip the slop and you're forced to put real content in its place. That's the point.
