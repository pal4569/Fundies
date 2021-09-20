#lang racket

(require 2htdp/image)

(require 2htdp/universe)

 

(define SKY-WIDTH 300)

(define SKY-HEIGHT 200)

(define RADIUS 25)

 

(define SUN (circle RADIUS "solid" "yellow"))

(define MOON (circle RADIUS "solid" "gray"))
(define SKY (rectangle SKY-WIDTH SKY-HEIGHT "solid" "light blue"))

 

(define (draw-eclipse x-moon)
  (place-image
   MOON
   x-moon (/ SKY-HEIGHT 2)
   (place-image SUN (/ SKY-WIDTH 2) (/ SKY-HEIGHT 2) SKY)))

(animate draw-eclipse)
