select current_database();
select current_schema();
use database Advent2023;
SELECT version();

set schema Advent;

/*
DROP TABLE AOC_INPUT;
CREATE TABLE AoC_Input (
	   DAYNUM Decimal(10,0)
    , INPUT_TYPE VARCHAR(1)
    , ROWN  DECIMAL(10,0)
    , DAY_INPUT VARCHAR(10000000)
)*/

--delete from AoC_Input where daynum=3 and input_type = 'T';
INSERT INTO AoC_Input (DAYNUM, INPUT_TYPE, ROWN, DAY_INPUT)
VALUES
( 3, 'T', 1, '467..114..' ),
( 3, 'T', 2, '...*......' ),
( 3, 'T', 3, '..35..633.' ),
( 3, 'T', 4, '......#...' ),
( 3, 'T', 5, '617*......' ),
( 3, 'T', 6, '.....+.58.' ),
( 3, 'T', 7, '..592.....' ),
( 3, 'T', 8, '......755.' ),
( 3, 'T', 9, '...$.*....' ),
( 3, 'T', 10, '.664.598..' )
;


INSERT INTO AoC_Input (DAYNUM, INPUT_TYPE, ROWN, DAY_INPUT)
VALUES
( 3, 'P', 1, '..975..95..................717..........................................747................................................622..............' ),
( 3, 'P', 2, '................/47...........@....701...610.........252.660*.............*..236.....323..........108........653............................' ),
( 3, 'P', 3, '.......69............313..............$...$...*....@.........640........81.....*................................*332..92....................' ),
( 3, 'P', 4, '........................*...210.............767...912...367.......505.......817..................*.........478.........=....223.....568.....' ),
( 3, 'P', 5, '..76...968............108...@.....556.....................=..........*...............412..313...575......../...........................*107.' ),
( 3, 'P', 6, '............773/..891............*....................744.....805...14................../..../................320&.567..#...................' ),
( 3, 'P', 7, '.962..708............&........399....146.....385.................*..........825.......................................-..655....485...-.....' ),
( 3, 'P', 8, '...*.........+..........................*76...+..................242....997..*......185..........207.390..870...883............*.......337..' ),
( 3, 'P', 9, '....929...299....................*.................249........-...........*.373.....*.............*.....*.*....*.............549............' ),
( 3, 'P', 10, '................196.745.996...364..............409...-.926.....273.....580.........31...........545..547...862......810.....................' ),
( 3, 'P', 11, '................*.......*..............900+....*..........*........586.........936...................................*.........673..........' ),
( 3, 'P', 12, '.../..........864.683.215....*......%.........702..166..46..........&....341..........694..496.......528.%...........839...105..*...887.....' ),
( 3, 'P', 13, '....506...617.....*........51.807....942..424...............................*..........@..+............@.84...................*......=......' ),
( 3, 'P', 14, '...........@....594.........................*..........*675...........345..52...$..................-..............899.........804.$.........' ),
( 3, 'P', 15, '.362*366.................487+.48&.......600..180....845........................535...18...........397.#908....432*........229......346......' ),
( 3, 'P', 16, '.................*................835....................578......*502...............*..416.............................................391.' ),
( 3, 'P', 17, '....610&...514...501......./........*....*71.........../.......674......925...............*.869.....966........393................/.687.*...' ),
( 3, 'P', 18, '............*...............786...248.104........92.633.....%..............*104...&466..138..@.........*.525...+......974......339..=...260.' ),
( 3, 'P', 19, '....372/.889..............................55.406........134..250.=228..609...........................69...............*.....................' ),
( 3, 'P', 20, '...........................................*........976...*...........=.......357...........................191.....150.....................' ),
( 3, 'P', 21, '...-...........595.634.........*396......592..594......*......411.856...760....../..................201.....#...709................168......' ),
( 3, 'P', 22, '.936..236.........*....@....436.....100....../......35...../.....*........*....................917%............*.....................*..#63.' ),
( 3, 'P', 23, '.......*..............542..........................*........689.........26....667.&...................738....831..$.............513.53......' ),
( 3, 'P', 24, '........10.....529........*250..........162.......390...........................*..70.............................701..........*............' ),
( 3, 'P', 25, '..355.........&........394......301@..........542..............................142..........%..............%..........*.....507.............' ),
( 3, 'P', 26, '.....*.........................................*.....%..283.....*.........997&.......@670....402..........808......308.459.......712...152..' ),
( 3, 'P', 27, '..291......246.@....+986.....336/.......976...468.264...*....739.187.............................................................*.....*....' ),
( 3, 'P', 28, '........../....46...................186.$..............674............................227......-............975...............436.......492.' ),
( 3, 'P', 29, '.491........................810.......*........................772*.........742........%....198.....*702.......*.596=....64.......=.........' ),
( 3, 'P', 30, '...................706......=......415..................=.199......235......*...47........................72.607...................443......' ),
( 3, 'P', 31, '.214..............*.....771.............302...........230..+..............810.....*219.606........912.....................=.................' ),
( 3, 'P', 32, '......277......320.............937.....*.....+....632...........&374..............................*....................898.....642%.........' ),
( 3, 'P', 33, '.........#....................*.......716....229./.........................$................934...233...............98............../.......' ),
( 3, 'P', 34, '.....*........-659..457.........964...................659....786....619.666........277...@.....*......930*460..618...........910..265.......' ),
( 3, 'P', 35, '..845.877.343......................*537.../120.......*.......*.....*.................&...175..631.............=.................#...........' ),
( 3, 'P', 36, '............*....................+................@...35.949..34.381......273...880......................451........326.....................' ),
( 3, 'P', 37, '............876..880......827..733.......645.......38......*.........402.....+..........902....459.775........837.....*.185.......813.......' ),
( 3, 'P', 38, '........578................/............*...............622..18.........*234..............+....%..........448.......935....#.............350' ),
( 3, 'P', 39, '..........*...468.....546................588....146=.........*..142.795..............*424................../.....................=..........' ),
( 3, 'P', 40, '........245............@...746.......362..................970......*..............593...............487.......+.............709..593........' ),
( 3, 'P', 41, '...990......&415..............*381......*.....................435.......214..908..................*....*.....351.....876.25....*............' ),
( 3, 'P', 42, '......*............293*.....%...........271.............135......*......=........540............177....604...........&.....-.46..........166' ),
( 3, 'P', 43, '...609.....................910.................@........$.......321..........141....+.45.....................750......................98....' ),
( 3, 'P', 44, '.......#....779........944.....653...........797...........788.................*......+....164.724....475&...+.............-.471......&.....' ),
( 3, 'P', 45, '..794...487....&..81...........*...................@............666@.....*981.937.............*.....%..........888....+...81................' ),
( 3, 'P', 46, '.....*...........+......694.............748...104..859..............................675.434.......290.............*..352........353=..$.....' ),
( 3, 'P', 47, '...619.977.........859..#....235....230*......*..............429........335....-.......*......631.......=.......27...................192....' ),
( 3, 'P', 48, '.......*............=...........&.........121..680.195.959......*417.....*..938.............../..........739..#..............194.750........' ),
( 3, 'P', 49, '....309...439.............14...............*..........*...............723.........163..748...........853.....885.........175*........487....' ),
( 3, 'P', 50, '.............*707..-626..........464.....382................356...........868#....*...*.....13......*............450............#.....*.....' ),
( 3, 'P', 51, '........216......................*...619......$..270........*.....892............25.494.841*.....971.............*............157.+...119...' ),
( 3, 'P', 52, '...#40...../............343..559.425.......536........718....739...#.......284...............726.....985..136...597.621.173.......203.......' ),
( 3, 'P', 53, '................383............/......................*...................@....348............*.....*.......*........./...*...811.......*158' ),
( 3, 'P', 54, '...=..............$......@....................776.829.85...&........541.......*....*...&....700......341.995.....73......114....*....267....' ),
( 3, 'P', 55, '.700.203....591.*.....924..........$217.......@.....*.......590....*.........812.579....517.......................*.............730.........' ),
( 3, 'P', 56, '......#......*...586.........312..................806............435...259...........................573........453.282*132.243.............' ),
( 3, 'P', 57, '..........224.................#.......468@............-...%.............*..............453...................$.....................-........' ),
( 3, 'P', 58, '....................................................227.673....881......828..&.....632*...................589.....................284..-....' ),
( 3, 'P', 59, '.....680.........871....17+................117.................*.............506..................#...410...................616.........519.' ),
( 3, 'P', 60, '........*..386................78*762.........@........28..557.655.......359........-............124..#......&..........843./................' ),
( 3, 'P', 61, '......724...*..584.....552............................*...&.................209..857...633-..............602...932......*........132&.......' ),
( 3, 'P', 62, '..........41../.........*..........................#..427.............=370....*................................*...353...902...........529..' ),
( 3, 'P', 63, '.....................150.......868.......370....549.........779...................284...........431.....3.....889.............189..103.=....' ),
( 3, 'P', 64, '.......530..355..........442...*............*63............+.......852.....935.....*..............%.....*..................@....*.-.........' ),
( 3, 'P', 65, '..........*...*...976.....*...500....@...........572...........940....*990..*....627.790.................460..904..601-..821..930....699....' ),
( 3, 'P', 66, '..........643.824.......248........358...4.........&..301.........&........538.........*.%436....565..........*......................../....' ),
( 3, 'P', 67, '.768..$.....................186..........*...178........*.......................*.&520..............%........782..........497.-......*......' ),
( 3, 'P', 68, '......762..828*...972......*..............3.*.......................@....../..836...............278..............666......*...927.413.185...' ),
( 3, 'P', 69, '....&..........40.......86.122..........&....450....................1....202............42...51....*..............*.....215.................' ),
( 3, 'P', 70, '.353.................94*.................995.....655.....520...828....*...........612..........&.119...........486...............713........' ),
( 3, 'P', 71, '.........................255........................*.......+.....-..463..........*........235........836....................668............' ),
( 3, 'P', 72, '...................................................286........338........=.393....398........*....199./............631..........*631........' ),
( 3, 'P', 73, '................64%....704...928.........470...125............*....708.15...*.............193.......*........641....*......687..............' ),
( 3, 'P', 74, '........$..............*...................&.....*..........582......*....652.@358..643..........125.....458........168....$.......$194.....' ),
( 3, 'P', 75, '........293.........305......417...............117....................612............*......262.............*903............................' ),
( 3, 'P', 76, '.....$...................615*..........581.........335...139..505.419.............656.........+.......506................710.....956........' ),
( 3, 'P', 77, '776..110.....+............................-........#..........*....*...447......*......................*...*.....938.366*.......#....376....' ),
( 3, 'P', 78, '..........366............844....305..761......780......560........236........725.272.....450.............67.126.....................*.......' ),
( 3, 'P', 79, '.................669$.......$.......=............*220./.....+665........495................*.@103....992....................&........600....' ),
( 3, 'P', 80, '.......*......................812/.........................................$............940...........+...................146...975.........' ),
( 3, 'P', 81, '....410.650.282.....*...............696.833....957...............996...*......772.287...................921..935................%.....$.....' ),
( 3, 'P', 82, '............*....413.921...713....................%.....769.........@.390.216..#.....@..........................=...........*.......46......' ),
( 3, 'P', 83, '.....798.136..............%....150.....236..............*......31...........*..........@.64..17......616..........901......344..............' ),
( 3, 'P', 84, '..............................-........*.....402......873.......*......692...592....390...*.............*277................................' ),
( 3, 'P', 85, '......539.....799.../.....272....%.@....694.#.............667...318.......=...............762.......71%.......-153......................531.' ),
( 3, 'P', 86, '..........556*......573.......465...916...................*..........602.........................=.......145...........................*....' ),
( 3, 'P', 87, '........................451.............../....%.....625.401.........*........428-.....493......479.427....$.........60......951......281...' ),
( 3, 'P', 88, '..947+....36....270....*............517....521..258.*............108..812.............*................*........................*372........' ),
( 3, 'P', 89, '...........*....*....957.823...290.....*.............415..........*...............908..730..........589......+..............................' ),
( 3, 'P', 90, '857.........843............*........794......................677..27........................121...........670.........548.837*....&.....664.' ),
( 3, 'P', 91, '......175..........-.....=........................422.......*..................226-..344.......*...................2....%..........474......' ),
( 3, 'P', 92, '...................283..190..@...........458........*.162@.666.517....202...............*..@...545.%.........705.............*..............' ),
( 3, 'P', 93, '...............*............296.466.....#.........................*..*.....852..208...999.475......256..........=....642..188.386...........' ),
( 3, 'P', 94, '............504.888..................52....416......394...349.....53.953...*......*...........@521.........213........*.....................' ),
( 3, 'P', 95, '......225...............272*32........*.....*..........*...%..............728.........827.513..........287*.........924..388%.........&.....' ),
( 3, 'P', 96, '..453...*..................................71.....*..437.......501...869.......928....%...#....................%225.............734@..157...' ),
( 3, 'P', 97, '....*..400...........810=.300@...13.15.537.....997........./......*.....*.........+.........407.758...674............604....500.............' ),
( 3, 'P', 98, '..970..........409...............*...*...*................159...788....338..............636*...../....#.......#895....*......./.............' ),
( 3, 'P', 99, '..................................52.....872........+...........................-........................524.........297............314.....' ),
( 3, 'P', 100, '...........=...469.....408.............&.........641......364%.780...526.........540.865....742............*..............549..505...*......' ),
( 3, 'P', 101, '........404.......*...-....58..%....577...............655......*.............613......*.............343..779./854............*....*...567...' ),
( 3, 'P', 102, '...103............284......./...999....................=.....640.....284..............566.982..........$...........476...478.793..556.......' ),
( 3, 'P', 103, '......*.....436........916.................941.............@.........&...........284.........*183.........857.953...........................' ),
( 3, 'P', 104, '...............*.404=.....*910..703@...20......266......815.....201.....54.332...........................@......*...........95..............' ),
( 3, 'P', 105, '.............898........................*........*..........13.....*806...*.......280.........................905........63*................' ),
( 3, 'P', 106, '........&.........642..271.627..920.+....534...96..780......@....=...........246../......99........................................../......' ),
( 3, 'P', 107, '....$....518.......@......*......*..323..............-............477....*4...*...........*....979......810.................366....697......' ),
( 3, 'P', 108, '.....439........................364.........161..594.....647..................802.........234..............*17......125..82....*............' ),
( 3, 'P', 109, '................187....667....................*..#.......*.......*................604..................946.............*....414.............' ),
( 3, 'P', 110, '....585...218.....*...*.............-....536.396........950...200......296*935...*..........#...382..........883......182.......326....*....' ),
( 3, 'P', 111, '.....+......-...557.349...........217............................./105..........527..387....394...*...........#..430*.....501.......393.190.' ),
( 3, 'P', 112, '.......*474.............16....................675.....999..............362..............*..........576...................*..................' ),
( 3, 'P', 113, '....449.....+.296*468.....................607....*...........-..#.................619....177...............31...........194..198..187.......' ),
( 3, 'P', 114, '.........156......................330.......+..332...631...936...477................*...........658..........%..845..........*..............' ),
( 3, 'P', 115, '....*262.........$......362......*.....429=..............................*324....296...........+.......161.....*....57.....309..............' ),
( 3, 'P', 116, '.403............492..97.@.....695..696......$.840..&.................21.....................@.........*.......178...+....$.............364..' ),
( 3, 'P', 117, '......178..692*.....%.....82..........=...176.......456.....517........+...238.704.......682......266.................&..222..........*.....' ),
( 3, 'P', 118, '......*........993........*....931*...........445..............*.................=...........@...*.......448.......251................222...' ),
( 3, 'P', 119, '.......824............467..232.......664..299*.......322*512..850..............@..........585....259........$..................&............' ),
( 3, 'P', 120, '...458.....572.................379....*........123.....................-........298..................-................336...908....*........' ),
( 3, 'P', 121, '....&......*....&..732...701/....*....440.....$...........739..636.....65..../.......%151.............823.455............&..........119.....' ),
( 3, 'P', 122, '........550....391..%.............259....................#....*............834............232.179............*.........4...795.784..........' ),
( 3, 'P', 123, '.............%...............729...............568.............936...............952........*..*..............726..........*.........-......' ),
( 3, 'P', 124, '...627.....87....@...........-...........6.....%...106.......................458*.....281..811..282..500..............=....833....214..780..' ),
( 3, 'P', 125, '..............320................665..............*........584.........................*............................343...............*.....' ),
( 3, 'P', 126, '..................997....84.590.....*795.90*487.842..%431....*.......233..692....259....391.113*........*338............./..391.............' ),
( 3, 'P', 127, '.....62.....#689.*.........*.................................444.......*...*......*.............445..861...........498/.857..*.....505*.....' ),
( 3, 'P', 128, '......*...........436.869.....634@..663...599..901*678.100..........666....301..493.986....174.............838*492..........454........313..' ),
( 3, 'P', 129, '.....362.....983....../................+..*.............=.............................*....*.......259.............+....464.........27......' ),
( 3, 'P', 130, '...%........................580....68.....45.........................................21..768...267....*.+....661..879..@....&......$........' ),
( 3, 'P', 131, '.643....545......./435.....*.........+.............................823....919.......................20..102.*..............267.690.....55...' ),
( 3, 'P', 132, '.........*...............557....247.......653....584.5*....430....*........../...529+...........856..........305.254..212.............*.....' ),
( 3, 'P', 133, '........945...528................/...775..+............204...-.537....$..528................276*...................%....*....863......612...' ),
( 3, 'P', 134, '....572.......*.........614.........+................................810...............842........438.....26...&.....%.........*............' ),
( 3, 'P', 135, '.......*....201.@......*....671..$........................../.............................*...832*.......*....214.899..........795.421+.....' ),
( 3, 'P', 136, '994..797.........684.390....*....452../..................989..728............685....23+.856...........498.............443...................' ),
( 3, 'P', 137, '.....................................424.......%...............@.......228.....+..............+.......................$.....................' ),
( 3, 'P', 138, '.....2...812.517.........602*967.........262....953...*.....*....67...*...........+......1.431.....721.....402%..&.......*.....504..........' ),
( 3, 'P', 139, '.............*....%..................963*...........96...287.255.*...548.........534....*.............*..........896..531.789.=.......855...' ),
( 3, 'P', 140, '...........579....595...........8................................781...............................547......................................' )

