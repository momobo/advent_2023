select current_database();
select current_schema();
use database Advent2023;

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
( 4, 'T', 1, 'Card 1: 41 48 83 86 17 | 83 86  6 31 17  9 48 53' ),
( 4, 'T', 2, 'Card 2: 13 32 20 16 61 | 61 30 68 82 17 32 24 19' ),
( 4, 'T', 3, 'Card 3:  1 21 53 59 44 | 69 82 63 72 16 21 14  1' ),
( 4, 'T', 4, 'Card 4: 41 92 73 84 69 | 59 84 76 51 58  5 54 83' ),
( 4, 'T', 5, 'Card 5: 87 83 26 28 32 | 88 30 70 12 93 22 82 36' ),
( 4, 'T', 6, 'Card 6: 31 18 13 56 72 | 74 77 10 23 35 67 36 11' )
;


INSERT INTO AoC_Input (DAYNUM, INPUT_TYPE, ROWN, DAY_INPUT)
VALUES
( 4, 'P', 1, 'Card   1: 44 22 11 15 37 50  3 90 60 34 | 35 60 76  3 21 84 45 52 15 72 13 31 90  6 37 44 34 53 68 22 50 38 67 11 55' ),
( 4, 'P', 2, 'Card   2: 42 14 40 24 51 49 47 73 34 74 | 40 22 48 65 34 81 24 97 14 49  1 98 66 42 71 74 28 11 47  3 45 63 73 51 87' ),
( 4, 'P', 3, 'Card   3: 16 48 80 51 41 87 46 77 23  8 | 10 77 41 46  8 36 85 16 87 27 97 13 15 35 45 80 63 37 29 60 48 51 82 61 23' ),
( 4, 'P', 4, 'Card   4: 82 88 65 64 33 89 23 49 11 92 | 11 33 91 15 81 44 29 27 63 23  1 13 74 89 88  8 37 22 51 92 65  7 49 82 64' ),
( 4, 'P', 5, 'Card   5: 36 61 30 42 64 45 80 26 84 60 | 50 46 76  4 12 32 38 23 36 45 44 61 53 94 37 33 11 82 84 87 26 19 93 15 98' ),
( 4, 'P', 6, 'Card   6: 75 63 86 49 17 26 59 70 18 57 | 87  3  2 47 65 21 24 74 28 17 34 33 16 29 63 14 60 95 83 15 41 70 56 49 23' ),
( 4, 'P', 7, 'Card   7: 57 36 32 45  2  5 79 98 73 39 | 97 10 57 45  4 39 32 93 86 79 70 58 76  2 83  1 49 29 36 98 44 94 73 81  5' ),
( 4, 'P', 8, 'Card   8: 85 17 70 99 44 11 42 39 83 57 | 71 94 85  1 44 66 83 42 70 73 39 33 88 56 11 31 87  7 99  8 49 43 57 91 17' ),
( 4, 'P', 9, 'Card   9: 32 21 51 36 59 24 47 11 61 96 | 31 76 57 64 14 91 73 78  5 95 63 69 84 51 58 94 72 28 19 66 21 67  3 97 61' ),
( 4, 'P', 10, 'Card  10: 83 96 30 51  6 24  7 65 39 97 | 67 85 39 71 93 37 35 77 56 25 82  3 89 47  8 88 66 79  7 87 84 52 11 70  1' ),
( 4, 'P', 11, 'Card  11: 83  1 30 54 34 78 82 68 10 55 | 66 76 54 83 78 68 21 82 60 34 84 23 20 64 86  1 96 36 98 15 74 63 40 97 59' ),
( 4, 'P', 12, 'Card  12: 74  1  6 81 56 43 65 38  3  4 |  6 24 34 46 64 81 73 52 72 62 54 44 77 98 40  7 17 63 79 91 29 71 82  9 56' ),
( 4, 'P', 13, 'Card  13: 41 28 47 58  2  5 75 78 72 94 | 92 95 96 46 90 50  1 11 62 37 14 15 41 13 43 21 97 76 60 72 99  9 63 45 64' ),
( 4, 'P', 14, 'Card  14: 75 48 10 62 12 44 92 20 68 19 | 58  8 30 25 77 73 23 68 31 53 74 39 97 88  7 52  4 10 86 35  3 94 81 20 63' ),
( 4, 'P', 15, 'Card  15: 40 99  7 94 75 66 24 71 17 33 | 62 87 68 82 79 54 95 69 26  7 20 18 64 84 63 52 53 35 50 86 34  9 14 27 73' ),
( 4, 'P', 16, 'Card  16:  5 29 30 84  1 38 35 32  8 81 | 67 65 29 96  5 11 82 71 95 93 38 76 34 77  6 37 21 17  2 52 94 58 99  3 84' ),
( 4, 'P', 17, 'Card  17: 59 77 36 26 93 27 40 65 61 32 | 63 91 45 80 64 12 97 65  7 87 47  3 18 36 77 92 23  9 31 20 99 51 13 75 81' ),
( 4, 'P', 18, 'Card  18:  6 56 47 29 45 63 41 33  5  4 | 95 92 45 10 81 38 27 20 65 91 57 80 72 30 18 88 15 17 55 50 11 59 40 36 86' ),
( 4, 'P', 19, 'Card  19: 55 47 86 94 12  6 91 22 53 69 | 20 97 28 80 40 10 48 51 38 42 66 36  4 82 46 76 32 31 27 54 50 57 70 99 59' ),
( 4, 'P', 20, 'Card  20: 98 62 51 84 26 19 35 89 32 14 | 57 94 93 87 96 42 18 53 73 88 27 61 43 59 80 50 97 64 37  6 72 13 52 40 92' ),
( 4, 'P', 21, 'Card  21:  7 14 52 40 96 87 38 73 42 95 | 87  5 73 95 42 86 11 93 61 96 52 80 75 40 85  7 53  3 50 64 14 44 38 39 12' ),
( 4, 'P', 22, 'Card  22: 25 18 51  7 49 95 30 26 96  2 | 92 87  2 11 95 18 26 69 49 48 14 30 94 51 24 62 96 31 98  7 60 16 10 25 93' ),
( 4, 'P', 23, 'Card  23: 90 26 77 33 22 63 17 49  9 25 | 49 37 27 17 84 35 90  9 63 70 69 15 22 91 14 28 86 52 26 11 77 42 25 67 33' ),
( 4, 'P', 24, 'Card  24:  9 35 28 79 83 60 74 12 75 30 | 97 60 72 61 74 94 91 84 22 79  8 57 66 20 28 35 30 75  9 71 76 83 12 77  2' ),
( 4, 'P', 25, 'Card  25: 86 67 66 31  5 79 28 21 16 71 | 47 16  7 93 15 73 27 92 60 62 88 63 94 51 12 24 21 82 84 97 86 75  8 72 45' ),
( 4, 'P', 26, 'Card  26: 65 48 46 57 31 96 42 98 14 89 | 84 98 58 31 76 85 96 94 52 41 40 67 34 74 83 54 42 14 10 65 48 57 79 46 89' ),
( 4, 'P', 27, 'Card  27: 34 83 70  7 13 72 12 74 63 67 | 34 71 12 31 11 36 61 94 23 80 49 24 13  7 52 37 41 83 65 90 70 38 98  5 74' ),
( 4, 'P', 28, 'Card  28: 11 33 66 25 89 28 17 98 37  5 | 78 13 28 25 54 51 66  5 43  6 37 97 89 26 98 11 33 64 40 17 61 74 31 60 39' ),
( 4, 'P', 29, 'Card  29:  2 27 73 62 83 85 20 46 29  8 | 85 46 18 11 95 72  2 84 13 20 29 76 73 60  1  4 93 61 30 62 83 27 68  8 16' ),
( 4, 'P', 30, 'Card  30: 27 77 35  2 13 49 33 47 96 75 | 96 13 35 31 75 79  8 77 28 45 61 74 27 34 92 38 33 48 49 76  2 47  5 10 54' ),
( 4, 'P', 31, 'Card  31: 24 42 38 83 20 40 78 51 73 13 | 83 38 79 42 13 51 69 88 75 94 41 22 14 97  8 24 20 76 78 31 40  6 28 73 87' ),
( 4, 'P', 32, 'Card  32: 78 68 70 87 52 71 30 93 96 77 | 60 24 31 14 52  4 78 71 83 45 27 93 82 85 77 30 38  2 96 94 70 87 68 61 25' ),
( 4, 'P', 33, 'Card  33: 91 33 16 29 31 87 61 63 58 14 | 35  2 55 19 79 87 28 63 13 60  3 14 54 58 29 91 53 61 11 22 33 25 52 16 31' ),
( 4, 'P', 34, 'Card  34: 31 76 55 66 39 70 78 89  4 83 | 78 62 46 32 31 61 51  1 83 22 89 96 72 80 66 69 50 20 11 40 24 76 90 42 71' ),
( 4, 'P', 35, 'Card  35: 35 32 93 88  9 21 58 24 85 69 | 77 21 51  7 82 87 58 39 65 11 56 89 16 83 22 68 14 70 74 45 35 71 34 97 61' ),
( 4, 'P', 36, 'Card  36: 22 57  6 69 88 46 71 58 96 26 |  6 14 86 50 12 76 55 35  8 17 46  5 80 52 83 57 84  3 60 93 34 67 43 97 11' ),
( 4, 'P', 37, 'Card  37:  7 95 47 52 62 18 20 68 93 26 |  3 25 57 32 95 33 87  6 38 13 77 22 15 88 28 89 96 17 59 34  4 58 44 69 23' ),
( 4, 'P', 38, 'Card  38: 52 36 66 89 79  6  2 86 51 37 | 70 28 40 39 61 48 33 58 88 90 75 27 50 98  4 34 10 57  5 13 80 62 76  9 67' ),
( 4, 'P', 39, 'Card  39: 67 43 21 57 36 89 95 94  7 68 | 15 82 29 85 14 23 73 24 32 76 94 90 36 83 51  6  5 41 68 55 72 58 21 75 53' ),
( 4, 'P', 40, 'Card  40: 29 83 62 57  2 44 99 17 81 59 | 28 66 53 11 79 57 13 50 52 71 12 42 32 54 74 56  8 59 67 70 18 65 61 48 85' ),
( 4, 'P', 41, 'Card  41: 43 61 32 38 66  2 28 84 74 41 | 22 80 19 57 33 75 60 89 78 39 13 58 27 16 34 21 23 68 66 49 25 55 44  8 28' ),
( 4, 'P', 42, 'Card  42: 95 17 92 58 87 97 82 98 44 43 | 48 76 45 68 12 52 93 25 26 35 11 92 82  3 67 85 23 17 61 34  2 59 88 60 74' ),
( 4, 'P', 43, 'Card  43: 95 82 60 66 62 11 30 16 68  4 | 43 84  4 31 23 77 66 89 40 96  2 65 51 75 21 35 41  8 10  9 69 54 50 98 37' ),
( 4, 'P', 44, 'Card  44: 53 20 33 50 67 80  4 37 61 26 | 38 92 72 12 30 56  7 44 69 70 57 17 93 31 39 62 32 97  3  5 61  1 68 10 49' ),
( 4, 'P', 45, 'Card  45: 17 36 61 18 49 99 48 13 90 46 | 98 47 19 29 76 71 96 33 59 55 43 38 73  7 66 58 28 23 60  8 39 65 95 86 81' ),
( 4, 'P', 46, 'Card  46:  4 94 23 22 25 35 40 55 50 51 | 65 62 27 32 48  3 83 53 87 54  8 79 95 49 68 97 56 15 11 30  5 14 46 80 77' ),
( 4, 'P', 47, 'Card  47: 75 90 15 60 14 87 96 67 80 26 | 21  3 91 79 17 81 46 94 69 37 12 52 64 58 78 28 88  9 93 85 44 34 68 29 83' ),
( 4, 'P', 48, 'Card  48: 76 96 28 52 81 54 55 51 10 45 | 48 67 54 93 38 28 70 87 31 82 26  5 60 85 10 15 91 34 84 72 12 62 17 51 97' ),
( 4, 'P', 49, 'Card  49: 50 78 76 51 63 60  2 98 72 99 | 13 97 93 77 40 87 66 48 26 21 62 94 23 61 12 67 54 47 56 70 79 30 11 81 74' ),
( 4, 'P', 50, 'Card  50:  6 60 84 70 96 59 85 91 78 88 | 61  3 40 12 35 76 94 48 54 71 51 22 87 11 97  1 57  5 49 53 98 83 82 74 46' ),
( 4, 'P', 51, 'Card  51: 96  4 60 57 67 47 86 97 52 23 |  9 90 69 54 67 52 57 60 42  7 59 33 88 97 98 26 92 13 80 17 77 82 23  4 86' ),
( 4, 'P', 52, 'Card  52: 50 62 38 21 94 19 88 85 83 80 | 77 17 31 23 90 83 85 81  5 32  6 82 46 38 52 50 19 35 59 80 96 98 37 61 62' ),
( 4, 'P', 53, 'Card  53: 19 29 28 50 43 44 91 30 41 24 | 30 50 68 94 91 16 18 41 42 21 32 10 69 84 61 20 13 66 31 88 28 35 40 45 33' ),
( 4, 'P', 54, 'Card  54: 70 66 59 79 69 52  9 72 26  3 | 88 81 36 64  5 91  7 97 20  6 44 85 54 77 60 45 11  1 73 61 19 99 40 12 90' ),
( 4, 'P', 55, 'Card  55: 41 85 95 15 52 42 57 25 88 32 |  6 94 68 90 98 87 96 50 89 95 37 84 16 55 44 52 31 14 74 81 69 40 73 20 70' ),
( 4, 'P', 56, 'Card  56: 44 96 94 25 41 73  5  3 81 18 | 16 36 34 85 70 42 69 28 35  5 84 23 43 67 68 32  1 29  8 48 27 63 95 41 56' ),
( 4, 'P', 57, 'Card  57: 96 13 47 23 35 79 58 80 94  1 | 67 39 94  4 22 17 64 70 53 82 83 97 98 32 37 78  6 74 13 48 30 77 81  1 56' ),
( 4, 'P', 58, 'Card  58: 26 82 95 34  9 48 62 81 27 32 | 31  4 20 46 28 14 35 45 68 92 67 57 72 84 79 33 58 65 64 82 76 29 93 89 96' ),
( 4, 'P', 59, 'Card  59:  8 52 53 88 76 92 44 59 14  5 | 21 47 42 89  3 56 48 66 30 68 81 75 26 54 50 97 40 60 15 49 57  4 13 84 32' ),
( 4, 'P', 60, 'Card  60: 71 80 66 49 16 39 76 68 74 82 | 23 72 41 78  1 96 50 73 79 13 65 59 32 29 38 63 11 92 64 54 30 22 52 95 25' ),
( 4, 'P', 61, 'Card  61: 28  1 74 52 25  9 49  5 19 42 | 27 74 94 42 13 40 62 19 25  1 24 21 59 52 22 50 30  8 28 49 53  5 39 23  9' ),
( 4, 'P', 62, 'Card  62: 87 62 88 31 17 95 91 42 37 28 | 78 47 11 29 50 20 28 17 58 76 18 91 25 39 22 60 65 51 16 67 27 57 35 74  5' ),
( 4, 'P', 63, 'Card  63: 21 64 77 76 14 59  8 32 19 79 | 32 77 27  8 59 10 31 76 89 79 28 47 21  5 61 40 43 14 24 97 19 64 22 98 87' ),
( 4, 'P', 64, 'Card  64: 50 35 23 27 79 15 90 37 88 99 | 54 89 97 22 59 66 90 79 93 65 23 32 17 36 15 85 50 28 37 27 48 55 99 62 88' ),
( 4, 'P', 65, 'Card  65: 55 18 38 58 26 41 36 78 22 14 | 51 33 49 26 14 22 55 18 36 79 43 67 68 25 94 85 20  6 61  2 65 32 66 50 48' ),
( 4, 'P', 66, 'Card  66: 97 52 63 58 79 51 55 90 28 87 | 59 48  7 25 47 85 79 87 37 77 56 43 41 24 55 70 99 17 28 58 49 51 52 66 60' ),
( 4, 'P', 67, 'Card  67: 53 29 43 54 87 33 14 47  6 50 | 53 47 91 58 84 46 99 60  6 34 33 98 63 66 87 65 50 93 14 54 77  9 95 29  8' ),
( 4, 'P', 68, 'Card  68: 65 64 10 35 78 62 98 82  9 11 | 81 78 62 59 65 64 41 35 32 10 58 97 12 60 57 21 82 11 99  9 84 98  8 44 26' ),
( 4, 'P', 69, 'Card  69: 97 99 95 42 64 80  9 46 30 29 | 42  4 46 89 99 54 97 82  3 90  9 80 38 51 70 21 34 19 30 57 29 95 73 12 64' ),
( 4, 'P', 70, 'Card  70: 83 18 66 53 81 21 60 74 12 79 | 39 90 32 83  2 59 74 29 87 66 60 14  8 51 78 67 72 42 64 30 70 82 81 80 73' ),
( 4, 'P', 71, 'Card  71: 49 94 16 23 44 83 95 74 29 78 | 52 19 94 10 49 95 83 40 23 15 44 85 90 43  1 74 78 53 27  5 48 64 30 55 63' ),
( 4, 'P', 72, 'Card  72: 41 28 95 19 80 15 38 53 27 46 |  3 60 71 33 56 80 68 29 74 10 26 27 20 47  6 70 28 53 65 37 62  8 91 69 99' ),
( 4, 'P', 73, 'Card  73:  3 62 63  4  6  8 33 87 44 32 |  3 40 87 46  6  2 86 99 51 61 65 39 62 44 90 55 53 36 56 33 16 27 59  1 32' ),
( 4, 'P', 74, 'Card  74: 19 44 31 74 18 58 42 28 60 14 |  8 30 34 95  6 64 70 99 43 88  5 26 16 79 52 24 73 65 38 17 78 82 57 48 90' ),
( 4, 'P', 75, 'Card  75: 41 97  5 43 40 56 91 83 23 69 | 36 37 30 95 53 67 69 91 96  2 65 63 78 84 99 13 42 26 12 60 29 94  6  5 80' ),
( 4, 'P', 76, 'Card  76: 57  3 77 91 60 49 29  9 83  5 | 79 85 54 50 31 25 90 80 68 73 45 92 61  2 24 63 52  6 11  8 66 84 87  7 88' ),
( 4, 'P', 77, 'Card  77: 76 95 63 87 86  6 46 73 55 44 | 59 55 63 18  2 22 72 79 14 86 96 76 37  5 90 24 11 44 97 56 42 20  7 70 61' ),
( 4, 'P', 78, 'Card  78: 78 29 52 51 56 13 39 33 97 83 | 25 87 77  2  7 30 76 90 22 93 92 14 37 65 88 67 42 98 62 23 32 50 81 31 47' ),
( 4, 'P', 79, 'Card  79:  5 93 63  7 78 64 98 54 44 65 | 26 82 37 50  9 46 22 51 25 88 59 21 77 94 67  6 41 45 98 92 65 61 70 34 12' ),
( 4, 'P', 80, 'Card  80: 46 80 27  3 30 89 29 10 85 81 |  8 60 63 84  4  2 47 50 70 32 26 36 13 57 72 90  6 83 94  9 22 88 58 34 33' ),
( 4, 'P', 81, 'Card  81: 15 40 62 36 71 82  8 96 92 53 | 35 52 21  6 29 77 58 85 48 59 90 19 64 98 25 78  1 34 31 63 32 61  5 70 33' ),
( 4, 'P', 82, 'Card  82: 39 28 83 51 73 60  8 94 89 93 | 26 48 85 54 75 77 22 23 65  5 20  1  3 40 62 45 11 55 58 84 76 74 13 86  2' ),
( 4, 'P', 83, 'Card  83:  6 72  1 41 73 33 97 29 96 28 | 15 92 75 12 17 27 95 88 58 82 69 33  7 81 76 62  6 55 93 79 98 51 99  8 13' ),
( 4, 'P', 84, 'Card  84: 86 32 71 28 75 79 73 62  4 58 | 73 71 40 28 91 76 36 51 47 32 24 54 83 65 74  4 86  7 75 26 58  2 37 69 45' ),
( 4, 'P', 85, 'Card  85: 22 81  1 13 98 74 82  7 89 14 | 13  1 71 46 54 63 65 76  3 83 21 57 90 80 30 37  4 78 81 64 32 87 73 89 88' ),
( 4, 'P', 86, 'Card  86: 22 14 97 63 31 52 71 28 18 60 | 50 14 73 18 24 51  5 29 70 28 63 40  9 62 59 37 92 90 95 83  4 22 93 77 13' ),
( 4, 'P', 87, 'Card  87: 65 43 25 31 68 19  8 26 69 12 | 20 84 46  5 41  4 63 52 74 96 76 70 35 55 62 77 88 54 17 93 85 26 72 83 29' ),
( 4, 'P', 88, 'Card  88: 87 35 32 94 63 95 76 56 89 48 | 90  7 48 65 54 35 50 45 94 26 40  2 95 88 22 73 13 33 87 92 61 76 72 81 86' ),
( 4, 'P', 89, 'Card  89: 55 64 85 51 56 52 17 49 27  5 | 19 17 52 31 56 46 82 79 55 23  9 95 54 94 41 90 64 49 62  5 51 75 27 85  7' ),
( 4, 'P', 90, 'Card  90: 21 96 79 30 97 23 61 66 95 50 |  6  1 50  2 87 97 18 76 65 94 75 61 51 59 28  8 21 93 95 54 55 66 57 26 62' ),
( 4, 'P', 91, 'Card  91: 36  4 17 66  2 75 55 53 12 62 | 36 31 73 56 47 60 34 38 76 95 23 41 29 66  9 63 70 64 27  5 69 28 15 11  7' ),
( 4, 'P', 92, 'Card  92: 95  6 85 38 77 58 29  4 87 96 |  5  4 87 77 84 64 23 15 95 52 24 75 12 38  6 96 31 57 85 74 80 89 25 36 97' ),
( 4, 'P', 93, 'Card  93: 21 47 40 11 25  3 45 27  2 17 | 83 40 57 76 91 11 31  3 69 27  8 54  2 43 66 34 72 20 85 22  9 71 50 21 32' ),
( 4, 'P', 94, 'Card  94: 48 68 49  4  7 33  6 73  1 95 | 19 46 47 96 38 63 52 18 68 61 45 86 76 85 42 80 92 17 36 10  3 72 37 59 64' ),
( 4, 'P', 95, 'Card  95: 69 42 39 84 31  9 85  6 45  2 | 19 74 33 71 55 22  5 60  2 66 40 26 70  4 12 64 43 30 16 98 17 50 85 27 62' ),
( 4, 'P', 96, 'Card  96: 73 42 99 21 12 29 77 94  1 26 | 46  5 63 64 83 75 74 86 69 89 79 57 60 48 37 13 96 43 72  4 23 98 59 80 92' ),
( 4, 'P', 97, 'Card  97: 16 29 15 98 34 20 91 35 21 44 | 39 38  8 94 59 24 97 84 49  7 63 55 33 73 99 57 70 17 90 22 78 36 54 42 27' ),
( 4, 'P', 98, 'Card  98: 32 83 45 81 73 25 58 84 74 86 | 72  1 39 93 36 47 16 20  2 15 34 30  3  7 66 50 89 26 99 13 87 68 28 41  8' ),
( 4, 'P', 99, 'Card  99: 89 83 59 69  4 22 47 37 20 60 | 13 10 61 25 81 99 87 23 82  5 91 73 18 26 21  6 62 58 67 52 56 98  8 90 85' ),
( 4, 'P', 100, 'Card 100: 32 79 87 19 25 91 62 82 76  5 | 26 66 13 28 18 97  3 65 49 30 21  2 42  9 33 14 68 98 72 96 59 99 77  7 34' ),
( 4, 'P', 101, 'Card 101: 86 22 33 76 83 67 87 75 18 51 | 33 76 66 77 35 34 79  3 95 16 27 28 48 45 51 75 10 12 31 83 42 18 67 96 87' ),
( 4, 'P', 102, 'Card 102:  8 58 41 62 81 47 52 71 59 98 | 21 91 68 71 58 14 90 93 79 38 98 41 13 72 66 11 26  3 62 84 83 65 17 47 36' ),
( 4, 'P', 103, 'Card 103: 34 76  6 85 21 48 41 60 59 70 | 75 55 49  9 73 47 77  6 64 76 30 59 85 24 11 43 34 48 33 63 72 21 83 60 32' ),
( 4, 'P', 104, 'Card 104: 57 85 27 66 58 37 80 70 78 74 | 57 70 54 30 22 46 78 80  3 74 50 35 92 58  5 95  7 59 83 90 66 60  1 98 12' ),
( 4, 'P', 105, 'Card 105: 33 97 95 36 80 81 66 46 98 91 | 45  1 80 43 14  8 21 95 64 23 49 74 54 36 25 91 93 81 55 73 66 57 29 17 46' ),
( 4, 'P', 106, 'Card 106: 51 19 86 18 63 41 44  9  7 21 | 12 18 20 94 59 51 42  9  1 55 22  3 48 91 21 56 74 61 93 34 44 17 37 97 13' ),
( 4, 'P', 107, 'Card 107:  5  8 59 60 89 35 55 73 83  1 | 64 18 11 91 60 43 21 45 20 66 25 35 58 70 27 37 86 13 82  5 17 98 24 40  4' ),
( 4, 'P', 108, 'Card 108: 26 76 43 52 20 87  1 58 88 34 | 85 69 29 16 48 31 13 65 91 52 37 55 64  7 88 74 96 40 61 33 45 73 84 23 14' ),
( 4, 'P', 109, 'Card 109: 10 41 47  8 27 97 18 17 87 16 | 88 87 12 73 94 27 49 98 20 25 45 67 83 35 19 16 18  6 59 62  9  8 22 53 47' ),
( 4, 'P', 110, 'Card 110: 42 70 11 15 56 19 99  4 93 88 | 25 79 92 67 58 66 52 77  7 19 75 72 61  1  4 68 42 27 53 44 22 56 83 70 88' ),
( 4, 'P', 111, 'Card 111: 81 34 29 58 73 52 55 49 67 14 | 39 92  9 10 44 95 57 86 56 97 74 43 60 72 49 75 11 37 98  4 61 35  6 85 41' ),
( 4, 'P', 112, 'Card 112: 23 51 12 85 16 60 98 67 79  5 | 13 59 49 96 15 30 33 75 61 81 86 55 60 83 93 14 82 19 71 68 39 69 32  2 31' ),
( 4, 'P', 113, 'Card 113:  5 57 82 45 37 64 10 67 71 23 | 43 63 80 95 89 93 61 51 77 46 33  4 20 73 18 19 32 59 27 31 74 94 53 42 96' ),
( 4, 'P', 114, 'Card 114: 35 61 73 13 29 27 33 98 10 43 |  9 11 25 87 45 63 24 17  1 96 14 86 39  7 99 67 48 26 51 40 76 59 47 52 31' ),
( 4, 'P', 115, 'Card 115: 95  3 80 93 63 54 70 37 83 74 | 38 86 66 62 73 28 41 48  8  1 19 53 59 40 47 69 39  6 61 35 25 65 76 16 57' ),
( 4, 'P', 116, 'Card 116: 14 17 25 45  9 38 78 48 58 51 | 95 33 43 77 10 64 72 21 60 98 26 70 96 68 44 85 97 75 28 16 22 80  7 46 34' ),
( 4, 'P', 117, 'Card 117: 73 50 33 92 91 11 13 64 66 16 | 44 73 91 26 15 49 80 34 92 65 21 16 64 66 84 33 77 13 30 11 59  2 19 51 50' ),
( 4, 'P', 118, 'Card 118: 97 77 94 41 44  9 22  2 53 48 |  9 76 46 88 78 41 22 94 92  4 58 59 53 15 77 48 20 42 97  2 44 75 69 32 36' ),
( 4, 'P', 119, 'Card 119: 70 74 16 31 68 88 67 59 69 29 | 45 68  7 22 43 98 19 67 63 74  2 31 47 64 44 82 50 16 73 93 59 34 29 71 35' ),
( 4, 'P', 120, 'Card 120:  3 36 60  7 45 18 19 34 55 72 |  9 34 72 40 19 32 16 61  2 63 33 92 93 81 88  7 60 84 18 36 44 45  5  3 55' ),
( 4, 'P', 121, 'Card 121: 66 74 61 20 70 40 23 96 54 50 | 33 78 66 59 10 72 74  6 40 61 14 44 95 12 97 19 39 16 38 63  1  8 34 96  2' ),
( 4, 'P', 122, 'Card 122: 82  8 40 84  5 42 46 60 21 57 | 14 95 68 94 93 19 41  6 39 25 47 37 12 66 81 50 38 15 71 96 99 13 97 87 53' ),
( 4, 'P', 123, 'Card 123: 94  7 83 14  3 57 91 23 41 40 |  2 27 14  7 17 55 89 25 87 72 83 47 21 57  9 99 59 91 98 93 94 41 40 82  3' ),
( 4, 'P', 124, 'Card 124: 65 67 23 63 35 97 78 51 18 58 | 52 45 39 35 80 67 21 40 29 64 18  3 38 78 51 23 28 63  8 32 93 97 58 65 61' ),
( 4, 'P', 125, 'Card 125: 60 56 25 53 90 11 54 47 98 57 | 45 85 91 40 20 63 48 56 42 75 14  9 90  6 39 54 13 67 25 73 96 89 60 98 10' ),
( 4, 'P', 126, 'Card 126: 88 35 60 29 39 27 43 71 50 97 | 69 27 82 48 98 28 14 90 65 81 97 57 45 21 75 94 96 17 54 31  5 22  2 24 26' ),
( 4, 'P', 127, 'Card 127: 95 51 20 99 64 57 65 58 40 22 | 51 21 56 72 10 54 73 94 28 14 26 37 65 97 29 20 68 53  5 57 48  2 42 13 23' ),
( 4, 'P', 128, 'Card 128: 65 74 76 90  4 36 44 92 68 63 | 19 85  6 44  9 92 37 36 64 76 96 43 79 98 86 39 49 93 71 26 63 99 56 70 16' ),
( 4, 'P', 129, 'Card 129: 83 81 21 25 11 10 40 47  6 48 | 91 64 19 28 17 59 62  4 18 54 56 68 43 39 41 74 96 60 97 23  7 15 38 42  2' ),
( 4, 'P', 130, 'Card 130: 73  5 17  4 26 85  6  2 75 88 | 55 99  4 73 59 83  2 33 69 93  5 70 51 35 23 91 53 68 45 95 88 15 98 37 96' ),
( 4, 'P', 131, 'Card 131: 26 19 22 90 43 46 92 68 98 62 | 71 81 64 73 54 14 21 33 72 26 89 36 58 29 17 57 63 91 24 86 38 66 10 87  4' ),
( 4, 'P', 132, 'Card 132: 66 61 98 42 92 11 89  4 12 56 |  7  1 49 57 64 28 94 88 45  5 87 69 62 52 35 40 97 53 21 71 19 83  9 60 77' ),
( 4, 'P', 133, 'Card 133: 77 92 46 32 49 88 29 35 37 61 |  1 69 31 74 71 61 40 64 20 77  5 53 70 94 18  2 17 72 82 99 80 67 16  8 41' ),
( 4, 'P', 134, 'Card 134: 74 23  3 71 41 13 79 68 64 97 | 78 66 54 75 26 14 36 18 87  3 82 59  4 83 29  6 34 76 32 53 11 57 27 39 42' ),
( 4, 'P', 135, 'Card 135: 79 92 41 97 24 76 12 73 70 89 | 53 55 81  9 86 20 98 27 22 18 59 82 26 10 74 31 58 62 75 44 93 68 23 14 83' ),
( 4, 'P', 136, 'Card 136: 27 20 15 61 60 79 52 69 18 38 | 23 10 73 55 87 14 17 12 47 80 49 83 35 22 97 84 11 44 78 85 90 45 41 58  2' ),
( 4, 'P', 137, 'Card 137: 58 73 71 95 64 91 88 78 31 15 | 67 90 69 86 64 79 38 56 35 73 14 43 91 75 61 96 87 77 53 48 89 88 20 55 82' ),
( 4, 'P', 138, 'Card 138: 48 46 63 72 26 91 53 86 27 17 | 52 49 34 13 99 69  1 92 95 80  8  6 74 56 75 37 29 61 93 18 66 97  2 32 60' ),
( 4, 'P', 139, 'Card 139: 66 78 41 91 24 96 61 90 21 31 | 74  3 51 31 14 46 15 61 96 54 91 53 27 49 90 92 21 41 97 86 24 78 40 10 66' ),
( 4, 'P', 140, 'Card 140: 21 70 50 26 82  4 46 51 22 45 | 99 79 98 58 14 71 88 59 51 45  6 44 18 90 41 24 27  4 12 78 21 26 95 49 20' ),
( 4, 'P', 141, 'Card 141: 68 92 49 78  1 31 87 40 67 94 | 29 78 26 96 40 67 94 20  1 27 12 31 87 68 92 35 18 22 81 86 60 49  5 32 99' ),
( 4, 'P', 142, 'Card 142: 64  6 96 90 88 27 77 41 72 13 | 41 14 82 46 28 86 84 63 76 75 32 90 13  6 30 77 44 88 27 78 60 79 64 96 70' ),
( 4, 'P', 143, 'Card 143: 11 41 77 59 60 80 93 10 94 96 | 80 47 59 40 57 22 98 44 91 38 41 53 62  1 35 27 66 78 21 68 42 34 14 81 60' ),
( 4, 'P', 144, 'Card 144: 30 83 21 64 54 33 95 44 61 74 | 34  9  8 14 47 62 82 28 84 68  2 50 66 59 26 64 41 57 70 23 46 88 79 44 95' ),
( 4, 'P', 145, 'Card 145: 50 43 99 92 15  9 12 82 88 57 | 43 82 38 98 94 60 11 25  3 52  2  4 49 89 57 88 18 97 68 27 15 70  9 80 99' ),
( 4, 'P', 146, 'Card 146: 93 98 19 66 94 17 92 15 69  3 | 62 57 65 69 92 60 44 54 79 42 45 36 19 37 33 81 83 98 94 90 77  3 85 56 87' ),
( 4, 'P', 147, 'Card 147: 92  6 22 88 54 76 25 21  3 33 | 39 68 15 63 29 62 97 27 59 14 76 44 56 41 26 90 43 57 73 24  7 52 31  8 53' ),
( 4, 'P', 148, 'Card 148: 95 69 83 87 55 43 25 73 39 76 | 39 94 99 77 32 58 53 68  1 72 50 26 38 41  5 37 52 35 67 83  2 69 19 73 93' ),
( 4, 'P', 149, 'Card 149:  9  4  2 76 45  6 83 68 66 99 | 38 73 32 31 35 43 12 16 80 98 55 17 82 20 91 19 56 36 33  5 63 65 77 28 40' ),
( 4, 'P', 150, 'Card 150: 89 58 46 72 43 40 73 50 85 91 | 96 28 57 24 20 79 42 21  6 47 48  2 41 23 38 54 45 69 26 56 65 99 74 78  4' ),
( 4, 'P', 151, 'Card 151: 79 62 74 63 69 93 61 73 76 20 | 99  4 85 43 78  8 83  9 70 77 21 79  2 92 91 35 60 42 38 84 72 66 18 36 56' ),
( 4, 'P', 152, 'Card 152: 58 16 29 44 57 30  3 43 62 86 | 93 22 87 38 20 64 26 21 51 63 14 15 61 89 40 96 83 74 10 66 31 69 92 19 18' ),
( 4, 'P', 153, 'Card 153: 28 60 76 64 15 55 13 22 56 51 | 17 19 88 15 83 72 49 50 96  6 89  1 78 18 94 29 30 22 79 60 64 13 80 85 38' ),
( 4, 'P', 154, 'Card 154: 60 25 91 36 96 75 39 55 30 68 | 97 95 10 68 48 67 55 72 26 77 23 63 35 13 52 64 30 61 15 99 14 46 41 60 39' ),
( 4, 'P', 155, 'Card 155: 31 39 17 30 37 74 55 18 93 26 | 95 51 73 15 39 71 99 32 63 10 76 68 14 85 77 31 53 13 46 36 22 43 66 93 19' ),
( 4, 'P', 156, 'Card 156: 69 54 99 23 74 95  3 51  6 79 |  6  3 13 10 23 99 92 30 16 69 91 33 51  2 54 95 79 60 49 62 26 74 15 50 70' ),
( 4, 'P', 157, 'Card 157: 46 41 69 38 94  4 76 10 59 34 | 41 11 13  2 60 85  6 40 18 38 70  7  5 50 10 14 59 47 69 17 30 84 58 39 45' ),
( 4, 'P', 158, 'Card 158: 81 63 68  7 56 88 31 29 30 45 | 19 84  8  7 56 63 70 30 33 24 97 34 48 68 38 49 29 50 18 45 81 95 39 96  1' ),
( 4, 'P', 159, 'Card 159: 64 88  6 52 80 55 85 37 68 12 | 78 91 73 35 26 20 94 72 65 54 76 27 42 53 75 12 61 57 40 47 55 29 90 28 60' ),
( 4, 'P', 160, 'Card 160: 66 97 98 82 28 80 84 45 87 32 |  1 57 59 76 83 49 89 45 16 26 34 47 55  6 54 92 32 96 72 28 97 87 67 56 29' ),
( 4, 'P', 161, 'Card 161: 76 53 82 26 47 84 68  9 90 65 |  4 99 68 55 92 35 62 90 76 75 72 54 80 93 95 69 21 11  8 19 98 83 27 52 61' ),
( 4, 'P', 162, 'Card 162: 35 43 90 21 87 48 44 72 45 96 | 26 58 19 17 12 11 88 53  7 39 28  2 51  1 24 83  4 71 90 57 80 87 81 82 41' ),
( 4, 'P', 163, 'Card 163: 60  9 42 11 81 76 33 39 63 64 | 18 72 17 61 27 81 89 79 26  4 30 33 91 64 52 31 63 51 40 70  6 45 32 46  5' ),
( 4, 'P', 164, 'Card 164: 48 77 13 10 23 93 42 72 16 89 |  8 90 89 17 73 52 60 54  4 12 95 62 67 69 55 66 56 65 59 21 22 43 26 97 31' ),
( 4, 'P', 165, 'Card 165: 81 16 32 54 95 35 41 12 37 57 | 26 27  2 23 56 69  7 55 88 50 84 11 47 25  3 43  8 72 31 44 64 82 75 22 57' ),
( 4, 'P', 166, 'Card 166: 10 89 46 37 68 42 55  6 92 35 |  8 43 75 73 94 89 63 20 51 54 87 98 74 78 47 31 34 18 32 60 38 50 69  3 41' ),
( 4, 'P', 167, 'Card 167: 81  7  4 48 36 26 11 51 16 86 | 19 60 92 52 95 58 99 61 98 57 30 82 13 89  6 40 32  8 24 79 39 84 68 43 72' ),
( 4, 'P', 168, 'Card 168: 52 34 59 72 63 57 36  3 30 11 | 57  1 30 93 96 52 26 11 14 49 48 36 72 59 92  3 63 91 46 60 34 94 22 19  9' ),
( 4, 'P', 169, 'Card 169:  9 27 82 11 50 43 68 74 83 77 | 77 94 45 48 56 82 63 49 41 31 96 32 50 13  9 83 43 99 27 74 55 68 87 11 54' ),
( 4, 'P', 170, 'Card 170: 67 66 11  9 63 75 25 19 13 60 | 87 93 29 85 60 27 33 75 61 99 19 66 74 53 24 82 11 25  7 47 77 67  9 63 13' ),
( 4, 'P', 171, 'Card 171: 86 42 30 87 31 74 40 71 10 20 | 27 18 24 42 86 10 71 97 37 12 57 30 76  3 94 65  7 96  4 67 69 58  9 62 48' ),
( 4, 'P', 172, 'Card 172: 46 19 33 70 75 88  3 56  8 21 | 13 88 56 70  8 12 41 87 19 49 42 62 78 26 34 11 35 52 85  6  3  7 58 37 46' ),
( 4, 'P', 173, 'Card 173: 80 70 56 30 85 13 94 90 40 36 | 40 85 58 74 70 57 80 25 30 94 36 73 50 92  5 78 29  3 32 13 35 90 56 71 41' ),
( 4, 'P', 174, 'Card 174: 77 50  5 80 69 65 27 17 86  3 | 32 37 25 67 56 86 50 19 41 45 64  1 38 70 63 66 47 78 92 23 54 65 95  8 87' ),
( 4, 'P', 175, 'Card 175: 95  2 77 74 71 94 60 96 34 61 |  5 60 34 76 35 19 47 52 82 29 75 62 70 14 12 24 55 49 30 15 71 86 91 90 27' ),
( 4, 'P', 176, 'Card 176:  8 99 42 72 81 60 55 51 40  6 | 81  8  6 26 62 22  3 73 68 85 48 42 93 15 20 99 87 97 72 67 60 36 46 55 78' ),
( 4, 'P', 177, 'Card 177: 18 29 85 81 21 73 34 38  6 50 | 38 49 44 62 89 45 24 86 83 98 35 13 85 67 73 91 39 64  1 96  8 54 50 34 25' ),
( 4, 'P', 178, 'Card 178: 69 57 27 80 68 95 19 30 71 63 | 68 19 80 34 56 30  3 27 94 85 99 69 78 14 62 10 63 44 59  8 51 95  9 57 71' ),
( 4, 'P', 179, 'Card 179: 98 68 77 57 28 14 49 20 23 32 | 14 23 48 32 69 77 28 72 21 24 89 80 53 57 68 99 52 79 27 31 20 62 29 87  7' ),
( 4, 'P', 180, 'Card 180: 84 48 77 15 73 99 80 56 81 25 | 58 27  3 55 28 37 65 70 57 44 89 15 81 90 42 48 54 39 26 25  6 88 93 12 95' ),
( 4, 'P', 181, 'Card 181: 90 18 43 93 74 58 64 26 19 60 | 62 39 74 26 22 75 58 18 72 71 36 30 23 10 43 91 68 19 67 56 60 96 31 79 99' ),
( 4, 'P', 182, 'Card 182: 42 64 24 74 23 67 35 57  9 92 | 56 62 33 65 57  9 43 10 20 32 61 39 99 97 24 21 75 52 86 68 55 74 84 88 47' ),
( 4, 'P', 183, 'Card 183:  3 81 51 41 70 94 28 69  1 98 | 91 67 31  3 48 42 69 47 20 19 78 55  7 70  6 13 56 96 32 92 68 75 60 73  1' ),
( 4, 'P', 184, 'Card 184: 68 41 58 60 79 44 36 35 93 88 | 14 97 20 65 12 82 17 63 48 10 37 72 11 98 58 81 56 87 99 83 59 61 80  8 52' ),
( 4, 'P', 185, 'Card 185:  6 48 27 60 13  5 36 25 78 95 | 53 22 98 75 60 24 27 55 69 34 41 82  1 17 19 35 78 91 81 37 32 21  5 15  3' ),
( 4, 'P', 186, 'Card 186: 22 31 70 64 72 11 48 63 94 95 | 43 10 45 61 99 86 51 37 81 34 24 60 31 67 30 74 55 42 52 19 73 82 96 32 83' ),
( 4, 'P', 187, 'Card 187: 24 19 70 82 52 64  8 86 23 54 | 92 14 11  7 13 67 26 86 72 62 50 94 40 52 48 33 49 96 68 29 30  1 73 88 41' ),
( 4, 'P', 188, 'Card 188: 32 86 69 20 23 64 67 78 46 61 | 81 94 62 47 72 48 16 83 93 64  8 21 37 41 51 13 50 58 92 11  1 98 74 39 76' ),
( 4, 'P', 189, 'Card 189: 70 29 33 24  9 10 48 42 60 65 | 26 92 27 76 90  1 37 78 35 66 20 43 45 99  7 87 32 83 67 52 58 15 94 63 89' )

