.class public Landroidx/recyclerview/widget/q;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "SourceFile"


# instance fields
.field protected final i:Landroid/view/animation/LinearInterpolator;

.field protected final j:Landroid/view/animation/DecelerateInterpolator;

.field protected k:Landroid/graphics/PointF;

.field private final l:Landroid/util/DisplayMetrics;

.field private m:Z

.field private n:F

.field protected o:I

.field protected p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->i:Landroid/view/animation/LinearInterpolator;

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/q;->j:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/q;->m:Z

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/q;->o:I

    iput v0, p0, Landroidx/recyclerview/widget/q;->p:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/q;->l:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method protected i(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$x$a;)V
    .locals 10

    .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/q;->k:Landroid/graphics/PointF;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v4, p2, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p2, p2, v2

    if-lez p2, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v9, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->i()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->G(Landroid/view/View;)I

    move-result v5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    .line 6
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->J(Landroid/view/View;)I

    move-result v6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v4

    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->U()I

    move-result v7

    .line 8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->e0()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$o;->V()I

    move-result p2

    sub-int v8, v4, p2

    move-object v4, p0

    .line 9
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/q;->m(IIIII)I

    move-result p2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x0

    .line 10
    :goto_3
    iget-object v4, p0, Landroidx/recyclerview/widget/q;->k:Landroid/graphics/PointF;

    if-eqz v4, :cond_7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v4, v2

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    cmpl-float v2, v4, v2

    if-lez v2, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, -0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v9, 0x0

    .line 11
    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->j()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    .line 13
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->K(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v2, v3

    .line 15
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->F(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, p1, v1

    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->W()I

    move-result v7

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->M()I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->T()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    .line 18
    invoke-virtual/range {v4 .. v9}, Landroidx/recyclerview/widget/q;->m(IIIII)I

    move-result v3

    :cond_9
    :goto_6
    mul-int p1, p2, p2

    mul-int v0, v3, v3

    add-int/2addr v0, p1

    int-to-double v0, v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->o(I)I

    move-result p1

    if-lez p1, :cond_a

    neg-int p2, p2

    neg-int v0, v3

    .line 21
    iget-object v1, p0, Landroidx/recyclerview/widget/q;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$x$a;->d(IIILandroid/view/animation/Interpolator;)V

    :cond_a
    return-void
.end method

.method public m(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    if-eqz p5, :cond_1

    const/4 p1, 0x1

    if-ne p5, p1, :cond_0

    sub-int/2addr p4, p2

    return p4

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr p3, p1

    if-lez p3, :cond_2

    return p3

    :cond_2
    sub-int/2addr p4, p2

    if-gez p4, :cond_3

    return p4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    sub-int/2addr p3, p1

    return p3
.end method

.method protected n(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 1
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected o(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->p(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected p(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/q;->m:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/q;->l:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/q;->n(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/q;->n:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/recyclerview/widget/q;->m:Z

    .line 5
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/q;->n:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method
