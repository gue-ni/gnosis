# Birthdays

| Date       | Name                     |
| ---------- | ------------------------ |
| 1999-04-18 | Rachel Bouska            |
| 1998-11-06 | Clemens Lang             |
| 1971-05-31 | Dietmar Maier            |
| 2000-01-27 | Lina Maier               |
| 1972-01-04 | Birgit Maier             |
| 1946-12-07 | Erich Maier              |
| 1986-08-30 | Daniela Florineth        |
| 1986-04-15 | Andreas Florineth        |
| 2006-03-25 | Hannah & Laura Sauerwein |
| 1950-04-05 | Hubert Santner           |
| 1973-01-10 | Martina Sauerwein        |
| 1970-10-30 | Christian Sauerwein      |
| 1999-11-11 | Ludwig Draxler           |
| 2014-12-31 | Theo Florineth           |
| 1972-04-07 | Judith Schäfer           |
| 1999-01-07 | Anja Burtscher           |
| 1946-01-30 | Günther Santner          |
| 1999-03-14 | Natalie Steiner          |
| 1999-06-10 | Gloria Preite            |
| 1998-06-19 | Julia Köttler            |
| 2000-07-25 | Lena & Laura Zerlauth    |
| 1999-09-11 | Stefan Scheibl           |
| 1999-09-06 | Steffi Thaller           |

<script>
  function sort_birthdays(data){
    let arr = data.slice(1)
    arr.sort((a, b) => {
      let ad = new Date(a[0]);
      let bd = new Date(b[0]);
      let month_diff = ad.getMonth() - bd.getMonth();
      if (month_diff == 0){
        return ad.getDate() - bd.getDate();
      } else {
        return month_diff;
      }
    })

    return arr;
  }

  function write_to_table(table, data){
    for (let i = 1; i < table.rows.length; i++)
    {
      let row = table.rows[i];
      row.children[0].innerText = data[i-1][0]
      row.children[1].innerText = data[i-1][1]
    }

    console.log("wrote",{table})
  }

  const table = document.querySelector('table');
  const data = [...table.rows].map(t => [...t.children].map(u => u.innerText))
  console.log({data})
  let sorted = sort_birthdays(data);
  write_to_table(table, sorted);
</script>
