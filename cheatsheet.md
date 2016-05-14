# SQL Cheat Sheet


## General SQL structure

Basically all you really need to know.

```sql
SELECT <columns>
FROM <table>
[INNER|LEFT|RIGHT|FULL OUTER] JOIN <otherTable>
ON <table.key> = <otherTable.key>
WHERE <condition>
GROUP BY <columns>
HAVING <condition>
ORDER BY <columns> [DESC|ASC]
LIMIT <number>
```

