This is the website for [psylink](https://psylink.me), generated with
[hugo](https://gohugo.io).

# Slug Naming Convention

The URL slugs for prototypes and components are kept intentionally short so one
can easily write them onto the physical object if desired.  For example, you
could write "psylink.me/b2" on the PCB, and this relatively short identifier
would also be a valid link.

Since they seem a little cryptical though, here's the convention:

- LETTER1 + OPTIONAL EXTRA LETTERS + NUMBER
- LETTER1: Category
- OPTIONAL EXTRA LETTERS: Subcategory
- NUMBER: Version or index
- Categories and subcategories:
    - b: circuit boards
        - bp: power modules
    - c: circuit schemas
    - p: prototypes
    - t: textiles
    - s: software
        - sa: Arduino software
        - sabt: Arduino software with bluetooth support
        - sg: GNURadio software