;

select * from AoC_Input ;

---------- PART 1 -----------------------------------------------------------------------------------------------------
with preproc as (
   select
   	replace(day_input, '  ', ' _') as  day_input
   	, rown
   	from aoc_input
	where daynum = 4 and input_type = 'P' order by ROWN
), 
 PARSE as (
select 
	day_input
	, rown
	--
	, substr(day_input, position('|' in day_input )+ 2, 2)  as Draw01
	, substr(day_input, position('|' in day_input )+ 5, 2)  as Draw02
	, substr(day_input, position('|' in day_input )+ 8, 2)  as Draw03
	, substr(day_input, position('|' in day_input )+ 11, 2) as Draw04
	, substr(day_input, position('|' in day_input )+ 14, 2) as Draw05
	, substr(day_input, position('|' in day_input )+ 17, 2) as Draw06
	, substr(day_input, position('|' in day_input )+ 20, 2) as Draw07
	, substr(day_input, position('|' in day_input )+ 23, 2) as Draw08
	, substr(day_input, position('|' in day_input )+ 26, 2) as Draw09
	, substr(day_input, position('|' in day_input )+ 29, 2) as Draw10
	, substr(day_input, position('|' in day_input )+ 32, 2) as Draw11
	, substr(day_input, position('|' in day_input )+ 35, 2) as Draw12
	, substr(day_input, position('|' in day_input )+ 38, 2) as Draw13
	, substr(day_input, position('|' in day_input )+ 41, 2) as Draw14
	, substr(day_input, position('|' in day_input )+ 44, 2) as Draw15
	, substr(day_input, position('|' in day_input )+ 47, 2) as Draw16
	, substr(day_input, position('|' in day_input )+ 50, 2) as Draw17
	, substr(day_input, position('|' in day_input )+ 53, 2) as Draw18
	, substr(day_input, position('|' in day_input )+ 56, 2) as Draw19
	, substr(day_input, position('|' in day_input )+ 59, 2) as Draw20
	, substr(day_input, position('|' in day_input )+ 62, 2) as Draw21
	, substr(day_input, position('|' in day_input )+ 65, 2) as Draw22
	, substr(day_input, position('|' in day_input )+ 68, 2) as Draw23
	, substr(day_input, position('|' in day_input )+ 71, 2) as Draw24
	, substr(day_input, position('|' in day_input )+ 74, 2) as Draw25
	--
	, substr(day_input, position(':' in day_input )+1, position('|' in day_input )- position(':' in day_input )-1) as totCart
from preproc
) ,
CALC as (
select 
	day_input
	, rown
	, case when position(Draw01 in totCart)>0 then 1 else 0 end +
	  case when position(Draw02 in totCart)>0 then 1 else 0 end +
	  case when position(Draw03 in totCart)>0 then 1 else 0 end +
	  case when position(Draw04 in totCart)>0 then 1 else 0 end +
	  case when position(Draw05 in totCart)>0 then 1 else 0 end +
	  case when position(Draw06 in totCart)>0 then 1 else 0 end +
	  case when position(Draw07 in totCart)>0 then 1 else 0 end +
	  case when position(Draw08 in totCart)>0 then 1 else 0 end +
	  case when position(Draw09 in totCart)>0 then 1 else 0 end +
	  case when position(Draw10 in totCart)>0 then 1 else 0 end +
	  case when position(Draw11 in totCart)>0 then 1 else 0 end +
	  case when position(Draw12 in totCart)>0 then 1 else 0 end +
	  case when position(Draw13 in totCart)>0 then 1 else 0 end +
	  case when position(Draw14 in totCart)>0 then 1 else 0 end +
	  case when position(Draw15 in totCart)>0 then 1 else 0 end +
	  case when position(Draw16 in totCart)>0 then 1 else 0 end +
	  case when position(Draw17 in totCart)>0 then 1 else 0 end +
	  case when position(Draw18 in totCart)>0 then 1 else 0 end +
	  case when position(Draw19 in totCart)>0 then 1 else 0 end +
	  case when position(Draw20 in totCart)>0 then 1 else 0 end +
	  case when position(Draw21 in totCart)>0 then 1 else 0 end +
	  case when position(Draw22 in totCart)>0 then 1 else 0 end +
	  case when position(Draw23 in totCart)>0 then 1 else 0 end +
	  case when position(Draw24 in totCart)>0 then 1 else 0 end +
	  case when position(Draw25 in totCart)>0 then 1 else 0 end 
	  as wins
from PARSE
),
RES as (
select 
	rown
	, wins
	, case 
		when wins = 0 then 0 
		else power(2, wins-1)
	end as points
from CALC
) 
select 
	sum(points) as solution1