;

select * from AoC_Input ;

---------- PART 1 -----------------------------------------------------------------------------------------------------
/*
with inp as (
	select day_input, rown	
	from aoc_input 
	where daynum = 3 and input_type = 'P' 
), matches as(
select 
	day_input
	, rown
	--, (regexp_matches(day_input, '(\d+)', 'g'))[1]  -- this gets all the positions
	, regexp_count(day_input, '(\d+)')  -- how many there are
	, regexp_instr(day_input, '(\d+)',     1)  as pos01-- start of the first match
	, regexp_instr(day_input, '(\d+)', 1,  2)  as pos02
	, regexp_instr(day_input, '(\d+)', 1,  3)  as pos03
	, regexp_instr(day_input, '(\d+)', 1,  4)  as pos04
	, regexp_instr(day_input, '(\d+)', 1,  5)  as pos05
	, regexp_instr(day_input, '(\d+)', 1,  6)  as pos06
	, regexp_instr(day_input, '(\d+)', 1,  7)  as pos07
	, regexp_instr(day_input, '(\d+)', 1,  8)  as pos08
	, regexp_instr(day_input, '(\d+)', 1,  9)  as pos09
	, regexp_instr(day_input, '(\d+)', 1, 10)  as pos10
	, regexp_instr(day_input, '(\d+)', 1, 11)  as pos11
	, regexp_instr(day_input, '(\d+)', 1, 12)  as pos12
	, regexp_instr(day_input, '(\d+)', 1, 13)  as pos13
	, regexp_instr(day_input, '(\d+)', 1, 14)  as pos14
	, regexp_instr(day_input, '(\d+)', 1, 15)  as pos15
	, regexp_instr(day_input, '(\d+)', 1, 16)  as pos16
	, regexp_instr(day_input, '(\d+)', 1, 17)  as pos17
--	, regexp_split_to_table(day_input,'[\.\$\*\/\@\%\+\=\&\-\#]+')
from inp
), getnums as (
	select 
		day_input
		, rown
	--	, (regexp_matches(day_input, '(\d+)', 'g'))[1]  -- this gets all the numbers
		, array_remove(regexp_split_to_array(day_input, '[\.\$\*\/\@\%\+\=\&\-\#]+'), '') as list
    from inp 
 ), 
numbers as(
	select
		day_input
		, rown
		, list[ 1]  as num01
		, list[ 2]  as num02
		, list[ 3]  as num03
		, list[ 4]  as num04
		, list[ 5]  as num05
		, list[ 6]  as num06
		, list[ 7]  as num07
		, list[ 8]  as num08
		, list[ 9]  as num09
		, list[10]  as num10
		, list[11]  as num11
		, list[12]  as num12
		, list[13]  as num13
		, list[14]  as num14
		, list[15]  as num15
		, list[16]  as num16
		, list[17]  as num17
	from getnums
), 
symbols as (
	select 
		day_input
		, rown
		--, (regexp_matches(day_input, '(\d+)', 'g'))[1]  -- this gets all the positions
		, regexp_count(day_input, '[\$\*\/\@\%\+\=\&\-\#]+')  -- how many there are
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)',     1)  as symb01-- start of the first match
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1,  2)  as symb02
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1,  3)  as symb03
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1,  4)  as symb04
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1,  5)  as symb05
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1,  6)  as symb06
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1,  7)  as symb07
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1,  8)  as symb08
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1,  9)  as symb09
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1, 10)  as symb10
	from inp
),
nums_pos_sym as(
select 
	m.*
	, num01
	, num02
	, num03
	, num04
	, num05
	, num06
	, num07
	, num08
	, num09
	, num10
	, num11
	, num12
	, num13
	, num14
	, num15
	, num16
	, num17
	, symb01
	, symb02
	, symb03
	, symb04
	, symb05
	, symb06
	, symb07
	, symb08
	, symb09
	, symb10
from 
	numbers n 
		join matches m on n.rown = m.rown
		join symbols s on n.rown = s.rown
)
select
  r.rown, rm1.rown as bef, rp1.rown as aft, r.*
from nums_pos_sym r
  left join nums_pos_sym rm1 on rm1.rown +1 = r.rown
  left join nums_pos_sym rp1 on rp1.rown -1 = r.rown
order by r.ROWN
;	
*/
--------------------------------------------------------------------------
-- it is better to unpivot everything
--------------------------------------------------------------------------
with inp as (
	select day_input, rown	
	from aoc_input 
	where daynum = 3 and input_type = 'P' 
), getnums as (
	select 
		day_input
		, rown
		, array_remove(regexp_split_to_array(day_input, '[\.\$\*\/\@\%\+\=\&\-\#]+'), '') as list
    from inp 
 ), 
