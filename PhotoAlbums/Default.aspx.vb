
Partial Class PhotoAlbums_Default
    Inherits BasePage

    Dim entities As New PlanetWroxEntities()

    Public Function PhotoAlbumList_GetData() As IEnumerable(Of PhotoAlbum)
        Return From p In entities.PhotoAlbums
               Order By p.Id
               Select p
    End Function

    Protected Sub PhotoAlbumList_SelectedIndexChanged(sender As Object, e As EventArgs) Handles PhotoAlbumList.SelectedIndexChanged
        ListView1.DataBind()
    End Sub

    ' The return type can be changed to IEnumerable, however to support
    ' paging and sorting, the following parameters must be added:
    '     ByVal maximumRows as Integer
    '     ByVal startRowIndex as Integer
    '     ByRef totalRowCount as Integer
    '     ByVal sortByExpression as String
    Public Function ListView1_GetData() As IQueryable(Of Picture)
        Dim photoAlbumId As Integer = Convert.ToInt32(PhotoAlbumList.SelectedValue)
        Return From p In entities.Pictures
               Where p.PhotoAlbumId = photoAlbumId
               Order By p.Id
               Select p
    End Function
End Class