from res
;






------------------------ PART 2 --------------------------------------------------------
-- The solution is very slow, it just generate al the >5M rows and counts them
-- not very elegant and (I should add) not mine. I found it somewhere on the internet
with recursive preproc as (
   select
   	replace(day_input, '  ', ' _') as  day_input
   	, rown
   	from aoc_input
	where daynum = 4 and input_type = 'P' order by ROWN
), 
 PARSE as (
select 
	day_input
	, rown
	--
	, substr(day_input, position('|' in day_input )+ 2, 2)  as Draw01
	, substr(day_input, position('|' in day_input )+ 5, 2)  as Draw02
	, substr(day_input, position('|' in day_input )+ 8, 2)  as Draw03
	, substr(day_input, position('|' in day_input )+ 11, 2) as Draw04
	, substr(day_input, position('|' in day_input )+ 14, 2) as Draw05
	, substr(day_input, position('|' in day_input )+ 17, 2) as Draw06
	, substr(day_input, position('|' in day_input )+ 20, 2) as Draw07
	, substr(day_input, position('|' in day_input )+ 23, 2) as Draw08
	, substr(day_input, position('|' in day_input )+ 26, 2) as Draw09
	, substr(day_input, position('|' in day_input )+ 29, 2) as Draw10
	, substr(day_input, position('|' in day_input )+ 32, 2) as Draw11
	, substr(day_input, position('|' in day_input )+ 35, 2) as Draw12
	, substr(day_input, position('|' in day_input )+ 38, 2) as Draw13
	, substr(day_input, position('|' in day_input )+ 41, 2) as Draw14
	, substr(day_input, position('|' in day_input )+ 44, 2) as Draw15
	, substr(day_input, position('|' in day_input )+ 47, 2) as Draw16
	, substr(day_input, position('|' in day_input )+ 50, 2) as Draw17
	, substr(day_input, position('|' in day_input )+ 53, 2) as Draw18
	, substr(day_input, position('|' in day_input )+ 56, 2) as Draw19
	, substr(day_input, position('|' in day_input )+ 59, 2) as Draw20
	, substr(day_input, position('|' in day_input )+ 62, 2) as Draw21
	, substr(day_input, position('|' in day_input )+ 65, 2) as Draw22
	, substr(day_input, position('|' in day_input )+ 68, 2) as Draw23
	, substr(day_input, position('|' in day_input )+ 71, 2) as Draw24
	, substr(day_input, position('|' in day_input )+ 74, 2) as Draw25
	--
	, substr(day_input, position(':' in day_input )+1, position('|' in day_input )- position(':' in day_input )-1) as totCart
from preproc
) ,
CALC as (
select 
	day_input
	, rown
	, case when position(Draw01 in totCart)>0 then 1 else 0 end +
	  case when position(Draw02 in totCart)>0 then 1 else 0 end +
	  case when position(Draw03 in totCart)>0 then 1 else 0 end +
	  case when position(Draw04 in totCart)>0 then 1 else 0 end +
	  case when position(Draw05 in totCart)>0 then 1 else 0 end +
	  case when position(Draw06 in totCart)>0 then 1 else 0 end +
	  case when position(Draw07 in totCart)>0 then 1 else 0 end +
	  case when position(Draw08 in totCart)>0 then 1 else 0 end +
	  case when position(Draw09 in totCart)>0 then 1 else 0 end +
	  case when position(Draw10 in totCart)>0 then 1 else 0 end +
	  case when position(Draw11 in totCart)>0 then 1 else 0 end +
	  case when position(Draw12 in totCart)>0 then 1 else 0 end +
	  case when position(Draw13 in totCart)>0 then 1 else 0 end +
	  case when position(Draw14 in totCart)>0 then 1 else 0 end +
	  case when position(Draw15 in totCart)>0 then 1 else 0 end +
	  case when position(Draw16 in totCart)>0 then 1 else 0 end +
	  case when position(Draw17 in totCart)>0 then 1 else 0 end +
	  case when position(Draw18 in totCart)>0 then 1 else 0 end +
	  case when position(Draw19 in totCart)>0 then 1 else 0 end +
	  case when position(Draw20 in totCart)>0 then 1 else 0 end +
	  case when position(Draw21 in totCart)>0 then 1 else 0 end +
	  case when position(Draw22 in totCart)>0 then 1 else 0 end +
	  case when position(Draw23 in totCart)>0 then 1 else 0 end +
	  case when position(Draw24 in totCart)>0 then 1 else 0 end +
	  case when position(Draw25 in totCart)>0 then 1 else 0 end 
	  as wins
from PARSE
),  cards_with_copies AS (
    SELECT
        rown 
        , wins 
    FROM calc
    UNION ALL
    SELECT
        calc.rown 
        , calc.wins 
    FROM calc 
    JOIN cards_with_copies ON calc.rown
        BETWEEN
            cards_with_copies.rown + 1
        AND
            cards_with_copies.rown + cards_with_copies.wins
)
SELECT
    (SELECT COUNT(*) FROM cards_with_copies) as solution_part_2
