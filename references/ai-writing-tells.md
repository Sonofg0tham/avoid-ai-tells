# AI Writing Tells: Full Catalogue

A field guide to patterns that mark text as AI-generated, adapted from Wikipedia's "Signs of AI writing" advice page and related write-ups. These are descriptive signals, not banned words. Any one of them can appear in genuine human writing. The concern is the cluster: when several show up together, the text reads as machine-made.

Use this when doing a careful rewrite. Work through the relevant sections, fix what applies, and stop short of sterilising the prose.

## Contents
1. Language and tone
2. Style and structure
3. Formatting and markup
4. Leftover chatbot residue
5. The over-correction trap

---

## 1. Language and tone

### Negative parallelism / antithesis
The strongest single tell. A contrast frame used for manufactured emphasis.
- Forms: "not X, but Y", "it's not just X, it's Y", "not only... but also...", "rather than X, it's Y".
- It can stretch across two sentences: "He came from a respected family. His path, however, took a different turn."
- Fix: collapse to a direct statement. Keep contrast only where the contrast is the actual point.

### Significance inflation / puffery
Inflating the subject by linking it to a broad theme or grand narrative.
- Tells: "marked a pivotal moment in", "stands as a testament to", "plays a vital / crucial / key role in", "represented a significant shift", "was part of a broader movement to", "cemented its place in history".
- Fix: state the plain fact and drop the grandeur. If the importance is real, show it with a concrete consequence instead of asserting it.

### The trailing -ing significance clause
A sentence ends with a participial phrase that editorialises about meaning.
- Tells: "..., highlighting its importance", "..., reflecting a wider trend", "..., underscoring the need for", "..., showcasing its versatility", "..., further solidifying its legacy".
- Fix: delete the clause. It almost never carries information.

### Promotional / editorialising tone
Writing that admires its subject, like travel brochure or marketing copy where neutral prose belongs. Common with heritage, culture, places, people.
- Tells: "rich cultural heritage", "breathtaking", "nestled in the heart of", "vibrant tapestry of", "stunning natural beauty", "must-visit".
- Fix: report, don't sell. Replace adjectives with facts.

### False range / fake spectrum
"From X to Y" implying a span, where X and Y are just two loosely linked things.
- Tells: "from intimate gatherings to global movements", "from technical expertise to creative vision", "whether you're a beginner or a seasoned pro".
- Fix: name the two things directly, or pick the one that matters.

### Cursed vocabulary
Words now so overused by AI they read as a tell. Not banned, but reach for plainer options first.
- delve, tapestry, pivotal, underscore, landscape (figurative), foster, testament, intricate, crucial, realm, navigate (figurative), leverage, utilise, robust, seamless, multifaceted, nuanced, vibrant, bustling, ever-evolving, ever-changing, game-changer, unlock, harness, elevate, embark, myriad, plethora, boasts, showcase, dive into, treasure trove, beacon, cornerstone, paramount, indelible.
- Fix: use, help, build, important, area, plenty, has, show. Simpler is more human.

### Conjunctive overuse
Formal sentence-opening connectors used as glue.
- Tells: "Moreover", "Furthermore", "Additionally", "In addition", "Notably", "Importantly", "It is worth noting that", "It is important to note that".
- Fix: cut the connector or use "and", "also", "but". "It's worth noting that X" almost always reduces to "X".

### Hedging and false balance
Refusing to commit. Presenting both sides of everything as equally weighted to seem neutral.
- Tells: "Some argue... while others contend...", "It depends on a variety of factors", "There is no one-size-fits-all answer".
- Fix: take a position. Where genuine uncertainty exists, say what you'd lean toward and why.

### Vague attribution
Claims sourced to no one in particular.
- Tells: "Experts say", "Studies show", "It is widely believed", "Many people consider".
- Fix: name the source, or drop the appeal to authority and make the claim on its own merits.

---

## 2. Style and structure

### Rule of three
Defaulting to triplets: three adjectives, three list items, three examples, three-part sentences.
- Tell: "innovative, transformative, and groundbreaking"; lists that are always exactly three long.
- Fix: vary the count. Two is punchier. Four breaks the rhythm. One strong word often wins.

