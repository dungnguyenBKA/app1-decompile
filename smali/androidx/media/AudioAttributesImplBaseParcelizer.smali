.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/a;)Landroidx/media/c;
    .locals 3

    .line 1
    new-instance v0, Landroidx/media/c;

    invoke-direct {v0}, Landroidx/media/c;-><init>()V

    .line 2
    iget v1, v0, Landroidx/media/c;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/a;->n(II)I

    move-result v1

    iput v1, v0, Landroidx/media/c;->a:I

    .line 3
    iget v1, v0, Landroidx/media/c;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/a;->n(II)I

    move-result v1

    iput v1, v0, Landroidx/media/c;->b:I

    .line 4
    iget v1, v0, Landroidx/media/c;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/a;->n(II)I

    move-result v1

    iput v1, v0, Landroidx/media/c;->c:I

    .line 5
    iget v1, v0, Landroidx/media/c;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/a;->n(II)I

    move-result p0

    iput p0, v0, Landroidx/media/c;->d:I

    return-object v0
.end method

.method public static write(Landroidx/media/c;Landroidx/versionedparcelable/a;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Landroidx/media/c;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->C(II)V

    .line 3
    iget v0, p0, Landroidx/media/c;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->C(II)V

    .line 4
    iget v0, p0, Landroidx/media/c;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/a;->C(II)V

    .line 5
    iget p0, p0, Landroidx/media/c;->d:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/versionedparcelable/a;->C(II)V

    return-void
.end method
