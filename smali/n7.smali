.class public Ln7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7$b;
.implements Lj7;
.implements Ll7;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/RectF;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/airbnb/lottie/g;

.field private final f:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private i:La7;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g;Lz9;Lq9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ln7;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ln7;->b:Landroid/graphics/RectF;

    .line 4
    new-instance v0, La7;

    invoke-direct {v0}, La7;-><init>()V

    iput-object v0, p0, Ln7;->i:La7;

    .line 5
    invoke-virtual {p3}, Lq9;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln7;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Lq9;->f()Z

    move-result v0

    iput-boolean v0, p0, Ln7;->d:Z

    .line 7
    iput-object p1, p0, Ln7;->e:Lcom/airbnb/lottie/g;

    .line 8
    invoke-virtual {p3}, Lq9;->d()Lf9;

    move-result-object p1

    invoke-interface {p1}, Lf9;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Ln7;->f:Ls7;

    .line 9
    invoke-virtual {p3}, Lq9;->e()Ly8;

    move-result-object v0

    invoke-virtual {v0}, Ly8;->a()Ls7;

    move-result-object v0

    iput-object v0, p0, Ln7;->g:Ls7;

    .line 10
    invoke-virtual {p3}, Lq9;->b()Lu8;

    move-result-object p3

    invoke-virtual {p3}, Lu8;->a()Ls7;

    move-result-object p3

    iput-object p3, p0, Ln7;->h:Ls7;

    .line 11
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 12
    invoke-virtual {p2, v0}, Lz9;->i(Ls7;)V

    .line 13
    invoke-virtual {p2, p3}, Lz9;->i(Ls7;)V

    .line 14
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 15
    invoke-virtual {v0, p0}, Ls7;->a(Ls7$b;)V

    .line 16
    invoke-virtual {p3, p0}, Ls7;->a(Ls7$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln7;->j:Z

    .line 2
    iget-object v0, p0, Ln7;->e:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb7;",
            ">;",
            "Ljava/util/List<",
            "Lb7;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7;

    .line 3
    instance-of v1, v0, Lr7;

    if-eqz v1, :cond_0

    check-cast v0, Lr7;

    .line 4
    invoke-virtual {v0}, Lr7;->i()Lx9$a;

    move-result-object v1

    sget-object v2, Lx9$a;->b:Lx9$a;

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Ln7;->i:La7;

    invoke-virtual {v1, v0}, La7;->a(Lr7;)V

    .line 6
    invoke-virtual {v0, p0}, Lr7;->c(Ls7$b;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lo8;ILjava/util/List;Lo8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo8;",
            "I",
            "Ljava/util/List<",
            "Lo8;",
            ">;",
            "Lo8;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lcc;->g(Lo8;ILjava/util/List;Lo8;Lj7;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Lgc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lgc<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/l;->h:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Ln7;->g:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/l;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Ln7;->f:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/l;->i:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Ln7;->h:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln7;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 15

    .line 1
    iget-boolean v0, p0, Ln7;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln7;->a:Landroid/graphics/Path;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln7;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-boolean v0, p0, Ln7;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Ln7;->j:Z

    .line 6
    iget-object v0, p0, Ln7;->a:Landroid/graphics/Path;

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Ln7;->g:Ls7;

    invoke-virtual {v0}, Ls7;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 8
    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 9
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    .line 10
    iget-object v4, p0, Ln7;->h:Ls7;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 11
    :cond_2
    check-cast v4, Lu7;

    invoke-virtual {v4}, Lu7;->m()F

    move-result v4

    .line 12
    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_3

    move v4, v6

    .line 13
    :cond_3
    iget-object v6, p0, Ln7;->f:Ls7;

    invoke-virtual {v6}, Ls7;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 14
    iget-object v7, p0, Ln7;->a:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v0

    add-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    iget-object v7, p0, Ln7;->a:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v0

    sub-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    cmpl-float v9, v4, v5

    if-lez v9, :cond_4

    .line 16
    iget-object v9, p0, Ln7;->b:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float v11, v10, v2

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->y:F

    add-float v14, v13, v0

    sub-float/2addr v14, v12

    add-float/2addr v10, v2

    add-float/2addr v13, v0

    invoke-virtual {v9, v11, v14, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 17
    iget-object v9, p0, Ln7;->a:Landroid/graphics/Path;

    iget-object v10, p0, Ln7;->b:Landroid/graphics/RectF;

    invoke-virtual {v9, v10, v5, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 18
    :cond_4
    iget-object v9, p0, Ln7;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    add-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v9, v4, v5

    if-lez v9, :cond_5

    .line 19
    iget-object v9, p0, Ln7;->b:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float v11, v10, v2

    iget v12, v6, Landroid/graphics/PointF;->y:F

    add-float v13, v12, v0

    mul-float v14, v4, v3

    sub-float/2addr v13, v14

    sub-float/2addr v10, v2

    add-float/2addr v10, v14

    add-float/2addr v12, v0

    invoke-virtual {v9, v11, v13, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v9, p0, Ln7;->a:Landroid/graphics/Path;

    iget-object v10, p0, Ln7;->b:Landroid/graphics/RectF;

    invoke-virtual {v9, v10, v8, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 21
    :cond_5
    iget-object v9, p0, Ln7;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v9, v4, v5

    if-lez v9, :cond_6

    .line 22
    iget-object v9, p0, Ln7;->b:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float v11, v10, v2

    iget v12, v6, Landroid/graphics/PointF;->y:F

    sub-float v13, v12, v0

    sub-float/2addr v10, v2

    mul-float v14, v4, v3

    add-float/2addr v10, v14

    sub-float/2addr v12, v0

    add-float/2addr v12, v14

    invoke-virtual {v9, v11, v13, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    iget-object v9, p0, Ln7;->a:Landroid/graphics/Path;

    iget-object v10, p0, Ln7;->b:Landroid/graphics/RectF;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v9, v10, v11, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 24
    :cond_6
    iget-object v9, p0, Ln7;->a:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    sub-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    .line 25
    iget-object v5, p0, Ln7;->b:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    add-float v10, v9, v2

    mul-float v4, v4, v3

    sub-float/2addr v10, v4

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v3, v0

    add-float/2addr v9, v2

    sub-float/2addr v3, v0

    add-float/2addr v3, v4

    invoke-virtual {v5, v10, v6, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    iget-object v0, p0, Ln7;->a:Landroid/graphics/Path;

    iget-object v2, p0, Ln7;->b:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v3, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 27
    :cond_7
    iget-object v0, p0, Ln7;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 28
    iget-object v0, p0, Ln7;->i:La7;

    iget-object v2, p0, Ln7;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, La7;->b(Landroid/graphics/Path;)V

    .line 29
    iput-boolean v1, p0, Ln7;->j:Z

    .line 30
    iget-object v0, p0, Ln7;->a:Landroid/graphics/Path;

    return-object v0
.end method
