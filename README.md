Anny
====

A simply typed lambda calculus with extensible annotation types.


Example
=====

The programmer can define rules in order to express how annoations can be combined with the primitive operations + and \*. This is done with the keyword _rule_.
This keyword expect two annotions seperated with an operator. The resulting annotatoin is indicated after the _=>_ symbol. Two examples of such rules are shown below. The first rule states that adding something annotated with the annoation apple with something else anotated with the tag apple esults in something else annotated with the annotaion apple. The second rule states that multiplying an apple with a peer results in something annoatated as a fruit. 

After these rules an example of using these annotations is shown. The example applies a lambda expression that takes a number annotated as an apple and returns a new lambda expression that takes a number annotatated as a peer. The body of the later lambda expression does some simple caluction with x and y.   

Source code:
````
rule [apple] + [apple] => [apple];
rule [apple] * [peer] => [fruit];
((\x:int[apple].\y:int[peer].(x+x)*y)3[apple])4[peer]
````


The final type of this expression is as expected _int[fruit]_.




