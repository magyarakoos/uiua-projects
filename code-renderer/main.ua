# Experimental!

SpaceG     ← $ 
GrayG      ← $ #_
GreenG     ← $ ¬±¯⌵√∿⌊⌈⁅⧻△⇡⊢⊣⇌♭¤⋯⍆⍏⍖⊚⊛◴◰□⋕&
BlueG      ← $ =≠<≤>≥+-×÷◿∨ⁿₙ↧↥∠ℂ≍⊟⊂⊏⊡↯↙↘↻⤸▽⌕⦷∊⊗⍤
YellowG    ← $ /∧\∵≡⍚⊞⧅⧈⍥⊕⊜◇⋅⊙⟜⊸⤙⤚◠◡⌅°⌝⍩∂∫
MagentaG   ← $ ⍜⊃⊓⍢⬚⨬⍣
RedG       ← $ ⚂
OrangeG    ← $ ηπτ∞¯0123456789
LightBlueG ← $ @$"
TransG     ← $ ⍉
BothG      ← $ ∩
Glyphs ← {
  SpaceG GrayG GreenG BlueG YellowG
  MagentaG RedG OrangeG LightBlueG {}
}
SpecialGlyphs ← {TransG BothG}
SubscriptG    ← $ ₋₀₁₂₃₄₅₆₇₈₉⌞⌟

SpaceC     ← ÷255 [0 0 0 0]
GrayC      ← ÷255 [150 157 163 255]
GreenC     ← ÷255 [149 208 105 255]
BlueC      ← ÷255 [84 175 252 255]
YellowC    ← ÷255 [238 194 110 255]
MagentaC   ← ÷255 [203 106 231 255]
RedC       ← ÷255 [237 93 105 255]
OrangeC    ← ÷255 [255 136 85 255]
LightBlueC ← ÷255 [31 249 252 255]
PurpleC    ← ÷255 [114 118 240]
WhiteC     ← ÷255 [208 218 236 255]
Colors ← {
  SpaceC GrayC GreenC BlueC YellowC
  MagentaC RedC OrangeC LightBlueC PurpleC
}
SpecialColors ← {Trans Bi}

GreenF ← {
  "&fras" "wait" "recv" "tryrecv" "utf₈" "graphemes"
  "json" "csv" "xlsx" "img" "gif" "type" "datetime"
  "repr" "&cd" "&fo" "&fc" "&fmd" "&fde" "&ftr"
  "&fe" "&fld" "&fif" "&frab" "&s"
  "&pf" "&p" "&epf" "&ep" "&raw" "&var" "&cl"
  "&runi" "&runc" "&runs" "&invk" "&ims" "&ap"
  "&tcpl" "&tcpa" "&tcpc" "&tlsc" "&tcpsnb"
  "&tcpaddr" "&exit" "&sl" "&camcap"
}
BlueF ← {
  "send" "map" "has" "get" "remove" "gen"
  "regex" "&fwa" "&rs" "&rb" "&ru" "&w"
  "&gifs" "&tcpsrt" "&tcpswt"
}
YellowF ← {
  "memo" "comptime" "dump" "spawn" "pool" "&rl"
  "&ast"
}
MagentaF ← {"path"}
PurpleF  ← {"insert" "audio"}
RedF ← {
  "tag" "now" "timezone" "&sc" "&ts" "&args"
  "&asr" "&clip"
}
Functions ← {
  {} {} GreenF BlueF YellowF
  MagentaF RedF {} {} PurpleF
}

Replace ← ⍜⊜∘⊞⋅∘⊸⦷⊙:

MarkStrings     ← ⬚0↯ ¤⊃⧻(◿2\+ ⍜⊚(⍜▽+₁◿2°⊏) =@")
MarkChar        ← ⍜⊚(+₁ ▽¬⤚∊⟜-₁)=
MarkComment     ← \↥=@#
MarkBeforeDigit ← ⍜⊚(▽⤚(≡⍣(ⁿ0⋕)0 ⬚@$⊏+₁))⊸=
MarkFunctions ← ⬚¯1↯ ¤⊃⧻(
  Functions¤¤
  ⬚0≡◇(/↥ ⬚0≡◇(°⊚ ♭⊞+ ⇡⊃⧻(⊚⌕)))
  -₁/↥× +₁°⊏
)

FindGlyphColors ← (
  {SpecialGlyphs Glyphs}¤¤
  ≡◇(≡⬚∞⊗1⍉≡◇∊)
  ↧1⊗1⊸<∞⍉
)

ApplySpecialColor! ← (
  ≡⊂:1
  ∧⍜⊏(↯3)0_¯1
  ▽÷9⊙≡↯⤙×0.6^0
)

Render! ← (
  Replace "@ " "@\\s"
  ⊜□⊸≠@\n

  ⍚(⊃(/↥[⊃(
        | ×3 MarkBeforeDigit @e
        | ×3 MarkBeforeDigit @.
        | ×3 MarkBeforeDigit @/
        | ×3 MarkBeforeDigit @¯
        | ×2 MarkComment
        | MarkStrings
        | MarkChar @\\
        | MarkChar @@
        )]
    | ⊸FindGlyphColors
    )
  )

  ⍚≡⨬(
    ∘
  | 1 ↯2⊗ □LightBlueG Glyphs ◌◌
  | 1 ↯2⊗ □GrayG Glyphs ◌◌
  | 1 ↯2⊗ □OrangeG Glyphs ◌◌
  )

  :⊙,
  ⍚(◇≡⨬◌⊃⋅1(⍜⊙⊣⊙◌⊙◌) ⊸≠¯1 MarkFunctions)

  :⊙,
  ⍚(◇(∧⨬◌(∩(⍜⊙⊡⊙◌: ⍜-₁⟜⊸⊡)⟜:) :°⊏) ∊SubscriptG)

  /⊂⬚0≡◇(
    ≡(⨬(×⊓(
          ◇ApplySpecialColor!^0⊡:SpecialColors
        | layout{^0 White})
      | layout⊟^0⬚WhiteC⊡:Colors
      )⟜⊡)
    ⤸1♭₃⤸0_2
  )

  &fwa"render.png" img"png"
)
