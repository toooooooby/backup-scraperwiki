# python view guide tutorial
# http://scraperwiki.com/docs/python/python_view_guide/

# 1
print "This is a <em>fragment</em> of HTML."

# 2
import scraperwiki
scraperwiki.sqlite.attach("school_life_expectancy_in_years")
data = scraperwiki.sqlite.select(
    '''* from school_life_expectancy_in_years.swdata
    order by years_in_school desc limit 10'''
)
print data

# 3
print "<table>"
print "<tr><th>Country</th><th>Years in school</th>"
for d in data:
    print "<tr>"
    print "<td>", d["country"], "</td>"
    print "<td>", d["years_in_school"], "</td>"
    print "</tr>"
print "</table>"