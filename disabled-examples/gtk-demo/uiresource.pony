use "glib"
use "encode/base64"
primitive UI
  fun ui(): GBytes ? =>
    let str: String val =
"""
R1ZhcmlhbnQAAAAAAAAAABgAAABUAQAAAAAAKAsAAAAAAAAAAAAAAAAAAAABAAAABAAAAAQAAAAG
AAAABwAAAAgAAAAJAAAACgAAADiYEyoIAAAAVAEAAAoATABgAQAAaAEAANS1AgD/////aAEAAAEA
TABsAQAAcAEAAAc0l5EEAAAAcAEAAAcATAB4AQAAfAEAACme+CsAAAAAfAEAAAcAdgCIAQAAbBYA
AJ8CgZEKAAAAbBYAAAQATABwFgAAdBYAAIGwWncAAAAAdBYAABAAdgCIFgAAChkAAO6E2uYHAAAA
ChkAAAkAdgAYGQAAuSAAANVFCjEJAAAAuSAAAAgATADEIAAAyCAAAN2+xg8KAAAAyCAAAAcATADQ
IAAA1CAAAOIJ8G8CAAAA1CAAAAoATADgIAAA5CAAADWyeHwBAAAA5CAAAAMATADoIAAA8CAAAGd0
azQtZGVtby8AAAUAAAADAAAALwAAAAoAAABpbmZlY3QvAAkAAABtYWluLnVpAAAAAADUFAAAAAAA
ADw/eG1sIHZlcnNpb249IjEuMCIgZW5jb2Rpbmc9IlVURi04Ij8+CjxpbnRlcmZhY2U+PG1lbnUg
aWQ9ImdlYXJfbWVudSI+PHNlY3Rpb24+PGl0ZW0+PGF0dHJpYnV0ZSBuYW1lPSJsYWJlbCIgdHJh
bnNsYXRhYmxlPSJ5ZXMiPl9JbnNwZWN0b3I8L2F0dHJpYnV0ZT48YXR0cmlidXRlIG5hbWU9ImFj
dGlvbiI+YXBwLmluc3BlY3RvcjwvYXR0cmlidXRlPjwvaXRlbT48aXRlbT48YXR0cmlidXRlIG5h
bWU9ImxhYmVsIiB0cmFuc2xhdGFibGU9InllcyI+X0tleWJvYXJkIFNob3J0Y3V0czwvYXR0cmli
dXRlPjxhdHRyaWJ1dGUgbmFtZT0iYWN0aW9uIj53aW4uc2hvdy1oZWxwLW92ZXJsYXk8L2F0dHJp
YnV0ZT48L2l0ZW0+PGl0ZW0+PGF0dHJpYnV0ZSBuYW1lPSJsYWJlbCIgdHJhbnNsYXRhYmxlPSJ5
ZXMiPl9BYm91dCBHVEsgRGVtbzwvYXR0cmlidXRlPjxhdHRyaWJ1dGUgbmFtZT0iYWN0aW9uIj5h
cHAuYWJvdXQ8L2F0dHJpYnV0ZT48L2l0ZW0+PC9zZWN0aW9uPjwvbWVudT48b2JqZWN0IGNsYXNz
PSJHdGtBcHBsaWNhdGlvbldpbmRvdyIgaWQ9IndpbmRvdyI+PHByb3BlcnR5IG5hbWU9ImRlZmF1
bHQtd2lkdGgiPjgwMDwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9ImRlZmF1bHQtaGVpZ2h0Ij42
MDA8L3Byb3BlcnR5PjxjaGlsZCB0eXBlPSJ0aXRsZWJhciI+PG9iamVjdCBjbGFzcz0iR3RrSGVh
ZGVyQmFyIiBpZD0iaGVhZGVyYmFyIj48Y2hpbGQ+PG9iamVjdCBjbGFzcz0iR3RrQnV0dG9uIj48
cHJvcGVydHkgbmFtZT0idmFsaWduIj5jZW50ZXI8L3Byb3BlcnR5Pjxwcm9wZXJ0eSBuYW1lPSJh
Y3Rpb24tbmFtZSI+d2luLnJ1bjwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9ImZvY3VzLW9uLWNs
aWNrIj4wPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0ibGFiZWwiIHRyYW5zbGF0YWJsZT0ieWVz
Ij5SdW48L3Byb3BlcnR5Pjwvb2JqZWN0PjwvY2hpbGQ+PGNoaWxkPjxvYmplY3QgY2xhc3M9Ikd0
a1RvZ2dsZUJ1dHRvbiI+PHByb3BlcnR5IG5hbWU9Imljb24tbmFtZSI+ZWRpdC1maW5kLXN5bWJv
bGljPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0idmFsaWduIj5jZW50ZXI8L3Byb3BlcnR5Pjxw
cm9wZXJ0eSBuYW1lPSJmb2N1cy1vbi1jbGljayI+MDwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9
ImFjdGl2ZSIgYmluZC1zb3VyY2U9InNlYXJjaGJhciIgYmluZC1wcm9wZXJ0eT0ic2VhcmNoLW1v
ZGUtZW5hYmxlZCIgYmluZC1mbGFncz0iYmlkaXJlY3Rpb25hbHxzeW5jLWNyZWF0ZSIvPjxhY2Nl
c3NpYmlsaXR5Pjxwcm9wZXJ0eSBuYW1lPSJsYWJlbCIgdHJhbnNsYXRhYmxlPSJ5ZXMiPlNlYXJj
aDwvcHJvcGVydHk+PC9hY2Nlc3NpYmlsaXR5Pjwvb2JqZWN0PjwvY2hpbGQ+PGNoaWxkIHR5cGU9
ImVuZCI+PG9iamVjdCBjbGFzcz0iR3RrTWVudUJ1dHRvbiIgaWQ9ImdlYXJfbWVudV9idXR0b24i
Pjxwcm9wZXJ0eSBuYW1lPSJ2YWxpZ24iPmNlbnRlcjwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9
ImZvY3VzLW9uLWNsaWNrIj4wPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0ibWVudS1tb2RlbCI+
Z2Vhcl9tZW51PC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0iaWNvbi1uYW1lIj5vcGVuLW1lbnUt
c3ltYm9saWM8L3Byb3BlcnR5PjxhY2Nlc3NpYmlsaXR5Pjxwcm9wZXJ0eSBuYW1lPSJsYWJlbCIg
dHJhbnNsYXRhYmxlPSJ5ZXMiPlByaW1hcnkgbWVudTwvcHJvcGVydHk+PC9hY2Nlc3NpYmlsaXR5
Pjwvb2JqZWN0PjwvY2hpbGQ+PC9vYmplY3Q+PC9jaGlsZD48Y2hpbGQ+PG9iamVjdCBjbGFzcz0i
R3RrQm94Ij48Y2hpbGQ+PG9iamVjdCBjbGFzcz0iR3RrQm94Ij48cHJvcGVydHkgbmFtZT0ib3Jp
ZW50YXRpb24iPnZlcnRpY2FsPC9wcm9wZXJ0eT48Y2hpbGQ+PG9iamVjdCBjbGFzcz0iR3RrU2Vh
cmNoQmFyIiBpZD0ic2VhcmNoYmFyIj48YWNjZXNzaWJpbGl0eT48cmVsYXRpb24gbmFtZT0ibGFi
ZWxsZWQtYnkiPnNlYXJjaC1lbnRyeTwvcmVsYXRpb24+PC9hY2Nlc3NpYmlsaXR5Pjxwcm9wZXJ0
eSBuYW1lPSJrZXktY2FwdHVyZS13aWRnZXQiPndpbmRvdzwvcHJvcGVydHk+PGNoaWxkPjxvYmpl
Y3QgY2xhc3M9Ikd0a1NlYXJjaEVudHJ5IiBpZD0ic2VhcmNoLWVudHJ5Ij48YWNjZXNzaWJpbGl0
eT48cHJvcGVydHkgbmFtZT0ibGFiZWwiIHRyYW5zbGF0YWJsZT0ieWVzIj5TZWFyY2g8L3Byb3Bl
cnR5PjxyZWxhdGlvbiBuYW1lPSJjb250cm9scyI+bGlzdHZpZXc8L3JlbGF0aW9uPjwvYWNjZXNz
aWJpbGl0eT48L29iamVjdD48L2NoaWxkPjwvb2JqZWN0PjwvY2hpbGQ+PGNoaWxkPjxvYmplY3Qg
Y2xhc3M9Ikd0a1Njcm9sbGVkV2luZG93Ij48c3R5bGU+PGNsYXNzIG5hbWU9InNpZGViYXIiLz48
L3N0eWxlPjxwcm9wZXJ0eSBuYW1lPSJoc2Nyb2xsYmFyLXBvbGljeSI+bmV2ZXI8L3Byb3BlcnR5
Pjxwcm9wZXJ0eSBuYW1lPSJwcm9wYWdhdGUtbmF0dXJhbC13aWR0aCI+MTwvcHJvcGVydHk+PHBy
b3BlcnR5IG5hbWU9InZleHBhbmQiPjE8L3Byb3BlcnR5PjxjaGlsZD48b2JqZWN0IGNsYXNzPSJH
dGtMaXN0VmlldyIgaWQ9Imxpc3R2aWV3Ij48c3R5bGU+PGNsYXNzIG5hbWU9Im5hdmlnYXRpb24t
c2lkZWJhciIvPjwvc3R5bGU+PHByb3BlcnR5IG5hbWU9InRhYi1iZWhhdmlvciI+aXRlbTwvcHJv
cGVydHk+PHByb3BlcnR5IG5hbWU9ImZhY3RvcnkiPjxvYmplY3QgY2xhc3M9Ikd0a0J1aWxkZXJM
aXN0SXRlbUZhY3RvcnkiPjxwcm9wZXJ0eSBuYW1lPSJyZXNvdXJjZSI+L21lL2luZmVjdC9ndGs0
LWRlbW8vbWFpbi1saXN0aXRlbS51aTwvcHJvcGVydHk+PC9vYmplY3Q+PC9wcm9wZXJ0eT48YWNj
ZXNzaWJpbGl0eT48cHJvcGVydHkgbmFtZT0ibGFiZWwiIHRyYW5zbGF0YWJsZT0ieWVzIj5EZW1v
IGxpc3Q8L3Byb3BlcnR5PjxyZWxhdGlvbiBuYW1lPSJjb250cm9scyI+bm90ZWJvb2s8L3JlbGF0
aW9uPjwvYWNjZXNzaWJpbGl0eT48L29iamVjdD48L2NoaWxkPjwvb2JqZWN0PjwvY2hpbGQ+PC9v
YmplY3Q+PC9jaGlsZD48Y2hpbGQ+PG9iamVjdCBjbGFzcz0iR3RrTm90ZWJvb2siIGlkPSJub3Rl
Ym9vayI+PHByb3BlcnR5IG5hbWU9InNjcm9sbGFibGUiPjE8L3Byb3BlcnR5Pjxwcm9wZXJ0eSBu
YW1lPSJlbmFibGUtcG9wdXAiPjE8L3Byb3BlcnR5Pjxwcm9wZXJ0eSBuYW1lPSJzaG93LWJvcmRl
ciI+MDwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9ImhleHBhbmQiPjE8L3Byb3BlcnR5Pjxwcm9w
ZXJ0eSBuYW1lPSJ2ZXhwYW5kIj4xPC9wcm9wZXJ0eT48Y2hpbGQ+PG9iamVjdCBjbGFzcz0iR3Rr
Tm90ZWJvb2tQYWdlIj48cHJvcGVydHkgbmFtZT0idGFiLWV4cGFuZCI+MTwvcHJvcGVydHk+PHBy
b3BlcnR5IG5hbWU9ImNoaWxkIj48b2JqZWN0IGNsYXNzPSJHdGtTY3JvbGxlZFdpbmRvdyI+PGNo
aWxkPjxvYmplY3QgY2xhc3M9Ikd0a1RleHRWaWV3IiBpZD0iaW5mby10ZXh0dmlldyI+PHByb3Bl
cnR5IG5hbWU9ImxlZnQtbWFyZ2luIj4yMDwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9InJpZ2h0
LW1hcmdpbiI+MjA8L3Byb3BlcnR5Pjxwcm9wZXJ0eSBuYW1lPSJ0b3AtbWFyZ2luIj4yMDwvcHJv
cGVydHk+PHByb3BlcnR5IG5hbWU9ImJvdHRvbS1tYXJnaW4iPjIwPC9wcm9wZXJ0eT48cHJvcGVy
dHkgbmFtZT0icGl4ZWxzLWFib3ZlLWxpbmVzIj42PC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0i
cGl4ZWxzLWJlbG93LWxpbmVzIj42PC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0ibW9ub3NwYWNl
Ij4wPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0iZWRpdGFibGUiPjA8L3Byb3BlcnR5Pjxwcm9w
ZXJ0eSBuYW1lPSJ3cmFwLW1vZGUiPndvcmQ8L3Byb3BlcnR5Pjxwcm9wZXJ0eSBuYW1lPSJjdXJz
b3ItdmlzaWJsZSI+MDwvcHJvcGVydHk+PGFjY2Vzc2liaWxpdHk+PHByb3BlcnR5IG5hbWU9Imxh
YmVsIiB0cmFuc2xhdGFibGU9InllcyI+SW5mbzwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9ImRl
c2NyaXB0aW9uIiB0cmFuc2xhdGFibGU9InllcyI+QSBkZXNjcmlwdGlvbiBvZiB0aGUgZGVtbzwv
cHJvcGVydHk+PC9hY2Nlc3NpYmlsaXR5Pjwvb2JqZWN0PjwvY2hpbGQ+PC9vYmplY3Q+PC9wcm9w
ZXJ0eT48cHJvcGVydHkgbmFtZT0idGFiIj48b2JqZWN0IGNsYXNzPSJHdGtMYWJlbCI+PHByb3Bl
cnR5IG5hbWU9ImxhYmVsIiB0cmFuc2xhdGFibGU9InllcyI+X0luZm88L3Byb3BlcnR5Pjxwcm9w
ZXJ0eSBuYW1lPSJ1c2UtdW5kZXJsaW5lIj4xPC9wcm9wZXJ0eT48L29iamVjdD48L3Byb3BlcnR5
Pjwvb2JqZWN0PjwvY2hpbGQ+PGNoaWxkPjxvYmplY3QgY2xhc3M9Ikd0a05vdGVib29rUGFnZSI+
PHByb3BlcnR5IG5hbWU9InBvc2l0aW9uIj4xPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0idGFi
LWV4cGFuZCI+MTwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9ImNoaWxkIj48b2JqZWN0IGNsYXNz
PSJHdGtTY3JvbGxlZFdpbmRvdyIgaWQ9InNvdXJjZS1zY3JvbGxlZHdpbmRvdyI+PGNoaWxkPjxv
YmplY3QgY2xhc3M9Ikd0a1RleHRWaWV3IiBpZD0ic291cmNlLXRleHR2aWV3Ij48cHJvcGVydHkg
bmFtZT0ibGVmdC1tYXJnaW4iPjIwPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0icmlnaHQtbWFy
Z2luIj4yMDwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9InRvcC1tYXJnaW4iPjIwPC9wcm9wZXJ0
eT48cHJvcGVydHkgbmFtZT0iYm90dG9tLW1hcmdpbiI+MjA8L3Byb3BlcnR5Pjxwcm9wZXJ0eSBu
YW1lPSJlZGl0YWJsZSI+MDwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9ImN1cnNvci12aXNpYmxl
Ij4wPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0ibW9ub3NwYWNlIj4xPC9wcm9wZXJ0eT48cHJv
cGVydHkgbmFtZT0id3JhcC1tb2RlIj53b3JkPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0icGl4
ZWxzLWFib3ZlLWxpbmVzIj4yPC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0icGl4ZWxzLWJlbG93
LWxpbmVzIj4yPC9wcm9wZXJ0eT48YWNjZXNzaWJpbGl0eT48cHJvcGVydHkgbmFtZT0ibGFiZWwi
IHRyYW5zbGF0YWJsZT0ieWVzIj5Tb3VyY2U8L3Byb3BlcnR5Pjxwcm9wZXJ0eSBuYW1lPSJkZXNj
cmlwdGlvbiIgdHJhbnNsYXRhYmxlPSJ5ZXMiPlRoZSBzb3VyY2UgY29kZSBvZiB0aGUgZGVtbzwv
cHJvcGVydHk+PC9hY2Nlc3NpYmlsaXR5Pjwvb2JqZWN0PjwvY2hpbGQ+PC9vYmplY3Q+PC9wcm9w
ZXJ0eT48cHJvcGVydHkgbmFtZT0idGFiIj48b2JqZWN0IGNsYXNzPSJHdGtMYWJlbCI+PHByb3Bl
cnR5IG5hbWU9ImxhYmVsIiB0cmFuc2xhdGFibGU9InllcyI+U291cmNlPC9wcm9wZXJ0eT48L29i
amVjdD48L3Byb3BlcnR5Pjwvb2JqZWN0PjwvY2hpbGQ+PC9vYmplY3Q+PC9jaGlsZD48L29iamVj
dD48L2NoaWxkPjwvb2JqZWN0PjwvaW50ZXJmYWNlPgoAACh1dWF5KXJlZC8CAAAAbWFpbi1saXN0
aXRlbS51aQAAAAByAgAAAAAAADw/eG1sIHZlcnNpb249IjEuMCIgZW5jb2Rpbmc9IlVURi04Ij8+
CjxpbnRlcmZhY2U+PHRlbXBsYXRlIGNsYXNzPSJHdGtMaXN0SXRlbSI+PHByb3BlcnR5IG5hbWU9
ImZvY3VzYWJsZSI+MDwvcHJvcGVydHk+PHByb3BlcnR5IG5hbWU9ImNoaWxkIj48b2JqZWN0IGNs
YXNzPSJHdGtUcmVlRXhwYW5kZXIiIGlkPSJleHBhbmRlciI+PGJpbmRpbmcgbmFtZT0ibGlzdC1y
b3ciPjxsb29rdXAgbmFtZT0iaXRlbSI+R3RrTGlzdEl0ZW08L2xvb2t1cD48L2JpbmRpbmc+PHBy
b3BlcnR5IG5hbWU9ImNoaWxkIj48b2JqZWN0IGNsYXNzPSJHdGtJbnNjcmlwdGlvbiI+PHByb3Bl
cnR5IG5hbWU9ImhleHBhbmQiPjE8L3Byb3BlcnR5Pjxwcm9wZXJ0eSBuYW1lPSJuYXQtY2hhcnMi
PjI1PC9wcm9wZXJ0eT48cHJvcGVydHkgbmFtZT0idGV4dC1vdmVyZmxvdyI+ZWxsaXBzaXplLWVu
ZDwvcHJvcGVydHk+PGJpbmRpbmcgbmFtZT0idGV4dCI+PGxvb2t1cCBuYW1lPSJ0aXRsZSIgdHlw
ZT0iR3RrRGVtbyI+PGxvb2t1cCBuYW1lPSJpdGVtIj5leHBhbmRlcjwvbG9va3VwPjwvbG9va3Vw
PjwvYmluZGluZz48L29iamVjdD48L3Byb3BlcnR5Pjwvb2JqZWN0PjwvcHJvcGVydHk+PC90ZW1w
bGF0ZT48L2ludGVyZmFjZT4KAAAodXVheSltYWluLnBvbnkAAAAAAJEHAAAAAAAAdXNlICJhY3Rv
cl9waW5uaW5nIgp1c2UgIkdMaWIiCnVzZSAiR09iamVjdC9PYmplY3QiCnVzZSAiR0xpYi9SZXNv
dXJjZSIKdXNlICJHdGsiCnVzZSAiR3RrL0FwcGxpY2F0aW9uIgp1c2UgIkd0ay9CdWlsZGVyIgp1
c2UgIkd0ay9XaW5kb3ciCgp1c2UgQHByaW50ZltJMzJdKGZtdDogUG9pbnRlcltVOF0gdGFnLCAu
Li4pCgphY3RvciBNYWluCiAgbGV0IGVudjogRW52CgogIG5ldyBjcmVhdGUoZW52JzogRW52KSA9
PgogICAgZW52ID0gZW52JwogICAgbGV0IGd0a2FwcGxpY2F0aW9uOiBHdGtBcHBsaWNhdGlvbiA9
CiAgICAgIEd0a0FwcGxpY2F0aW9uKFBpblVucGluQWN0b3JBdXRoKGVudi5yb290KSwgcmVjb3Zl
ciBpc28gR3RrQXBwU3RhdGUoIm1lLmluZmVjdC5yZWQuZ3RrLWRlbW8iKSBlbmQpCiAgICBndGth
cHBsaWNhdGlvbi5ydW4oKQoKCmNsYXNzIEd0a0FwcFN0YXRlIGlzIEd0a1BvbnkKICB2YXIgbmFt
ZTogU3RyaW5nIHZhbAogIHZhciBidWlsZGVyOiAoR3RrQnVpbGRlciB8IE5vbmUpID0gTm9uZQog
IHZhciB3aW5kb3dfYWN0aXZlOiBCb29sID0gZmFsc2UKICB2YXIgZ3RrYXBwbGljYXRpb246IChH
dGtBcHBsaWNhdGlvbiB0YWd8IE5vbmUpID0gTm9uZQoKICBuZXcgY3JlYXRlKG5hbWUnOiBTdHJp
bmcgdmFsKSA9PgogICAgbmFtZSA9IG5hbWUnCgogIGZ1biByZWYgc2V0X2FwcGxpY2F0aW9uKGd0
a2FwcGxpY2F0aW9uJzogR3RrQXBwbGljYXRpb24gdGFnKSA9PiBndGthcHBsaWNhdGlvbiA9IGd0
a2FwcGxpY2F0aW9uJwoKICBmdW4gcmVmIGFjdGl2YXRlKCkgPT4KICAgIEBwcmludGYoIkluIGFj
dGl2YXRlXG4iLmNzdHJpbmcoKSkKICAgIHRyeQogICAgICBsZXQgZ3Jlc291cmNlOiBHUmVzb3Vy
Y2UgPSBHUmVzb3VyY2UubG9hZCgiZGVtby5ncmVzb3VyY2UiKQogICAgICBncmVzb3VyY2UucmVn
aXN0ZXIoKQoKICAgICAgYnVpbGRlciA9IEd0a0J1aWxkZXIubmV3X2Zyb21fcmVzb3VyY2UoIi9t
ZS9pbmZlY3QvZ3RrNC1kZW1vL21haW4udWkiKT8KICAgICAgbWF0Y2ggYnVpbGRlcgogICAgICB8
IGxldCBiOiBHdGtCdWlsZGVyID0+CiAgICAgICAgYnVpbGRfd2luZG93KGIpPwovLyAgICAgICAg
YXNzaWduX2NhbGxiYWNrcyhiKT8KLy8gICAgICAgIGxvb3AoKQogICAgICBlbHNlCiAgICAgICAg
QHByaW50ZigiTXkgYnVpbGRlciBmYWlsZWRcbiIuY3N0cmluZygpKQogICAgICBlbmQKICAgIGVs
c2UKICAgICAgQHByaW50ZigiT3VyIGJ1aWxkZXIgZmFpbGVkXG4iLmNzdHJpbmcoKSkKICAgIGVu
ZAoKICBmdW4gcmVmIGJ1aWxkX3dpbmRvdyhiOiBHdGtCdWlsZGVyKT8gPT4gaWYgKGZhbHNlKSB0
aGVuIGVycm9yIGVuZAogICAgbGV0IHdpbmRvdzogR3RrV2luZG93ID0gR3RrV2luZG93Lm5ld19m
cm9tX2J1aWxkZXIoYiwgIndpbmRvdyIpPwovLyAgICBtYXRjaCBndGthcHBsaWNhdGlvbgovLyAg
ICB8IGxldCBhcHA6IEd0a0FwcGxpY2F0aW9uIHRhZyA9PiB3aW5kb3cucmVnaXN0ZXJfYXBwbGlj
YXRpb24oYXBwKQovLyAgICBlbmQKLy8gICAgd2luZG93LnNldF9pbnRlcmFjdGl2ZV9kZWJ1Z2dp
bmcodHJ1ZSkKICAgIHdpbmRvdy5zaWduYWxfY29ubmVjdF9kYXRhW0d0a0FwcFN0YXRlXSgiY2xv
c2UtcmVxdWVzdCIsIEB7KGd0azogUG9pbnRlcltHT2JqZWN0XSB0YWcpID0+IE5vbmV9LCB0aGlz
KQogICAgd2luZG93LnNldF92aXNpYmxlKHRydWUpCiAgICB3aW5kb3dfYWN0aXZlID0gdHJ1ZQoK
ICAgIEBwcmludGYoIkluIGFjdGl2YXRlXG4iLmNzdHJpbmcoKSkKCgogIGZ1biBAY2FsbGJhY2so
Zm9vOiBOb25lKSA9PgogICAgQHByaW50ZigiJWRcbiIuY3N0cmluZygpLGZvbykKCiAgZnVuIGNs
b3NlX3dpbmRvdygpID0+IEBwcmludGYoImNsb3NlX3dpbmRvdygpIHJlcXVlc3RlZFxuIi5jc3Ry
aW5nKCkpCgoKCiAgZnVuIGdldF9uYW1lKCk6IFN0cmluZyB2YWwgPT4gbmFtZQoAACh1dWF5KXNv
dXJjZXMvAAAABgAAAGluZmVjdC8AAAAAAGd0azQtZGVtby8AAAcAAABtZS8ACAAAAAQAAAA=
"""
  let blob: Array[U8] val = Base64.decode(str)?

  GBytes(blob)
