module Stub exposing (..) 
import Json.Decode as Decode
import Models exposing (Story)
import Json.Decode.Pipeline exposing (decode, required)
-- playersDecoder : Decode.Decoder (List Player)
-- playersDecoder = 
--     Decode.list playerDecoder

itemDecoder : Decode.Decoder Story
itemDecoder = 
    decode Story
        |> required "by" Decode.string 
        |> required "descendants" Decode.int
        |> required "id" Decode.int
        |> required "kids" (Decode.list Decode.int)
        |> required "score" Decode.int
        |> required "time" Decode.int
        |> required "title" Decode.string
        |> required "url" Decode.string
        |> required "type" Decode.string

stories : String 
stories = """[ 15741565, 15742287, 15742107, 15742489, 15742304, 15739744, 15741381, 15741428, 15741978, 15742507, 15742800, 15741802, 15741750, 15741108, 15739874, 15740926, 15742854, 15739037, 15738739, 15742228, 15741894, 15742582, 15742016, 15739877, 15739233, 15737725, 15739917, 15732971, 15741732, 15739731, 15741019, 15738583, 15743524, 15738386, 15741787, 15741729, 15738697, 15742917, 15742225, 15740091, 15738704, 15737944, 15740777, 15737702, 15737611, 15739999, 15742424, 15738560, 15740148, 15740412, 15738492, 15738550, 15739800, 15742695, 15737734, 15742176, 15741999, 15735006, 15741133, 15741013, 15741914, 15738698, 15734416, 15736344, 15739497, 15742751, 15741726, 15742513, 15737288, 15735078, 15742493, 15734693, 15739711, 15736090, 15737333, 15735350, 15732926, 15741305, 15737665, 15732248, 15740394, 15735188, 15737989, 15737137, 15736222, 15738806, 15734587, 15737008, 15731233, 15738592, 15723926, 15737269, 15736121, 15739003, 15735439, 15738441, 15736573, 15738392, 15739771, 15734535, 15738322, 15730113, 15741202, 15738529, 15739125, 15732460, 15736734, 15728147, 15738341, 15731639, 15738694, 15730262, 15730864, 15728825, 15736176, 15738523, 15733339, 15735041, 15736644, 15725208, 15735319, 15723393, 15732161, 15729794, 15714920, 15740037, 15729195, 15727823, 15737215, 15736413, 15714318, 15722299, 15732087, 15733760, 15727801, 15719262, 15731052, 15733910, 15739791, 15732215, 15729616, 15726376, 15735890, 15724609, 15733540, 15733642, 15719254, 15732752, 15736298, 15739500, 15728782, 15723317, 15736267, 15716990, 15730330, 15731913, 15741717, 15721268, 15733563, 15731369, 15722108, 15739538, 15730780, 15711908, 15720448, 15735317, 15718686, 15733698, 15727115, 15733745, 15730218, 15715874, 15736232, 15730176, 15710956, 15736673, 15733929, 15727896, 15734035, 15728881, 15737801, 15721153, 15738462, 15720995, 15732180, 15717170, 15722135, 15738942, 15731367, 15734150, 15738915, 15726343, 15734169, 15720923, 15725533, 15712377, 15733678, 15720314, 15716501, 15734119, 15732540, 15734207, 15727000, 15723323, 15724656, 15735603, 15725291, 15730055, 15725759, 15723661, 15738635, 15722697, 15730858, 15713185, 15735903, 15733705, 15718434, 15737348, 15731936, 15730018, 15721234, 15730318, 15727346, 15723772, 15725942, 15733629, 15731079, 15710533, 15727885, 15711767, 15733459, 15720892, 15736102, 15735714, 15720542, 15735016, 15733400, 15718653, 15713511, 15721805, 15736110, 15719853, 15728814, 15724663, 15719294, 15734378, 15716221, 15737230, 15729455, 15718994, 15712117, 15710021, 15725879, 15729797, 15731708, 15726923, 15733906, 15710714, 15733822, 15727516, 15723943, 15730279, 15736410, 15711604, 15727749, 15734563, 15725436, 15728376, 15719751, 15710605, 15726584, 15726511, 15723249, 15726330, 15719327, 15734666, 15712666, 15714352, 15731613, 15716979, 15714829, 15735261, 15728499, 15714989, 15716702, 15735825, 15718337, 15718470, 15712701, 15731554, 15721911, 15724797, 15730199, 15711950, 15729145, 15723461, 15728416, 15729471, 15715805, 15723984, 15723395, 15727827, 15711878, 15713962, 15715594, 15729990, 15720343, 15733672, 15710230, 15717092, 15711373, 15733722, 15717649, 15712270, 15732432, 15734562, 15725453, 15721340, 15713782, 15727948, 15727166, 15739581, 15728966, 15736349, 15735753, 15735696, 15726399, 15733828, 15733079, 15733386, 15711789, 15723838, 15712163, 15726312, 15735343, 15712015, 15721466, 15725835, 15714366, 15730368, 15730426, 15738291, 15728573, 15710667, 15733742, 15728459, 15713505, 15716559, 15734737, 15716123, 15715241, 15721758, 15719595, 15729222, 15710051, 15710930, 15727585, 15715727, 15715547, 15734604, 15724335, 15722273, 15712234, 15727207, 15730004, 15716430, 15724731, 15730539, 15724192, 15712249, 15730337, 15712744, 15711274, 15733673, 15725830, 15724095, 15725762, 15725753, 15723544, 15712937, 15711418, 15721096, 15725771, 15716860, 15732628, 15725108, 15728005, 15722403, 15717372, 15721259, 15717789, 15716833, 15724224, 15710501, 15727159, 15725724, 15718216, 15720107, 15725399, 15714217, 15733381, 15709905, 15726200, 15727057, 15713282, 15712123, 15716906, 15722666, 15727716, 15712003, 15725457, 15728295, 15732450, 15726445, 15719164, 15717777, 15712098, 15728042, 15722701, 15710794, 15730241, 15729218, 15730212, 15728665, 15720474, 15728571, 15713663, 15716162, 15725777, 15725729, 15719240, 15731603, 15722849, 15714213, 15713584, 15722747, 15712822, 15717759, 15728174, 15712113, 15728683, 15716436, 15728536, 15727400, 15721332, 15722485, 15717546, 15717486, 15726140, 15727941, 15710685, 15730743, 15726545, 15729354, 15724055, 15725617, 15719910, 15711693, 15717824, 15727247, 15722325, 15710111, 15727091, 15726922, 15716898, 15716858, 15720177, 15729439, 15726222, 15725863, 15728299, 15730359, 15724351, 15710276, 15723263, 15727807, 15727746, 15723592, 15727632, 15710510, 15718262, 15727455, 15718110, 15718106, 15721095, 15714437, 15717303, 15726903, 15709775, 15716713, 15716478, 15726599, 15720047, 15715652, 15712899, 15726286, 15714943, 15725651, 15725198, 15730981 ]"""

idsDecoder : Decode.Decoder (List Int)
idsDecoder = 
    Decode.list Decode.int

json : String 
json = """{
  "by" : "dhouston",
  "descendants" : 71,
  "id" : 8863,
  "kids" : [ 8952, 9224, 8917, 8884, 8887, 8943, 8869, 8958, 9005, 9671, 9067, 8940, 8908, 9055, 8865, 8881, 8872, 8873, 8955, 10403, 8903, 8928, 9125, 8998, 8901, 8902, 8907, 8894, 8878, 8980, 8870, 8934, 8876 ],
  "score" : 111,
  "time" : 1175714200,
  "title" : "My YC app: Dropbox - Throw away your USB drive",
  "type" : "story",
  "url" : "http://www.getdropbox.com/u/2/screencast.html"
}"""

 -- https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty
 
 
arr : List Int 
arr = [1, 2, 3, 4, 5, 6, 6, 7, 4, 6, 6, 7, 4, 8, 77, 44, 5, 6, 7, 7, 7, 4, 4, 4, 2, 2, 5, 6, 7, 7, 7, 3, 3,3, 2, 4, 5, 5666]