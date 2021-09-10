.class final Landroidx/recyclerview/widget/v;
.super Landroidx/recyclerview/widget/w;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/w;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/u;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->F(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->H(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->I(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->K(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->M()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->M()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->T()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->T()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->N()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->f0()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->W()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->M()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->W()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$o;->T()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p0, Landroidx/recyclerview/widget/w;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->d0(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/w;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public o(Landroid/view/View;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    iget-object v1, p0, Landroidx/recyclerview/widget/w;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->d0(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/w;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->o0(I)V

    return-void
.end method