### Uniform sentence and paragraph rhythm
Every sentence around the same length, every paragraph the same size. Mechanical, lifeless cadence.
- Fix: mix long and short. A three-word sentence after a long one creates emphasis. Use fragments where they fit.

### Compulsive summary
Restating what was just said, even when the passage is too short to need it.
- Tells: "In conclusion", "Overall", "In summary", "To sum up", "Ultimately", a closing paragraph that recaps a 200-word piece.
- Fix: end on the last real point. Trust the reader.

### Lack of specific or personal detail
The text explains and generalises but never anchors anything in a concrete instance, number, or lived experience. The biggest "soul" tell.
- Fix: add one real example. "This broke for us when we migrated the auth service." A specific beats a general every time.
- Guardrail: the specific has to be real. If you don't know it, put a marked placeholder in the text (`[add the actual number]`), not a plausible guess with a "verify this" note on the side. Readers copy the text and skip the notes.

### Generic openings
Throat-clearing intros that say nothing.
- Tells: "In today's fast-paced world", "In the ever-evolving landscape of", "When it comes to X", "One of the most important things to consider is".
- Fix: open on the actual point. Delete the runway.

### Section-summary repetition
Each section restates its own heading, then says the same thing again in the closing line. Padding.
- Fix: cut the repeats. Say it once.

---

## 3. Formatting and markup

### Bold overkill
Bolding key terms throughout like a textbook trying to help you revise.
- Fix: bold sparingly, if at all. Let the sentence carry the emphasis.

### Bullets where prose belongs
Turning flowing explanation into a bulleted list when paragraphs would read better, or numbering things that aren't a sequence.
- Fix: use lists only for genuine lists (steps, options, items). Otherwise write sentences.

### Bold-lead bullets that restate themselves
The pattern where each bullet starts with a bold phrase, then the sentence just rewords that phrase.
- Tell: "**Scalability:** The system is designed to scale easily." (The colon clause adds nothing.)
- Fix: drop the bold lead, or make the explanation add real information.

### Emoji in headings and decorative emoji
Rocket and check-mark emoji in headers, emoji bullets. Near-nonexistent in serious human writing.
- Fix: remove them unless the register genuinely calls for it.

### Em dash and hyphen misuse
- AI overuses the spaced em dash (— like this —) where a comma or brackets fit, and uses it in a formulaic, salesy way.
- AI also tends to skip the en dash (–) entirely, using a hyphen for ranges (1990-2000, scores like 3-2) where an en dash belongs.
- Fix: replace stray em dashes with commas, brackets, or full stops. Use en dashes for ranges if the house style wants them.

### Title case and inconsistent heading style
Over-capitalising headings, or markdown formatting left in where the destination doesn't use markdown.
- Fix: match the target platform's conventions.

### Curly vs straight quotes, and stray markdown
Pasted text often carries markdown artefacts (stray asterisks, backticks) or quote styles that don't match the surroundings.
- Fix: normalise to the destination.

---

## 4. Leftover chatbot residue

Signs the text was pasted straight from a chatbot without editing. Obvious, but they happen.
- Sycophantic openers: "Great question!", "Certainly!", "Absolutely!", "I'd be happy to help".
- Meta-commentary about the response: "Here's a draft for you", "I hope this helps", "Feel free to adjust".
- Direct address to the user mid-text: "As you requested", "Let me know if you'd like changes".
- Refusal or hedging fragments: "As an AI language model", "I cannot provide".
- Placeholder text left in: "[insert detail here]", "[Company Name]".
- Fix: strip all of it. Real published text never addresses the prompt-giver.

---

## 5. The over-correction trap

Removing every tell at once produces writing that is stiff, hollow, and paradoxically more obviously machine-made. Some signs to watch for in over-corrected text:
- Trying so hard to vary sentence length that the rhythm feels random.
- Stuffing in forced "personal" detail that doesn't fit.
- Replacing every slightly formal word with slang until the register is wrong for the context.
- Banning a word the sentence genuinely needs.

The fix for AI writing is not a different set of rules applied mechanically. It's a person with judgement deciding what to say and saying it plainly. Apply the catalogue where it helps. Leave good writing alone.
