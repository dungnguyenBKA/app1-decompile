.class public Landroidx/recyclerview/widget/x;
.super Landroidx/recyclerview/widget/b0;
.source "SourceFile"


# instance fields
.field private d:Landroidx/recyclerview/widget/w;

.field private e:Landroidx/recyclerview/widget/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/b0;-><init>()V

    return-void
.end method

.method private h(Landroid/view/View;Landroidx/recyclerview/widget/w;)I
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v0

    .line 2
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/w;->c(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/w;->k()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/w;->l()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method private i(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/w;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/w;->k()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/w;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 3
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v6

    .line 5
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/w;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    .line 6
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private j(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/x;->e:Landroidx/recyclerview/widget/w;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/u;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/u;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/x;->e:Landroidx/recyclerview/widget/w;

    .line 4
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/x;->e:Landroidx/recyclerview/widget/w;

    return-object p1
.end method

.method private k(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/w;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/x;->d:Landroidx/recyclerview/widget/w;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eq v0, p1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/v;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/v;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/x;->d:Landroidx/recyclerview/widget/w;

    .line 4
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/x;->d:Landroidx/recyclerview/widget/w;

    return-object p1
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/RecyclerView$o;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->j(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/w;

    move-result-object v1

    .line 3
    invoke-direct {p0, p2, v1}, Landroidx/recyclerview/widget/x;->h(Landroid/view/View;Landroidx/recyclerview/widget/w;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->j()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->k(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/w;

    move-result-object p1

    .line 6
    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/x;->h(Landroid/view/View;Landroidx/recyclerview/widget/w;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0
.end method

.method protected d(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/q;
    .locals 1

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/x$a;

    iget-object v0, p0, Landroidx/recyclerview/widget/b0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/x$a;-><init>(Landroidx/recyclerview/widget/x;Landroid/content/Context;)V

    return-object p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$o;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->k(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/w;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/x;->i(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/w;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->j(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/w;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/x;->i(Landroidx/recyclerview/widget/RecyclerView$o;Landroidx/recyclerview/widget/w;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$o;II)I
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->O()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->j()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->k(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/w;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->j(Landroidx/recyclerview/widget/RecyclerView$o;)Landroidx/recyclerview/widget/w;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    return v1

    :cond_3
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v6

    const/4 v7, 0x0

    move-object v4, v3

    const/high16 v5, -0x80000000

    const v8, 0x7fffffff

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_7

    .line 7
    invoke-virtual {p1, v9}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-direct {p0, v10, v2}, Landroidx/recyclerview/widget/x;->h(Landroid/view/View;Landroidx/recyclerview/widget/w;)I

    move-result v11

    if-gtz v11, :cond_5

    if-le v11, v5, :cond_5

    move-object v4, v10

    move v5, v11

    :cond_5
    if-ltz v11, :cond_6

    if-ge v11, v8, :cond_6

    move-object v3, v10

    move v8, v11

    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 9
    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->i()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_9

    if-lez p2, :cond_8

    :goto_3
    const/4 p2, 0x1

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    goto :goto_4

    :cond_9
    if-lez p3, :cond_8

    goto :goto_3

    :goto_4
    if-eqz p2, :cond_a

    if-eqz v3, :cond_a

    .line 10
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_a
    if-nez p2, :cond_b

    if-eqz v4, :cond_b

    .line 11
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_b
    if-eqz p2, :cond_c

    move-object v3, v4

    :cond_c
    if-nez v3, :cond_d

    return v1

    .line 12
    :cond_d
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result p3

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->O()I

    move-result v2

    .line 14
    instance-of v3, p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    if-eqz v3, :cond_f

    .line 15
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$x$b;

    sub-int/2addr v2, v5

    .line 16
    invoke-interface {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$x$b;->a(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 17
    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_e

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_f

    :cond_e
    const/4 v7, 0x1

    :cond_f
    if-ne v7, p2, :cond_10

    const/4 v5, -0x1

    :cond_10
    add-int/2addr p3, v5

    if-ltz p3, :cond_12

    if-lt p3, v0, :cond_11

    goto :goto_5

    :cond_11
    return p3

    :cond_12
    :goto_5
    return v1
.end method
