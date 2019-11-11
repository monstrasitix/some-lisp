(defun increment (value) (+ value 1))
(defun decrement (value) (- value 1))


(defun update (message model)
        (case message
            (:increment (print (increment model)))
            (:decrement (print (decrement model)))
            (:multiply (print (* model 1)))))


(defun component (props)
    (format t "<h~d>Something else inside here</h~d>~%"
      (component-size props)
      (component-size props)))


(defstruct component :size)



(defun view (model)
    (div () (text (model-text model))))


(defun div (attributes children)
    (format t "<div attributes>~a</div>~%" children))


(defun text (children) children)

(defstruct model
    :text)


(view (make-model :text "Heilo!"))

(component (make-component :size 1))
(component (make-component :size 2))
(component (make-component :size 3))
(component (make-component :size 4))
(component (make-component :size 5))
(component (make-component :size 6))

(update :increment 2)
(update :decrement 2)
(update :multiply 2)
