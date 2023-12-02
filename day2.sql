select current_database();
select current_schema();
use database Advent2023;

/*
DROP TABLE AOC_INPUT;
CREATE TABLE AoC_Input (
	   DAYNUM Decimal(10,0)
    , INPUT_TYPE VARCHAR(1)
    , ROWN  DECIMAL(10,0)
    , DAY_INPUT VARCHAR(10000000)
);

INSERT INTO AoC_Input (DAYNUM, INPUT_TYPE, ROWN, DAY_INPUT)
VALUES
( 1, 'T', 1, '1abc2'         ),
( 1, 'T', 2, 'pqr3stu8vwx'   ),
( 1, 'T', 3, 'a1b2c3d4e5f'   ),
( 1, 'T', 4, 'treb7uchet'    );
*/

INSERT INTO AoC_Input (DAYNUM, INPUT_TYPE, ROWN, DAY_INPUT)
VALUES
( 2, 'P', 1, 'Game 1: 5 red, 1 green; 6 red, 3 blue; 9 red; 1 blue, 1 green, 4 red; 1 green, 2 blue; 2 blue, 1 red' ),
( 2, 'P', 2, 'Game 2: 12 red, 2 green, 9 blue; 8 red, 12 blue; 9 red, 1 blue, 2 green; 12 blue, 8 red, 2 green; 4 red, 5 blue; 1 green, 9 blue, 10 red' ),
( 2, 'P', 3, 'Game 3: 2 red, 8 blue, 5 green; 10 red, 10 green, 7 blue; 9 green, 13 red, 5 blue' ),
( 2, 'P', 4, 'Game 4: 3 red; 1 blue, 3 green, 3 red; 3 blue, 8 green, 5 red; 8 green, 2 blue' ),
( 2, 'P', 5, 'Game 5: 8 blue, 1 red, 1 green; 1 blue, 1 red, 7 green; 7 green, 5 blue' ),
( 2, 'P', 6, 'Game 6: 2 red, 8 blue; 5 blue, 4 green; 5 blue, 4 red, 3 green; 3 red, 9 blue; 5 green, 9 blue, 7 red; 6 red, 9 blue, 5 green' ),
( 2, 'P', 7, 'Game 7: 3 green, 4 blue; 7 green, 3 red, 3 blue; 7 red, 4 green, 6 blue; 4 blue, 1 green, 5 red; 6 blue, 2 red, 7 green; 1 green, 4 blue, 4 red' ),
( 2, 'P', 8, 'Game 8: 2 blue, 12 red; 1 green, 2 blue, 10 red; 12 red, 10 blue; 5 red, 1 green, 2 blue; 13 red, 16 blue, 1 green; 2 blue, 18 red' ),
( 2, 'P', 9, 'Game 9: 5 green, 2 red, 13 blue; 5 green, 1 red; 7 green, 8 blue, 1 red; 16 blue; 5 blue, 2 green, 3 red' ),
( 2, 'P', 10, 'Game 10: 5 blue, 2 red; 13 blue, 3 red, 5 green; 2 red, 3 blue; 6 red, 9 blue, 5 green; 9 blue, 3 green, 3 red' ),
( 2, 'P', 11, 'Game 11: 9 red, 4 green, 3 blue; 8 blue, 8 red; 1 green, 13 blue; 11 blue, 8 red, 4 green' ),
( 2, 'P', 12, 'Game 12: 1 green; 1 blue, 4 red, 6 green; 1 red, 8 green; 7 red, 1 blue, 3 green; 8 green, 1 blue, 8 red' ),
( 2, 'P', 13, 'Game 13: 5 blue, 14 red, 1 green; 10 red, 4 blue, 1 green; 6 red, 1 green, 3 blue; 7 blue, 4 red; 14 red, 2 blue, 1 green' ),
( 2, 'P', 14, 'Game 14: 9 green, 1 blue; 6 red, 9 green; 7 green, 3 blue' ),
( 2, 'P', 15, 'Game 15: 1 green, 4 blue, 2 red; 8 red, 3 blue; 1 red, 3 blue' ),
( 2, 'P', 16, 'Game 16: 6 blue, 10 green, 5 red; 11 blue, 1 red; 3 red, 2 green, 3 blue; 1 green, 4 red, 6 blue; 11 blue, 2 red, 11 green' ),
( 2, 'P', 17, 'Game 17: 4 green, 5 blue, 8 red; 6 green, 7 red; 3 green, 8 red, 5 blue; 4 green, 8 red; 5 green, 11 blue, 3 red; 5 green, 15 blue, 1 red' ),
( 2, 'P', 18, 'Game 18: 7 green, 17 blue, 14 red; 4 green, 11 red, 7 blue; 13 blue, 8 green; 3 red, 7 green, 11 blue' ),
( 2, 'P', 19, 'Game 19: 13 red, 13 blue, 1 green; 7 blue, 1 red, 5 green; 18 blue, 1 green, 11 red; 4 blue, 13 red, 6 green' ),
( 2, 'P', 20, 'Game 20: 1 blue, 6 green, 7 red; 5 green, 4 red, 1 blue; 1 blue, 1 red, 4 green' ),
( 2, 'P', 21, 'Game 21: 3 red, 5 green, 7 blue; 6 green, 10 blue, 5 red; 9 red, 1 blue; 5 green, 8 blue, 9 red; 2 red, 11 green, 4 blue; 5 red, 6 blue' ),
( 2, 'P', 22, 'Game 22: 8 blue, 1 red, 1 green; 10 blue; 13 blue, 1 green, 4 red; 1 green, 8 blue, 4 red; 3 blue, 1 red' ),
( 2, 'P', 23, 'Game 23: 2 blue; 3 blue, 5 green; 6 blue, 5 green, 2 red; 1 green' ),
( 2, 'P', 24, 'Game 24: 1 red, 13 green, 4 blue; 16 green, 4 blue; 4 red, 5 blue, 11 green; 15 green, 5 red, 10 blue; 16 green, 1 red; 5 red, 3 blue, 10 green' ),
( 2, 'P', 25, 'Game 25: 12 red, 7 green, 6 blue; 5 blue, 5 red, 12 green; 12 green, 3 red; 5 green, 5 red, 3 blue' ),
( 2, 'P', 26, 'Game 26: 2 green, 11 blue; 5 red, 3 blue; 5 red, 12 blue, 3 green' ),
( 2, 'P', 27, 'Game 27: 3 green, 5 red, 12 blue; 3 red, 11 blue, 1 green; 3 red, 4 blue, 3 green; 3 red, 9 green, 9 blue; 14 blue, 1 green, 12 red' ),
( 2, 'P', 28, 'Game 28: 8 green, 9 blue; 6 green, 8 red, 1 blue; 7 red, 6 green; 12 red, 2 blue, 2 green' ),
( 2, 'P', 29, 'Game 29: 16 red, 4 green, 1 blue; 10 red, 7 green, 2 blue; 3 green, 8 red; 2 blue, 1 red, 4 green; 2 blue, 10 red, 9 green; 7 green, 1 blue, 18 red' ),
( 2, 'P', 30, 'Game 30: 13 red, 3 blue; 3 blue, 1 green, 10 red; 15 red, 3 blue; 1 green, 1 red, 1 blue; 16 red, 1 green, 3 blue' ),
( 2, 'P', 31, 'Game 31: 5 red, 8 blue, 3 green; 5 green, 7 blue, 13 red; 9 red, 3 green, 10 blue; 15 red, 1 green, 7 blue; 5 green, 12 blue, 2 red; 6 blue, 13 red' ),
( 2, 'P', 32, 'Game 32: 2 blue, 8 red, 1 green; 3 green, 2 blue, 11 red; 2 green, 6 red; 13 red, 3 green, 2 blue; 6 red' ),
( 2, 'P', 33, 'Game 33: 5 blue, 5 red; 8 red, 1 green, 7 blue; 1 green, 6 red' ),
( 2, 'P', 34, 'Game 34: 3 blue; 3 green, 2 blue, 2 red; 3 green, 1 blue, 3 red; 3 blue' ),
( 2, 'P', 35, 'Game 35: 4 red, 2 blue, 6 green; 4 blue, 9 red, 10 green; 3 blue, 8 green, 1 red; 3 red, 1 green, 4 blue; 4 green, 7 blue; 8 red, 8 green, 2 blue' ),
( 2, 'P', 36, 'Game 36: 1 red, 3 blue, 12 green; 16 green, 7 blue, 1 red; 1 blue, 1 red, 9 green; 2 blue, 2 green; 8 green, 2 red' ),
( 2, 'P', 37, 'Game 37: 2 green, 8 red; 3 blue, 1 red, 2 green; 15 red, 7 blue; 1 green, 16 red, 15 blue; 13 red, 9 blue' ),
( 2, 'P', 38, 'Game 38: 9 red, 9 blue, 5 green; 3 red, 19 blue, 8 green; 15 blue, 11 red, 6 green; 10 red, 19 blue, 5 green; 8 blue, 7 green, 6 red; 7 red, 6 green, 10 blue' ),
( 2, 'P', 39, 'Game 39: 8 blue, 13 green, 2 red; 16 blue, 9 green; 19 blue, 1 green; 1 red, 3 blue, 9 green; 1 green, 18 blue' ),
( 2, 'P', 40, 'Game 40: 6 red, 5 blue; 11 green, 15 blue, 7 red; 10 blue, 5 green, 10 red; 13 blue, 9 red, 11 green; 2 green, 14 blue, 12 red; 6 red, 6 green' ),
( 2, 'P', 41, 'Game 41: 10 green, 1 red, 1 blue; 1 red, 9 green; 1 green; 6 green, 1 blue, 2 red; 1 blue, 8 green, 1 red; 9 green' ),
( 2, 'P', 42, 'Game 42: 13 green, 2 blue; 10 blue, 1 red; 10 red, 10 green, 8 blue; 16 green, 8 blue, 6 red; 9 red, 18 green; 10 red, 15 blue, 1 green' ),
( 2, 'P', 43, 'Game 43: 3 red, 16 blue, 6 green; 1 red, 17 blue, 12 green; 19 blue, 2 red, 16 green; 12 green, 7 blue, 1 red; 8 green, 7 blue, 2 red; 12 green, 9 blue' ),
( 2, 'P', 44, 'Game 44: 4 red, 3 green, 2 blue; 18 blue, 3 green; 7 red, 7 blue, 4 green' ),
( 2, 'P', 45, 'Game 45: 1 green, 3 blue, 7 red; 9 green, 8 red, 2 blue; 5 green, 3 blue, 6 red' ),
( 2, 'P', 46, 'Game 46: 18 blue; 4 blue, 1 red, 5 green; 2 red, 15 blue, 7 green' ),
( 2, 'P', 47, 'Game 47: 17 red, 4 green, 12 blue; 6 green, 1 red, 2 blue; 3 blue, 13 green, 4 red' ),
( 2, 'P', 48, 'Game 48: 11 red, 2 green; 8 red, 3 green; 2 green, 5 blue, 9 red; 3 green, 2 blue, 5 red' ),
( 2, 'P', 49, 'Game 49: 2 green, 12 blue, 9 red; 1 green, 12 red; 1 green, 2 blue, 18 red; 8 blue, 19 red; 1 green, 5 blue; 3 blue, 10 red, 1 green' ),
( 2, 'P', 50, 'Game 50: 5 green, 1 red; 7 red, 3 blue, 9 green; 15 blue, 4 green, 4 red' ),
( 2, 'P', 51, 'Game 51: 12 green, 14 blue; 2 red, 5 green, 16 blue; 4 red, 17 blue, 16 green; 6 blue, 16 green, 2 red; 17 blue, 13 green, 5 red' ),
( 2, 'P', 52, 'Game 52: 7 green, 10 red, 2 blue; 6 green, 12 red, 3 blue; 10 red, 3 blue, 8 green; 3 blue, 1 green, 8 red; 6 green, 5 blue, 3 red' ),
( 2, 'P', 53, 'Game 53: 8 blue, 3 green; 7 green, 11 blue, 1 red; 1 red, 7 blue, 9 green; 1 blue, 1 green; 4 green, 1 red; 1 red, 8 blue' ),
( 2, 'P', 54, 'Game 54: 1 blue, 1 green, 4 red; 1 red, 1 blue, 13 green; 11 red, 11 green, 1 blue' ),
( 2, 'P', 55, 'Game 55: 5 blue, 4 red, 11 green; 13 green, 9 blue, 3 red; 3 red, 7 green, 8 blue; 2 red, 20 blue, 2 green; 3 red, 10 blue, 1 green; 12 green, 5 red, 8 blue' ),
( 2, 'P', 56, 'Game 56: 17 red, 2 green, 1 blue; 13 blue, 8 green, 6 red; 1 green, 9 blue, 6 red; 2 blue' ),
( 2, 'P', 57, 'Game 57: 9 green, 1 red, 9 blue; 15 green, 10 blue, 1 red; 5 blue, 3 red, 10 green' ),
( 2, 'P', 58, 'Game 58: 14 red, 2 blue, 14 green; 17 red, 7 blue, 10 green; 4 green, 13 red, 11 blue; 3 green, 13 red, 5 blue; 13 red, 6 blue; 1 red, 7 green, 2 blue' ),
( 2, 'P', 59, 'Game 59: 16 blue, 7 red, 2 green; 7 green, 10 red, 12 blue; 4 red, 9 green, 14 blue; 8 blue, 11 green, 1 red; 3 blue, 5 red, 11 green' ),
( 2, 'P', 60, 'Game 60: 1 blue; 9 red, 4 green; 3 green, 3 blue, 1 red; 3 red, 1 blue' ),
( 2, 'P', 61, 'Game 61: 2 green, 15 red, 12 blue; 9 green, 1 blue, 10 red; 14 blue, 17 red, 2 green; 12 red, 6 blue, 3 green; 8 green, 10 blue, 10 red; 2 green, 10 red, 2 blue' ),
( 2, 'P', 62, 'Game 62: 12 red, 6 blue, 1 green; 2 red, 1 green, 4 blue; 10 blue, 12 red, 4 green; 5 green, 8 red, 8 blue' ),
( 2, 'P', 63, 'Game 63: 3 green, 3 red; 7 red; 2 green, 1 blue, 7 red; 5 red, 1 green' ),
( 2, 'P', 64, 'Game 64: 5 green, 11 red; 4 green, 2 blue, 7 red; 7 red, 11 blue, 3 green; 8 blue, 5 green, 5 red; 8 red, 4 blue' ),
( 2, 'P', 65, 'Game 65: 5 red, 5 blue; 15 green, 3 blue; 3 blue, 3 red, 8 green; 1 blue, 3 red, 5 green' ),
( 2, 'P', 66, 'Game 66: 8 green, 5 blue, 12 red; 10 red, 5 blue, 11 green; 12 red, 3 blue, 2 green; 5 green, 1 blue, 10 red; 15 red, 5 green, 3 blue; 2 red, 8 blue' ),
( 2, 'P', 67, 'Game 67: 12 blue, 3 red; 4 blue, 4 red, 1 green; 9 green, 14 blue, 3 red; 2 red, 13 blue, 6 green; 17 blue, 5 green' ),
( 2, 'P', 68, 'Game 68: 1 blue, 4 red, 11 green; 11 green, 4 red, 7 blue; 11 green, 7 blue; 14 green, 2 blue, 1 red; 2 blue, 4 red' ),
( 2, 'P', 69, 'Game 69: 4 red, 1 green; 5 red, 2 green, 3 blue; 1 red, 7 blue; 8 red, 6 blue, 1 green; 2 green, 6 red, 1 blue; 6 red, 8 blue, 2 green' ),
( 2, 'P', 70, 'Game 70: 6 blue, 2 green, 4 red; 1 green, 5 blue; 1 blue, 3 red; 2 red; 2 red, 17 blue' ),
( 2, 'P', 71, 'Game 71: 9 blue, 2 green, 1 red; 7 blue, 2 green, 3 red; 12 red, 13 blue; 15 blue, 1 green, 1 red' ),
( 2, 'P', 72, 'Game 72: 15 blue, 16 red, 18 green; 16 red, 12 blue, 14 green; 3 blue, 12 red, 4 green; 8 green, 17 blue, 15 red; 15 blue, 18 green, 4 red; 5 blue, 3 red, 10 green' ),
( 2, 'P', 73, 'Game 73: 17 blue, 3 red, 19 green; 10 blue, 15 green, 18 red; 4 green, 15 red; 1 green, 17 blue, 14 red; 16 red, 1 green, 4 blue' ),
( 2, 'P', 74, 'Game 74: 6 green, 2 blue, 5 red; 1 blue, 9 green; 5 red, 1 blue, 10 green; 4 green, 11 red, 1 blue' ),
( 2, 'P', 75, 'Game 75: 4 blue; 4 green, 6 blue; 2 green, 2 blue, 4 red' ),
( 2, 'P', 76, 'Game 76: 5 blue; 5 green, 5 red; 9 red, 1 blue, 1 green; 5 green; 3 green, 6 red, 1 blue' ),
( 2, 'P', 77, 'Game 77: 2 red, 10 blue, 6 green; 1 red, 6 blue, 6 green; 9 blue, 2 green, 8 red; 12 blue, 7 green, 18 red' ),
( 2, 'P', 78, 'Game 78: 2 red, 5 blue, 2 green; 2 blue, 4 green, 6 red; 4 blue, 4 green, 3 red; 3 red, 5 green; 2 red, 4 green, 4 blue' ),
( 2, 'P', 79, 'Game 79: 14 red, 6 blue, 1 green; 6 blue, 18 red, 2 green; 1 green; 8 red, 5 green; 1 blue, 7 red, 6 green; 11 red, 1 blue' ),
( 2, 'P', 80, 'Game 80: 5 blue, 4 red; 19 blue, 7 red; 6 red, 1 green, 12 blue; 1 green, 8 red' ),
( 2, 'P', 81, 'Game 81: 7 green, 6 red, 9 blue; 14 blue, 8 green; 15 green, 6 red, 4 blue; 1 red, 7 blue, 19 green' ),
( 2, 'P', 82, 'Game 82: 1 red, 4 blue; 3 blue, 1 red, 5 green; 3 blue, 5 green, 12 red; 17 red, 2 blue; 4 blue, 1 red' ),
( 2, 'P', 83, 'Game 83: 6 blue, 11 green, 18 red; 11 red, 7 blue, 2 green; 13 red, 14 blue, 14 green; 1 red, 3 blue, 16 green' ),
( 2, 'P', 84, 'Game 84: 2 red, 5 blue, 3 green; 9 red, 7 blue, 2 green; 4 green, 9 red, 3 blue; 1 blue, 1 green, 5 red' ),
( 2, 'P', 85, 'Game 85: 1 red, 10 green, 15 blue; 9 green, 1 red; 1 red, 2 green, 12 blue' ),
( 2, 'P', 86, 'Game 86: 1 green, 5 blue, 8 red; 10 green, 8 red, 9 blue; 6 green, 3 red, 8 blue; 9 red, 3 green, 8 blue; 2 red, 6 blue, 1 green' ),
( 2, 'P', 87, 'Game 87: 13 red, 12 green; 6 blue, 5 green, 3 red; 10 green, 1 blue, 17 red; 9 green, 6 blue, 2 red; 1 blue, 9 green, 14 red' ),
( 2, 'P', 88, 'Game 88: 4 green, 1 blue, 7 red; 6 green, 2 red, 1 blue; 13 red, 7 green' ),
( 2, 'P', 89, 'Game 89: 2 blue, 7 green, 10 red; 6 green, 5 blue; 12 red, 4 blue, 5 green; 15 red, 8 blue; 6 blue, 8 red, 3 green; 14 red, 11 green, 16 blue' ),
( 2, 'P', 90, 'Game 90: 8 green, 8 red; 5 green, 1 blue, 13 red; 3 blue, 1 green, 3 red; 11 red, 2 green; 9 red, 7 green, 1 blue' ),
( 2, 'P', 91, 'Game 91: 4 green, 13 red, 10 blue; 11 blue, 4 red; 10 blue, 9 green; 9 green, 4 blue, 12 red; 7 green, 4 red, 1 blue' ),
( 2, 'P', 92, 'Game 92: 6 blue; 10 green, 1 red, 11 blue; 5 blue, 5 green; 6 green, 1 red; 1 red, 6 green' ),
( 2, 'P', 93, 'Game 93: 2 red, 15 blue, 4 green; 13 red, 11 green; 6 green, 1 blue, 6 red; 6 red, 5 blue, 10 green; 2 blue, 11 green, 18 red' ),
( 2, 'P', 94, 'Game 94: 2 red, 13 blue, 3 green; 15 blue, 4 red, 2 green; 4 green, 9 blue, 7 red; 12 blue, 6 red, 11 green; 20 blue, 13 red, 11 green' ),
( 2, 'P', 95, 'Game 95: 6 blue, 1 red, 10 green; 10 red, 5 blue, 7 green; 9 red, 13 green, 10 blue; 11 blue, 9 red, 8 green' ),
( 2, 'P', 96, 'Game 96: 2 red, 7 green, 16 blue; 20 green, 2 red, 14 blue; 5 red, 15 green, 15 blue; 4 blue, 6 red, 15 green; 6 green, 6 red, 10 blue' ),
( 2, 'P', 97, 'Game 97: 1 red, 1 blue, 14 green; 10 green, 12 red, 1 blue; 10 red, 2 green, 1 blue; 1 blue, 3 green, 14 red; 3 red, 2 blue, 13 green; 1 blue, 3 green, 13 red' ),
( 2, 'P', 98, 'Game 98: 13 blue, 1 green; 18 green, 6 red, 3 blue; 11 blue, 7 red, 9 green; 4 red, 6 green, 11 blue; 12 blue, 6 red, 8 green' ),
( 2, 'P', 99, 'Game 99: 4 blue; 1 red, 2 green, 11 blue; 12 blue, 1 green, 1 red; 11 blue, 6 green; 1 red, 7 green, 8 blue' ),
( 2, 'P', 100, 'Game 100: 10 blue, 5 green; 4 green, 3 red, 6 blue; 2 green, 4 red, 1 blue' )
;

