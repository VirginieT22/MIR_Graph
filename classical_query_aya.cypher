MATCH
p0 = (e0:Event)-[:NEXT*1..2]->(e1:Event),
p1 = (e1:Event)-[:NEXT*1..2]->(e2:Event),
p2 = (e2:Event)-[:NEXT*1..2]->(e3:Event),
p3 = (e3:Event)-[:NEXT*1..2]->(e4:Event),
p4 = (e4:Event)-[:NEXT*1..2]->(e5:Event),
(e0)-[]->(f0:Fact),
(e1)-[]->(f1:Fact),
(e2)-[]->(f2:Fact),
(e3)-[]->(f3:Fact),
(e4)-[]->(f4:Fact),
(e5)-[]->(f5:Fact)
WITH
e0, e1, e2, e3, e4, e5,
f0, f1, f2, f3, f4, f5,
reduce(totalInterval = 0, rel IN relationships(p0) | totalInterval + rel.interval) AS totalInterval_0,
reduce(totalInterval = 0, rel IN relationships(p1) | totalInterval + rel.interval) AS totalInterval_1,
reduce(totalInterval = 0, rel IN relationships(p2) | totalInterval + rel.interval) AS totalInterval_2,
reduce(totalInterval = 0, rel IN relationships(p3) | totalInterval + rel.interval) AS totalInterval_3,
reduce(totalInterval = 0, rel IN relationships(p4) | totalInterval + rel.interval) AS totalInterval_4
WHERE
0.0625 <= e0.duration AND e0.duration <= 0.25 AND 0.0 <= totalInterval_0 AND totalInterval_0 <= 1.0 AND
0.0625 <= e1.duration AND e1.duration <= 0.25 AND 0.5 <= totalInterval_1 AND totalInterval_1 <= 1.5 AND
0.0625 <= e2.duration AND e2.duration <= 0.25 AND -0.5 <= totalInterval_2 AND totalInterval_2 <= 0.5 AND
0.0625 <= e3.duration AND e3.duration <= 0.25 AND -0.5 <= totalInterval_3 AND totalInterval_3 <= 0.5 AND
0.0625 <= e4.duration AND e4.duration <= 0.25 AND 0.5 <= totalInterval_4 AND totalInterval_4 <= 1.5 AND
0.0625 <= e5.duration AND e5.duration <= 0.25 AND
e0.end >= e1.start - 0.125 AND e1.end >= e2.start - 0.125 AND e2.end >= e3.start - 0.125 AND e3.end >= e4.start - 0.125 AND e4.end >= e5.start - 0.125
RETURN
f0.class AS pitch_0, f0.octave AS octave_0, e0.duration AS duration_0, e0.start AS start_0, e0.end AS end_0, e0.id AS id_0, totalInterval_0 AS interval_0,
f1.class AS pitch_1, f1.octave AS octave_1, e1.duration AS duration_1, e1.start AS start_1, e1.end AS end_1, e1.id AS id_1, totalInterval_1 AS interval_1,
f2.class AS pitch_2, f2.octave AS octave_2, e2.duration AS duration_2, e2.start AS start_2, e2.end AS end_2, e2.id AS id_2, totalInterval_2 AS interval_2,
f3.class AS pitch_3, f3.octave AS octave_3, e3.duration AS duration_3, e3.start AS start_3, e3.end AS end_3, e3.id AS id_3, totalInterval_3 AS interval_3,
f4.class AS pitch_4, f4.octave AS octave_4, e4.duration AS duration_4, e4.start AS start_4, e4.end AS end_4, e4.id AS id_4, totalInterval_4 AS interval_4,
f5.class AS pitch_5, f5.octave AS octave_5, e5.duration AS duration_5, e5.start AS start_5, e5.end AS end_5, e5.id AS id_5,
e0.source AS source, e0.start AS start, e5.end AS end
has context menu;