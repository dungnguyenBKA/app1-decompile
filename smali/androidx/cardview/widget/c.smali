.class Landroidx/cardview/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/e;


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/c;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;
    .locals 0

    .line 1
    check-cast p1, Landroidx/cardview/widget/CardView$a;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 7

    .line 1
    new-instance v6, Landroidx/cardview/widget/g;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v6

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/g;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    .line 2
    check-cast p1, Landroidx/cardview/widget/CardView$a;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$a;->b()Z

    move-result p2

    invoke-virtual {v6, p2}, Landroidx/cardview/widget/g;->i(Z)V

    .line 3
    invoke-virtual {p1, v6}, Landroidx/cardview/widget/CardView$a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->f(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public b(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->h()F

    move-result p1

    return p1
.end method

.method public c(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->d()F

    move-result p1

    return p1
.end method

.method public d(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->e()F

    move-result p1

    return p1
.end method

.method public e(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->c()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/cardview/widget/d;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroidx/cardview/widget/g;->getPadding(Landroid/graphics/Rect;)Z

    .line 4
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/widget/g;->g()F

    move-result v1

    float-to-double v1, v1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 6
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/cardview/widget/g;->f()F

    move-result v2

    float-to-double v2, v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 8
    move-object v3, p1

    check-cast v3, Landroidx/cardview/widget/CardView$a;

    .line 9
    iget-object v4, v3, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    iget v5, v4, Landroidx/cardview/widget/CardView;->d:I

    if-le v1, v5, :cond_0

    .line 10
    invoke-static {v4, v1}, Landroidx/cardview/widget/CardView;->l(Landroidx/cardview/widget/CardView;I)V

    .line 11
    :cond_0
    iget-object v1, v3, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    iget v3, v1, Landroidx/cardview/widget/CardView;->e:I

    if-le v2, v3, :cond_1

    .line 12
    invoke-static {v1, v2}, Landroidx/cardview/widget/CardView;->m(Landroidx/cardview/widget/CardView;I)V

    .line 13
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    check-cast p1, Landroidx/cardview/widget/CardView$a;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/cardview/widget/CardView$a;->d(IIII)V

    return-void
.end method

.method public h(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->f()F

    move-result p1

    return p1
.end method

.method public i(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/c;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/g;->g()F

    move-result p1

    return p1
.end method