;





with recursive preproc as (
   select
   	replace(day_input, '  ', ' _') as  day_input
   	, rown
   	from aoc_input
	where daynum = 4 and input_type = 'T' order by ROWN
), 
 PARSE as (
select 
	day_input
	, rown
	--
	, substr(day_input, position('|' in day_input )+ 2, 2)  as Draw01
	, substr(day_input, position('|' in day_input )+ 5, 2)  as Draw02
	, substr(day_input, position('|' in day_input )+ 8, 2)  as Draw03
	, substr(day_input, position('|' in day_input )+ 11, 2) as Draw04
	, substr(day_input, position('|' in day_input )+ 14, 2) as Draw05
	, substr(day_input, position('|' in day_input )+ 17, 2) as Draw06
	, substr(day_input, position('|' in day_input )+ 20, 2) as Draw07
	, substr(day_input, position('|' in day_input )+ 23, 2) as Draw08
	, substr(day_input, position('|' in day_input )+ 26, 2) as Draw09
	, substr(day_input, position('|' in day_input )+ 29, 2) as Draw10
	, substr(day_input, position('|' in day_input )+ 32, 2) as Draw11
	, substr(day_input, position('|' in day_input )+ 35, 2) as Draw12
	, substr(day_input, position('|' in day_input )+ 38, 2) as Draw13
	, substr(day_input, position('|' in day_input )+ 41, 2) as Draw14
	, substr(day_input, position('|' in day_input )+ 44, 2) as Draw15
	, substr(day_input, position('|' in day_input )+ 47, 2) as Draw16
	, substr(day_input, position('|' in day_input )+ 50, 2) as Draw17
	, substr(day_input, position('|' in day_input )+ 53, 2) as Draw18
	, substr(day_input, position('|' in day_input )+ 56, 2) as Draw19
	, substr(day_input, position('|' in day_input )+ 59, 2) as Draw20
	, substr(day_input, position('|' in day_input )+ 62, 2) as Draw21
	, substr(day_input, position('|' in day_input )+ 65, 2) as Draw22
	, substr(day_input, position('|' in day_input )+ 68, 2) as Draw23
	, substr(day_input, position('|' in day_input )+ 71, 2) as Draw24
	, substr(day_input, position('|' in day_input )+ 74, 2) as Draw25
	--
	, substr(day_input, position(':' in day_input )+1, position('|' in day_input )- position(':' in day_input )-1) as totCart
from preproc
) ,
CALC as (
select 
	day_input
	, totCart
	, rown
	, case when Draw01 != '' AND position(Draw01 in totCart)>0 then 1 else 0 end +
	  case when Draw02 != '' AND position(Draw02 in totCart)>0 then 1 else 0 end +
	  case when Draw03 != '' AND position(Draw03 in totCart)>0 then 1 else 0 end +
	  case when Draw04 != '' AND position(Draw04 in totCart)>0 then 1 else 0 end +
	  case when Draw05 != '' AND position(Draw05 in totCart)>0 then 1 else 0 end +
	  case when Draw06 != '' AND position(Draw06 in totCart)>0 then 1 else 0 end +
	  case when Draw07 != '' AND position(Draw07 in totCart)>0 then 1 else 0 end +
	  case when Draw08 != '' AND position(Draw08 in totCart)>0 then 1 else 0 end +
	  case when Draw09 != '' AND position(Draw09 in totCart)>0 then 1 else 0 end +
	  case when Draw10 != '' AND position(Draw10 in totCart)>0 then 1 else 0 end +
	  case when Draw11 != '' AND position(Draw11 in totCart)>0 then 1 else 0 end +
	  case when Draw12 != '' AND position(Draw12 in totCart)>0 then 1 else 0 end +
	  case when Draw13 != '' AND position(Draw13 in totCart)>0 then 1 else 0 end +
	  case when Draw14 != '' AND position(Draw14 in totCart)>0 then 1 else 0 end +
	  case when Draw15 != '' AND position(Draw15 in totCart)>0 then 1 else 0 end +
	  case when Draw16 != '' AND position(Draw16 in totCart)>0 then 1 else 0 end +
	  case when Draw17 != '' AND position(Draw17 in totCart)>0 then 1 else 0 end +
	  case when Draw18 != '' AND position(Draw18 in totCart)>0 then 1 else 0 end +
	  case when Draw19 != '' AND position(Draw19 in totCart)>0 then 1 else 0 end +
	  case when Draw20 != '' AND position(Draw20 in totCart)>0 then 1 else 0 end +
	  case when Draw21 != '' AND position(Draw21 in totCart)>0 then 1 else 0 end +
	  case when Draw22 != '' AND position(Draw22 in totCart)>0 then 1 else 0 end +
	  case when Draw23 != '' AND position(Draw23 in totCart)>0 then 1 else 0 end +
	  case when Draw24 != '' AND position(Draw24 in totCart)>0 then 1 else 0 end +
	  case when Draw25 != '' AND position(Draw25 in totCart)>0 then 1 else 0 end 
	  as wins
from PARSE
) ,  RES0 as
(
	select
		  c1.rown
		, coalesce(c1.wins, 0) as winc1
		, coalesce(c2.wins, 0) as winc2
		, coalesce(c3.wins, 0) as winc3
		, coalesce(c4.wins, 0) as winc4
		, coalesce(c5.wins, 0) as winc5
		, coalesce(c6.wins, 0) as winc6
	from calc c1 
		left join calc c2 on c1.rown  = c2.rown	+1 
		left join calc c3 on c1.rown  = c3.rown	+2 
		left join calc c4 on c1.rown  = c4.rown	+3 
		left join calc c5 on c1.rown  = c5.rown	+4 
		left join calc c6 on c1.rown  = c6.rown	+5 
), RES1 as (
	select 
 		rown
 		--, 0::NUMERIC as rown_
 		, winc1 as wins
 		, 1 as Z
 	from res0 where rown = 1
 	union all
	select 
		res0.rown
 		--, res1.rown as rown_
 		, res1.wins
 		, res1.z + res0.winc2
 	from res1 join res0 on res0.rown = res1.rown +1
)
select * from res1
;
;

