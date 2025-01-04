# Already wrote this, might as well use it
┌─╴BigInt ~ Base
  B   ↚ 10
  New ← ⌅(∵⋕⇌|⍥⋅"0"=₀⊸⧻ ▽¬\↧⊸=@0 ⇌/◇⊂°⋕)
  Pad ← ⍣⍜(⬚@0⊟∩⇌)∘

  BinOp! ↚ ⍜∩New(⍥(▽⍜⇌\↥⊸± ⬚0+⊂0 ⌊⊃÷◿B)∞ ^0)
  Add    ← BinOp!⬚0+
  Sub    ← BinOp!⬚0-
  Mul    ← BinOp!(/+ ⬚0≡(⊂⊚) °⊏⊞×)

  BoolOp! ↚ ^0∩□Pad
  Eq      ← ≍
  Ne      ← ¬≍
  Lt      ← BoolOp!<
  Le      ← BoolOp!≤
  Gt      ← BoolOp!>
  Ge      ← BoolOp!≥

  LinearPow ← ⊙◌⍥⊸Mul ⊙⊓"1"°⋕
  ShortDiv ← (
    ⊓:⊓0[]
    ⍜New(
      ⋅◌∧(⟜(⊙⊂: ⌊⊃÷◿ ⊙(+⊙(×B))):)⇌
    )
  )
  Search! ← ⍥(⍜⊡◌:⊙(⊃◇^0□ShortDiv2)⟜/◇Add)∞
  Div ← (
    ⊃:(Search!(Le Pad Mul)□₂"0",)
    °□⊡⊣⊚ ≡◇Le⊸⊙⍚Mul ∩¤
  )
  Mod ← Sub Mul◡Div

  Base ← ⌅(
    ⋅⋅⇌ ⍢⟜(⊙(⊂⋕)⊃Div Mod)⋅(Gt"0") ⊓°⋕⊙[]
  | /◇Add⍚LinearPow ▽:°⊏⇌:
  )
└─╴
