MATCH
(e0:Event)-[]->(e1:Event)-[]->(e2:Event)-[]->(e3:Event)-[]->(e4:Event),
(e0)-[]->(f0:Fact),
(e1)-[]->(f1:Fact),
(e2)-[]->(f2:Fact),
(e3)-[]->(f3:Fact),
(e4)-[]->(f4:Fact)
WHERE
0.03125 <= e0.duration AND e0.duration <= 0.125 AND
f0.class = "e" AND f0.octave = 5 AND
0.03125 <= e1.duration AND e1.duration <= 0.125 AND
f1.class = "d" AND f1.octave = 5 AND
0.03125 <= e2.duration AND e2.duration <= 0.125 AND
f2.class = "c" AND f2.octave = 5 AND
0.03125 <= e3.duration AND e3.duration <= 0.125 AND
f3.class = "b" AND f3.octave = 4 AND
0.03125 <= e4.duration AND e4.duration <= 0.125 AND
f4.class = "a" AND f4.octave = 4
RETURN
f0.class AS pitch_0, f0.octave AS octave_0, e0.duration AS duration_0, e0.start AS start_0, e0.end AS end_0, e0.id AS id_0,
f1.class AS pitch_1, f1.octave AS octave_1, e1.duration AS duration_1, e1.start AS start_1, e1.end AS end_1, e1.id AS id_1,
f2.class AS pitch_2, f2.octave AS octave_2, e2.duration AS duration_2, e2.start AS start_2, e2.end AS end_2, e2.id AS id_2,
f3.class AS pitch_3, f3.octave AS octave_3, e3.duration AS duration_3, e3.start AS start_3, e3.end AS end_3, e3.id AS id_3,
f4.class AS pitch_4, f4.octave AS octave_4, e4.duration AS duration_4, e4.start AS start_4, e4.end AS end_4, e4.id AS id_4,
e0.source AS source, e0.start AS start, e4.end AS end;