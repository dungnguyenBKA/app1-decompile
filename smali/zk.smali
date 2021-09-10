.class public final Lzk;
.super Lx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lx<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lx;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lzk;->j:I

    .line 2
    invoke-super {p0}, Le0;->clear()V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lzk;->j:I

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Le0;->hashCode()I

    move-result v0

    iput v0, p0, Lzk;->j:I

    .line 3
    :cond_0
    iget v0, p0, Lzk;->j:I

    return v0
.end method

.method public i(Le0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lzk;->j:I

    .line 2
    invoke-super {p0, p1}, Le0;->i(Le0;)V

    return-void
.end method

.method public j(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lzk;->j:I

    .line 2
    invoke-super {p0, p1}, Le0;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lzk;->j:I

    .line 2
    invoke-super {p0, p1, p2}, Le0;->k(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lzk;->j:I

    .line 2
    invoke-super {p0, p1, p2}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
