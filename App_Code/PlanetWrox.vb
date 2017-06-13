﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated from a template.
'
'     Manual changes to this file may cause unexpected behavior in your application.
'     Manual changes to this file will be overwritten if the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Imports System
Imports System.Collections.Generic

Partial Public Class Genre
    Public Property Id As Integer
    Public Property Name As String
    Public Property SortOrder As Integer

    Public Overridable Property Reviews As ICollection(Of Review) = New HashSet(Of Review)

End Class
Partial Public Class PhotoAlbum
    Public Property Id As Integer
    Public Property Name As String
    Public Property UserName As String

    Public Overridable Property Pictures As ICollection(Of Picture) = New HashSet(Of Picture)

End Class
Partial Public Class Picture
    Public Property Id As Integer
    Public Property Description As String
    Public Property Tooltip As String
    Public Property ImageUrl As String
    Public Property PhotoAlbumId As Integer

    Public Overridable Property PhotoAlbum As PhotoAlbum

End Class
Partial Public Class Review
    Public Property Id As Integer
    Public Property Title As String
    Public Property Summary As String
    Public Property Body As String
    Public Property GenreId As Integer
    Public Property Authorized As Boolean
    Public Property CreateDateTime As Date
    Public Property UpdateDateTime As Date

    Public Overridable Property Genre As Genre

End Class
