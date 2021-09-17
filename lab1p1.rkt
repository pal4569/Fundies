;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lab1p1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; For any word of at least one character that starts with a letter,
; let’s say that its "bingo word" is the uppercase version of the
; first letter, followed by a space, and then followed by the number
; of characters in the word. For example, the bingo word of "bingo"
; is "B 5" and the bingo word of "Win" is "W 3".

; TODO: Write a function, bingo-word, that takes a string as an argument
; and returns its bingo word. You may assume that the argument is a valid
; word as described above.

; Don't forget to include a signature and reasonable purpose statement.

(define (bingo-word str);str is the input
  (string-append (string-upcase(substring str 0 1)) " " (number->string(string-length str))))
;the solution adds together three parts: the upper case character, a space and the length of the string
;