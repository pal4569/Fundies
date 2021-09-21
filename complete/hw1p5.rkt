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

(define (create-UFO-scene height)
  (place-image UFO height 50 (empty-scene 300 100)))
     
(define UFO
  (overlay (circle 10 'solid 'green)
           (rectangle 40 4 'solid 'green)))

; (define (letters str)
  ; (for/list ([i '(1 2 3)])
    ; (display i)))

(define stuff
  (list (create-UFO-scene 30)
        (create-UFO-scene 50)))
(for ([i '(1 2 3)])
    (display i))
; (run-movie 2 stuff)
     