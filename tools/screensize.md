---
layout: layouts/base.njk
---

# What is my Screen Size?

<div id="result"></div>

<script>
    let width = window.screen.width;
    let height = window.screen.height;
    
    let el = document.getElementById("result");
    el.innerText = `${width}x${height}`;
</script>

