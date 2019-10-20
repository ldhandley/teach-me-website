#lang racket

(require website 
         (only-in 2htdp/image
                  circle))

(provide my-site)


(define (blog-page title . stuff)
  (html
    (body
      (a 'href: "/" "Back Home")
      title
      stuff)))

(define my-site
  (site
    (index
      (page index.html
            (html
              (body
                (h1 "This is Lindsey's Homepage")
                (link-to blog-post1 
                         "My Story")))))

    (blog-post1
      (page blog/first-post.html
            (blog-page
              (h1 "This is my story!!")    
              (write-image (circle 40 'solid 'red)))))))


;TODO:
;  * Add missing attributes, src:, href:, etc...



