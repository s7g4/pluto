; Comments
(comment) @comment

; Keywords - Procedure structure (OFFICIAL)
"procedure" @keyword.function
"preconditions" @keyword
"main" @keyword
"confirmation" @keyword
"end" @keyword

; Keywords - Control flow (OFFICIAL)
"if" @keyword.control.conditional
"then" @keyword.control.conditional
"elsif" @keyword.control.conditional
"else" @keyword.control.conditional
"while" @keyword.control.repeat
"for" @keyword.control.repeat
"do" @keyword.control.repeat
"in" @keyword.control.repeat

; Keywords - Activity operations (OFFICIAL)
"initiate" @keyword.function
"confirm" @keyword.function
"and" @keyword.operator
"wait" @keyword.function
"until" @keyword.function

; Type system keywords (CUSTOM)
"namespace" @keyword.other
"type" @keyword.type
"struct" @keyword.type

; Primitive types (CUSTOM)
[
  "u8" "u16" "u32" "u64"
  "i8" "i16" "i32" "i64"
  "f32" "f64"
  "bool"
  "string"
] @type.builtin

; Operators - Arithmetic (OFFICIAL)
[
  "+"
  "-"
  "*"
  "/"
  "mod"
  "**"
] @operator.arithmetic

; Operators - Comparison (OFFICIAL)
[
  "=="
  "!="
  "<>"
  "<"
  ">"
  "<="
  ">="
] @operator.comparison

; Operators - Logical (OFFICIAL)
[
  "and"
  "or"
  "not"
] @operator.logical

; Assignment operator (OFFICIAL)
"=" @operator.assignment

; Punctuation (OFFICIAL)
[
  "("
  ")"
  ";"
  ","
  "."
] @punctuation.delimiter

; Brackets for struct definitions (CUSTOM)
[
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

; Literals (OFFICIAL)
(string) @string
(number) @number
(boolean) @constant.builtin.boolean

; Units and measurements (OFFICIAL)
(unit) @type.builtin

; Identifiers (OFFICIAL)
(identifier) @variable

; Procedure names (OFFICIAL)
(procedure_name (identifier) @function)

; Activity references (OFFICIAL)
(activity_reference (identifier) @function.call)

; Property access (OFFICIAL)
(property_access
  (identifier) @variable
  (identifier) @property) @variable.member

; Function calls (OFFICIAL)
(function_call
  (identifier) @function.call)

; Parameter names in function calls (OFFICIAL)
(parameter
  (identifier) @parameter
  "=" @operator.assignment)

; Value with unit (OFFICIAL)
(value_with_unit
  (number) @number
  (unit) @type.builtin)

; Type declarations (CUSTOM)
(type_declaration
  name: (identifier) @type)

; Struct fields (CUSTOM)
(field_declaration
  name: (identifier) @property
  type: (type_annotation) @type)

; Namespace declarations (CUSTOM)
(namespace_declaration
  path: (namespace_path) @module)

; Namespace paths (CUSTOM)
(namespace_path (identifier) @module)

; Type annotations (CUSTOM)
(type_annotation) @type

; Error nodes for debugging
(ERROR) @error
