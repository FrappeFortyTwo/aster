---
title: "Sample"
description: "What mischief I've been upto"
imgURL: "/images/sample.png"
katex: "true"
---

# h1 Heading
## h2 Heading
### h3 Heading 
#### h4 Heading
##### h5 Heading
###### h6 Heading

---

**Bold**

*Italics*

> Pardon my French

I was talking about `that` thing

- One
- Two
- Three

1. One
2. Two
3. Three

- [ ] issue #786
- [x] deploy virus

```go {linenos=table,linenostart=1}
// GetTitleFunc returns a func that can be used to transform a string to
// title case.
//
// The supported styles are
//
// - "Go" (strings.Title)
// - "AP" (see https://www.apstylebook.com/)
// - "Chicago" (see https://www.chicagomanualofstyle.org/home.html)
//
// If an unknown or empty style is provided, AP style is what you get.
func GetTitleFunc(style string) func(s string) string {
  switch strings.ToLower(style) {
  case "go":
    return strings.Title
  case "chicago":
    return transform.NewTitleConverter(transform.ChicagoStyle)
  default:
    return transform.NewTitleConverter(transform.APStyle)
  }
}

```