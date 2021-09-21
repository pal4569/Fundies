;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hw1p5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; == Homework 1, Problem 5 ==

; TODO: your task is to implement the function cycle-spelling
; so that when (animate cycle-spelling) is called,
; it animates spelling of the following defined long word,
; letter-by-letter (in all caps).
; When the end of the word is reached
; it cycles back and starts from the beginning.

(define LONG-WORD "floccinaucinihilipilification")

; Hint: one way to count 0 up to some number and then
; loop back is to think about dividing two numbers
; and taking the remainder; so the remainder of 1 / 5 is 1,
; the remainder of 4 / 5 is 4; and the remainder of 5 / 5
; is back to 0. In BSL, look at the remainder function.

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(define slowness 7) ; the higher this number is, the slower the animation will run

; My solution works by continually animating a substring of the LONG-WORD, piece by piece
; starting from the first letter and going up to the last letter. This function generates
; the substrings that the "create-letters" function wil display. The function always takes
; a substring starting from the beginning of the string (hence str 0). I do not know
; that much about the animate function, but I do know the following: it has only worked
; with a function that takes 1 integer argument, it continually increases its value
; at an unspecified rate, and it does not stop increasing until the program is terminated.
; I decided that I would use the continually increasing variable "i" to control the end
; position of the substring in the "create-sub" function. The first thing I did was I
; divided "i" by the variable "slowness", and then I used the "round" function to bring
; it back to an integer. This will slow the program down, because the result of dividing
; an integer and rounding it up will cause "i" to increase slower. For example, if
; "slowness" was 10, i will loop through the following values: 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, etc
; which will all round up to 10, meaning the animate function will have to run 10 times before i will
; change to 2. I used the modulu function ("remainder") at the end to restart the animaton. Once i
; reaches string-length + 1, it will return back to zero.

(define (create-sub str i)
  (substring str 0 (remainder (round (/ i slowness)) (+ (string-length str) 1))))

; Generates the image on the screen by repeatedly calling the "create-sub" function to change the text.
(define (create-letters i)
  (overlay
   (text (create-sub LONG-WORD i) 24 "black")
   (square 300 "solid" "white")))

(animate create-letters)
     