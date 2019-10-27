(* This file is part of Ubase *)


let white_space = [
 (* White space chars are generated by [dump_space] *)
  0x0009; (* "\t" =  *)
  0x000a; (* "\n" =  *)
  0x000b; (* "\011" =  *)
  0x000c; (* "\012" =  *)
  0x000d; (* "\r" =  *)
  0x0020; (* " " = SPACE *)
  0x0085; (* "" =  *)
  0x00a0; (* " " = NO-BREAK SPACE *)
  0x1680; (* " " = OGHAM SPACE MARK *)
  0x2000; (* " " = EN QUAD *)
  0x2001; (* " " = EM QUAD *)
  0x2002; (* " " = EN SPACE *)
  0x2003; (* " " = EM SPACE *)
  0x2004; (* " " = THREE-PER-EM SPACE *)
  0x2005; (* " " = FOUR-PER-EM SPACE *)
  0x2006; (* " " = SIX-PER-EM SPACE *)
  0x2007; (* " " = FIGURE SPACE *)
  0x2008; (* " " = PUNCTUATION SPACE *)
  0x2009; (* " " = THIN SPACE *)
  0x200a; (* " " = HAIR SPACE *)
  0x2028; (* " " = LINE SEPARATOR *)
  0x2029; (* " " = PARAGRAPH SEPARATOR *)
  0x202f; (* " " = NARROW NO-BREAK SPACE *)
  0x205f; (* " " = MEDIUM MATHEMATICAL SPACE *)
  0x3000; (* "　" = IDEOGRAPHIC SPACE *)
  (* end of white space *)
]

let non_ascii_white_space = List.filter (fun i -> i > 127) white_space


(* This list is manually created and overrides the automatically generated list
   [latin_uchar_to_base_alist]. Please add your own. (Only non-ascii codes) *)
let misc_to_ascii_alist = [
  (* Letters *)
  0x00aa, "a"; (* "ª" = FEMININE ORDINAL INDICATOR *)
  0x00ba, "o"; (* "º" = MASCULINE ORDINAL INDICATOR *)
  0x00df, "ss";  (* "ß" = LATIN SMALL LETTER SHARP S *)

  (* Ponctuation & guillemets *)
  0x2010, "-"; (* HYPHEN *)
  0x2013, "-"; (* EN DASH *)
  0x2014, "-"; (* EM DASH *)
  0x2018, "'"; (* LEFT SINGLE QUOTATION MARK *)
  0x2019, "'"; (* RIGHT SINGLE QUOTATION MARK *)
  0x201c, "\""; (* LEFT DOUBLE QUOTATION MARK *)
  0x201d, "\""; (* RIGHT DOUBLE QUOTATION MARK *)
  0x2026, "..."; (* HORIZONTAL ELLIPSIS *)
  0x2212, "-"; (* MINUS SIGN *)
]
  |> List.append (List.map (fun i -> (i, " ")) non_ascii_white_space)