select * from AoC_Input ;

---------- PART 1 -----------------------------------------------------------------------------------------------------

with DRAWS as (
select 
	day_input
	, substring(day_input, position(':' in day_input)-2, 2)::numeric as GAME
	, substring(day_input, position(':' in day_input)+2, 200) as REST
	, substring(day_input || ';' from ':(.*?);') as draw1
	, substring(day_input || ';' from ';(.*?);') as draw2
	, substring(day_input || ';' from ';.*?;(.*?);') as draw3
	, substring(day_input || ';' from ';.*?;.*?;(.*?);') as draw4
	, substring(day_input || ';' from ';.*?;.*?;.*?;(.*?);') as draw5
	, substring(day_input || ';' from '.*;(.*?);') as draw6
from aoc_input where daynum = 2 and input_type = 'P' 
), colors as 
(
select 
	case when game = 0 then 100 else game end as game
	, rest
	, substring(draw1 from '(\d+)\s*red'  )::NUMERIC as draw1r
	, substring(draw1 from '(\d+)\s*green')::NUMERIC as draw1g
	, substring(draw1 from '(\d+)\s*blue' )::NUMERIC as draw1b
	, substring(draw2 from '(\d+)\s*red'  )::NUMERIC as draw2r
	, substring(draw2 from '(\d+)\s*green')::NUMERIC as draw2g
	, substring(draw2 from '(\d+)\s*blue' )::NUMERIC as draw2b
	, substring(draw3 from '(\d+)\s*red'  )::NUMERIC as draw3r
	, substring(draw3 from '(\d+)\s*green')::NUMERIC as draw3g
	, substring(draw3 from '(\d+)\s*blue' )::NUMERIC as draw3b
	, substring(draw4 from '(\d+)\s*red'  )::NUMERIC as draw4r
	, substring(draw4 from '(\d+)\s*green')::NUMERIC as draw4g
	, substring(draw4 from '(\d+)\s*blue' )::NUMERIC as draw4b
	, substring(draw5 from '(\d+)\s*red'  )::NUMERIC as draw5r
	, substring(draw5 from '(\d+)\s*green')::NUMERIC as draw5g
	, substring(draw5 from '(\d+)\s*blue' )::NUMERIC as draw5b
	, substring(draw6 from '(\d+)\s*red'  )::NUMERIC as draw6r
	, substring(draw6 from '(\d+)\s*green')::NUMERIC as draw6g
	, substring(draw6 from '(\d+)\s*blue' )::NUMERIC as draw6b
from draws
), calc_first as (
select 
	game
	, rest
	, greatest(draw1r, draw2r, draw3r, draw4r, draw5r, draw6r) as maxr
	, greatest(draw1g, draw2g, draw3g, draw4g, draw5g, draw6g) as maxg
	, greatest(draw1b, draw2b, draw3b, draw4b, draw5b, draw6b) as maxb
	, case 
		when greatest(draw1r, draw2r, draw3r, draw4r, draw5r, draw6r) > 12 then 0
		when greatest(draw1g, draw2g, draw3g, draw4g, draw5g, draw6g) > 13 then 0
		when greatest(draw1b, draw2b, draw3b, draw4b, draw5b, draw6b) > 14 then 0
		else game
	end as calc1
from colors
) 
--select * from calc_first 
--where calc1=0
  select sum(calc1) from calc_first
;


