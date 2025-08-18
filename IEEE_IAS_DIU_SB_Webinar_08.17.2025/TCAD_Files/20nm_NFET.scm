
;; Defined Parameters:

;; Contact Sets:
(sdegeo:define-contact-set "drain" 4 (color:rgb 1 1 0 )"##" )
(sdegeo:define-contact-set "source" 4 (color:rgb 1 0 1 )"##" )
(sdegeo:define-contact-set "gate" 4 (color:rgb 1 0 0 )"##" )

;; Work Planes:
(sde:workplanes-init-scm-binding)

;; Defined ACIS Refinements:
(sde:refinement-init-scm-binding)

;; Reference/Evaluation Windows:
(sdedr:define-refeval-window "RefEvalWin_1" "Rectangle" (position 0.07 0.025 0) (position 0.12 0.04 0))
(sdedr:define-refeval-window "RefEvalWin_2" "Rectangle" (position 0.07 0.025 0) (position 0.12 0.04 0))
(sdedr:define-refeval-window "RefEvalWin_3" "Rectangle" (position 0 0.025 0) (position 0.05 0.04 0))
(sdedr:define-refeval-window "RefEvalWin_4" "Rectangle" (position 0.03 0.04 0) (position 0.09 0.025 0))

;; Restore GUI session parameters:
(sde:set-window-position 8 31)
(sde:set-window-size 1920 1129)
(sde:set-window-style "Windows")
(sde:set-background-color 0 127 178 204 204 204)
(sde:scmwin-set-prefs "Liberation Sans" "Normal" 8 124 )
