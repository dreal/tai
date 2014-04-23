(set-logic QF_NRA)
(declare-fun cil_tmp14 () Real)
(declare-fun cil_tmp15 () Real)
(declare-fun cil_tmp16 () Real)
(declare-fun cil_tmp17 () Real)
(declare-fun big1 () Real)
(declare-fun hpinv5 () Real)
(declare-fun mp12 () Real)
(declare-fun mp23 () Real)
(declare-fun mp34 () Real)
(declare-fun t7 () Real)
(declare-fun toint6 () Real)
(declare-fun v9 () Real)
(declare-fun x () Real)
(declare-fun xn8 () Real)
(declare-fun y10 () Real)
(assert (= 2.56 x))
(assert
 (and
  (= big1 52776558133248.000000)
  (= mp12 1.570796)
  (= mp23 (- 0.000000 0.000000))
  (= mp34 (- 0.000000 0.000000))
  (= hpinv5 0.636620)
  (= toint6 6755399441055744.000000)

  (= cil_tmp14 (* x hpinv5))
  (= t7 (+ cil_tmp14 toint6))

  (= xn8 (- t7 toint6))

  (= v9 t7)
  (= cil_tmp17 (- x cil_tmp16))
  (= cil_tmp16 (* xn8 mp12))
  (= cil_tmp15 (* xn8 mp23))
  (= y10 (- cil_tmp17 cil_tmp15))
  )
 )
(check-sat)
(exit)