-- i think it could be solved STILL NOT FINISHED
-- I need to calculate the new day, based on the full previous days result 
-- the problem is: each time the second half of the CTE runs, it sees only the results of the previous run.
;
case when coalesce(c10.wins, 0) >= 10 then c10.z
	, CASE WHEN coalesce(LAG(wins, 1) OVER (  ORDER BY rown ), 0)>= 1 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins, 2) OVER (  ORDER BY rown ), 0)>= 2 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins, 3) OVER (  ORDER BY rown ), 0)>= 3 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins, 4) OVER (  ORDER BY rown ), 0)>= 4 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins, 5) OVER (  ORDER BY rown ), 0)>= 5 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins, 6) OVER (  ORDER BY rown ), 0)>= 6 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins, 7) OVER (  ORDER BY rown ), 0)>= 7 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins, 8) OVER (  ORDER BY rown ), 0)>= 8 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins, 9) OVER (  ORDER BY rown ), 0)>= 9 then 1 else 0 end 
	+ CASE WHEN coalesce(LAG(wins,10) OVER (  ORDER BY rown ), 0)>=10 then 1 else 0 end as cumul
;
--- example of recursive query
with recursive countup as (
select 1 as N, 0 as Z
union all 
select N+1, z+N as Z
from countup where N < 300
)
select * from countup;
;

---------
WITH RECURSIVE cards_with_copies AS (
    SELECT
        card_id,
        matches_count
    FROM cards
    UNION ALL
    SELECT
        cards.card_id,
        cards.matches_count
    FROM cards
    JOIN cards_with_copies ON cards.card_id
        BETWEEN
            cards_with_copies.card_id + 1
        AND
            cards_with_copies.card_id + cards_with_copies.matches_count
)
SELECT
    (SELECT SUM(2^(matches_count - 1)) FROM cards) as solution_part_1,
    (SELECT COUNT(*) FROM cards_with_copies) as solution_part_2
;



