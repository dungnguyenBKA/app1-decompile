.class public Lb1;
.super Lr0;
.source "SourceFile"


# instance fields
.field protected i0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-super {p0}, Lr0;->E()V

    return-void
.end method

.method public G(Li0;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lr0;->G(Li0;)V

    .line 2
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0;

    .line 4
    invoke-virtual {v2, p1}, Lr0;->G(Li0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Y(II)V
    .locals 4

    .line 1
    iput p1, p0, Lr0;->O:I

    .line 2
    iput p2, p0, Lr0;->P:I

    .line 3
    iget-object p1, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 4
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0;

    .line 5
    iget v1, p0, Lr0;->I:I

    iget v2, p0, Lr0;->O:I

    add-int/2addr v1, v2

    .line 6
    iget v2, p0, Lr0;->J:I

    iget v3, p0, Lr0;->P:I

    add-int/2addr v2, v3

    .line 7
    invoke-virtual {v0, v1, v2}, Lr0;->Y(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 5

    .line 1
    invoke-super {p0}, Lr0;->m0()V

    .line 2
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0;

    .line 5
    invoke-virtual {p0}, Lr0;->m()I

    move-result v3

    invoke-virtual {p0}, Lr0;->n()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lr0;->Y(II)V

    .line 6
    instance-of v3, v2, Ls0;

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lr0;->m0()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public o0(Lr0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p1, Lr0;->D:Lr0;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lb1;

    .line 4
    iget-object v0, v0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lr0;->D:Lr0;

    .line 6
    :cond_0
    iput-object p0, p1, Lr0;->D:Lr0;

    return-void
.end method

.method public p0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb1;->m0()V

    .line 2
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0;

    .line 5
    instance-of v3, v2, Lb1;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Lb1;

    invoke-virtual {v2}, Lb1;->p0()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public q0(Lr0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lr0;->D:Lr0;

    return-void
.end method

.method public r0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1;->i0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
