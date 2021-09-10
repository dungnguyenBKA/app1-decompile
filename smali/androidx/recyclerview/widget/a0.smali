.class public abstract Landroidx/recyclerview/widget/a0;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "SourceFile"


# instance fields
.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/a0;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$l$c;Landroidx/recyclerview/widget/RecyclerView$l$c;)Z
    .locals 7

    .line 1
    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 2
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$b0;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget p4, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 5
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 6
    :cond_0
    iget p3, p4, Landroidx/recyclerview/widget/RecyclerView$l$c;->a:I

    .line 7
    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$l$c;->b:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/a0;->q(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z

    move-result p1

    return p1
.end method

.method public abstract p(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
.end method

.method public abstract q(Landroidx/recyclerview/widget/RecyclerView$b0;Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z
.end method

.method public abstract r(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)Z
.end method

.method public abstract s(Landroidx/recyclerview/widget/RecyclerView$b0;)Z
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/recyclerview/widget/a0;->g:Z

    return-void
.end method
