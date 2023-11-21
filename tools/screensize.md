---
layout: layouts/base.njk
---

# What Is My Screen Size?

<div id="result"></div>

<script>
    let el = document.getElementById("result");
    el.innerText = `${window.screen.width}x${window.screen.height}`;
</script>