nums as(
	select
		day_input
		, rown 
		, unnest(list)  as num	
	from getnums
), numbers as (   --- numbers contains all the info on numbers
	select 
	 day_input
		, rown 
		, row_number() over (partition by rown) as nn 
		, num
	from nums
), getsyms as ( 
       select 
		day_input
		, rown
		, array_remove(regexp_split_to_array(day_input, '[\.\d]+'), '') as list
   from inp
 ), syms as (
 	select
		day_input
		, rown 
		, unnest(list)  as sym
	from getsyms
 ), symbols as (   
	select 
	 day_input
		, rown 
		, row_number() over (partition by rown) as nn 
		, sym
	from syms
), symb_all as(
	select 
		day_input
		, rown
		, sym
		, regexp_instr(day_input, '([\$\*\/\@\%\+\=\&\-\#]+)', 1, nn::Int)  as sym_pos
	from symbols
), num_all as (
	select 
		day_input
		, rown
		, num::Int as numint 
		, length(num) as num_len
		, regexp_instr(day_input, '(\d+)', 1, nn::Int)  as num_pos
	from numbers
), part1 as (
	select 
		r.rown
		, r.numint
		, r.num_pos
		, r.num_len
		, rm1.rown as rm1_row
		, rm1.sym_pos as rm1_sym_pos
		, rp1.rown as rp1_row
		, rp1.sym_pos as rp1_sym_pos
		, rsr.sym_pos as rsr_sym_pos
	from num_all r
	-- get the symbols in the right position in the row before
	  left join symb_all rm1 on nullif(rm1.rown, -1) +1 = r.rown and rm1.sym_pos between r.num_pos-1 and r.num_pos + r.num_len and rm1.rown is not null
	-- get the symbols in the right position in the row after
	  left join symb_all rp1 on nullif(rp1.rown, -1) -1 = r.rown and rp1.sym_pos between r.num_pos-1 and r.num_pos + r.num_len and rp1.rown is not null 
	-- get the symbols in the right position in the same row
	  left join symb_all rsr on rsr.rown = r.rown                and rsr.sym_pos between r.num_pos-1 and r.num_pos + r.num_len
	where 
		rm1.rown is not null or rp1.rown is not null or rsr.rown is not null
) 
select 	sum(part1.numint)  from part1
;

