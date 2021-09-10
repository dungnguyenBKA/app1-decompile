.class Landroidx/cardview/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/e;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;
    .locals 0

    .line 1
    check-cast p1, Landroidx/cardview/widget/CardView$a;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/f;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/cardview/widget/f;

    invoke-direct {p2, p3, p4}, Landroidx/cardview/widget/f;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 2
    check-cast p1, Landroidx/cardview/widget/CardView$a;

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView$a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p2, p1, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    const/4 p3, 0x1

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 5
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    .line 6
    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p2

    .line 7
    iget-object p3, p1, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p3}, Landroidx/cardview/widget/CardView;->w()Z

    move-result p3

    .line 8
    invoke-virtual {p1}, Landroidx/cardview/widget/CardView$a;->b()Z

    move-result p4

    .line 9
    invoke-virtual {p2, p6, p3, p4}, Landroidx/cardview/widget/f;->e(FZZ)V

    .line 10
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->f(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public b(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 1
    check-cast p1, Landroidx/cardview/widget/CardView$a;

    .line 2
    iget-object p1, p1, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public c(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->d()F

    move-result p1

    return p1
.end method

.method public d(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->c()F

    move-result p1

    return p1
.end method

.method public e(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->b()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/cardview/widget/d;)V
    .locals 5

    .line 1
    move-object v0, p1

    check-cast v0, Landroidx/cardview/widget/CardView$a;

    .line 2
    iget-object v1, v0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->w()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1, p1, p1, p1}, Landroidx/cardview/widget/CardView$a;->d(IIII)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/cardview/widget/f;->c()F

    move-result v1

    .line 5
    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->d()F

    move-result p1

    .line 6
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView$a;->b()Z

    move-result v2

    invoke-static {v1, p1, v2}, Landroidx/cardview/widget/g;->a(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 8
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView$a;->b()Z

    move-result v3

    invoke-static {v1, p1, v3}, Landroidx/cardview/widget/g;->b(FFZ)F

    move-result p1

    float-to-double v3, p1

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 10
    invoke-virtual {v0, v2, p1, v2, p1}, Landroidx/cardview/widget/CardView$a;->d(IIII)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h(Landroidx/cardview/widget/d;)F
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->d()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public i(Landroidx/cardview/widget/d;)F
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->d()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method