--------------------------------------------------------------------------
------------------------------ part 2 ------------------------------------
--------------------------------------------------------------------------
-- warning: this solution will not perfectly work if you have two equal number in the same gear. You could easily check visually if this is the case
with inp as (
	select day_input, rown	
	from aoc_input 
	where daynum = 3 and input_type = 'P' 
), getnums as (
	select 
		day_input
		, rown
		, array_remove(regexp_split_to_array(day_input, '[\.\$\*\/\@\%\+\=\&\-\#]+'), '') as list
    from inp 
 ), 
nums as(
	select
		day_input
		, rown 
		, unnest(list)  as num	
	from getnums
), numbers as (   --- numbers contains all the info on numbers
	select 
	 day_input
		, rown 
		, row_number() over (partition by rown) as nn 
		, num
	from nums
), getsyms as ( 
       select 
		day_input
		, rown
		, array_remove(regexp_split_to_array(day_input, '[\.\$\/\@\%\+\=\&\-\#\d]+'), '') as list
   from inp
 ), syms as (
 	select
		day_input
		, rown 
		, unnest(list)  as sym
	from getsyms
 ), symbols as (   
	select 
	 day_input
		, rown 
		, row_number() over (partition by rown) as nn 
		, sym
	from syms
), symb_all as(
	select 
		day_input
		, rown
		, sym
		, regexp_instr(day_input, '([\*]+)', 1, nn::Int)  as sym_pos
	from symbols
), num_all as (
	select 
		day_input
		, rown
		, num::Int as numint 
		, length(num) as num_len
		, regexp_instr(day_input, '(\d+)', 1, nn::Int)  as num_pos
	from numbers
), part2 as (
	select 
		r.rown
		, r.numint
		, r.num_pos
		, r.num_len
		, rm1.rown as rm1_row
		, rm1.sym_pos as rm1_sym_pos
		, rp1.rown as rp1_row
		, rp1.sym_pos as rp1_sym_pos
		, rsr.sym_pos as rsr_sym_pos
		, coalesce(rm1.rown, rp1.rown, r.rown) as coal_symrow
		, coalesce(rp1.sym_pos, rm1.sym_pos, rsr.sym_pos) as coal_sympos
	from num_all r
	-- get the * in the right position in the row before
	  left join symb_all rm1 on nullif(rm1.rown, -1) +1 = r.rown and rm1.sym_pos between r.num_pos-1 and r.num_pos + r.num_len and rm1.rown is not null
	-- get the * in the right position in the row after
	  left join symb_all rp1 on nullif(rp1.rown, -1) -1 = r.rown and rp1.sym_pos between r.num_pos-1 and r.num_pos + r.num_len and rp1.rown is not null 
	-- get the * in the right position in the same row
	  left join symb_all rsr on rsr.rown = r.rown                and rsr.sym_pos between r.num_pos-1 and r.num_pos + r.num_len
	where 
		rm1.rown is not null or rp1.rown is not null or rsr.rown is not null
), sol2 as (
-- join the numbers connected with the same gear, excluding the join of a number with himself (the edge case of two equal number excluded manually)
	select 
 		p2a.numint * p2b.numint as gear_ratio
 		, p2a.numint
 		, p2b.numint
 		, p2a.coal_symrow
 		, p2a.coal_sympos
	from part2 p2a 
		join part2 p2b on p2a.coal_symrow = p2b.coal_symrow and p2a.coal_sympos = p2b.coal_sympos and p2a.numint <> p2b.numint
)
	select sum(gear_ratio) / 2  -- we get N1 * N2 and N2 * N1 hence every number is counted twice
	from sol2
;

