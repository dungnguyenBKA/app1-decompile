.class public abstract Lz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7$b;
.implements Lj7;
.implements Ld7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PathMeasure;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/RectF;

.field private final e:Lcom/airbnb/lottie/g;

.field protected final f:Lz9;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz6$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:[F

.field final i:Landroid/graphics/Paint;

.field private final j:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/g;Lz9;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLw8;Lu8;Ljava/util/List;Lu8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/g;",
            "Lz9;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "F",
            "Lw8;",
            "Lu8;",
            "Ljava/util/List<",
            "Lu8;",
            ">;",
            "Lu8;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lz6;->a:Landroid/graphics/PathMeasure;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lz6;->b:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lz6;->c:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lz6;->d:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz6;->g:Ljava/util/List;

    .line 7
    new-instance v0, Ly6;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly6;-><init>(I)V

    iput-object v0, p0, Lz6;->i:Landroid/graphics/Paint;

    .line 8
    iput-object p1, p0, Lz6;->e:Lcom/airbnb/lottie/g;

    .line 9
    iput-object p2, p0, Lz6;->f:Lz9;

    .line 10
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 13
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 14
    invoke-virtual {p6}, Lw8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lz6;->k:Ls7;

    .line 15
    invoke-virtual {p7}, Lu8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lz6;->j:Ls7;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lz6;->m:Ls7;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p9}, Lu8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lz6;->m:Ls7;

    .line 18
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lz6;->l:Ljava/util/List;

    .line 19
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lz6;->h:[F

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 20
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 21
    iget-object p4, p0, Lz6;->l:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lu8;

    invoke-virtual {p5}, Lu8;->a()Ls7;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 22
    :cond_1
    iget-object p3, p0, Lz6;->k:Ls7;

    invoke-virtual {p2, p3}, Lz9;->i(Ls7;)V

    .line 23
    iget-object p3, p0, Lz6;->j:Ls7;

    invoke-virtual {p2, p3}, Lz9;->i(Ls7;)V

    const/4 p3, 0x0

    .line 24
    :goto_2
    iget-object p4, p0, Lz6;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 25
    iget-object p4, p0, Lz6;->l:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ls7;

    invoke-virtual {p2, p4}, Lz9;->i(Ls7;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 26
    :cond_2
    iget-object p3, p0, Lz6;->m:Ls7;

    if-eqz p3, :cond_3

    .line 27
    invoke-virtual {p2, p3}, Lz9;->i(Ls7;)V

    .line 28
    :cond_3
    iget-object p2, p0, Lz6;->k:Ls7;

    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    .line 29
    iget-object p2, p0, Lz6;->j:Ls7;

    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    .line 30
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 31
    iget-object p2, p0, Lz6;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls7;

    invoke-virtual {p2, p0}, Ls7;->a(Ls7$b;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 32
    :cond_4
    iget-object p1, p0, Lz6;->m:Ls7;

    if-eqz p1, :cond_5

    .line 33
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz6;->e:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 1
    sget-object v0, Lx9$a;->c:Lx9$a;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb7;

    .line 4
    instance-of v5, v4, Lr7;

    if-eqz v5, :cond_0

    check-cast v4, Lr7;

    .line 5
    invoke-virtual {v4}, Lr7;->i()Lx9$a;

    move-result-object v5

    if-ne v5, v0, :cond_0

    move-object v3, v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3, p0}, Lr7;->c(Ls7$b;)V

    .line 7
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move-object v1, v2

    :goto_1
    if-ltz p1, :cond_7

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb7;

    .line 9
    instance-of v5, v4, Lr7;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lr7;

    .line 10
    invoke-virtual {v5}, Lr7;->i()Lx9$a;

    move-result-object v6

    if-ne v6, v0, :cond_4

    if-eqz v1, :cond_3

    .line 11
    iget-object v4, p0, Lz6;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    new-instance v1, Lz6$b;

    invoke-direct {v1, v5, v2}, Lz6$b;-><init>(Lr7;Lz6$a;)V

    .line 13
    invoke-virtual {v5, p0}, Lr7;->c(Ls7$b;)V

    goto :goto_2

    .line 14
    :cond_4
    instance-of v5, v4, Ll7;

    if-eqz v5, :cond_6

    if-nez v1, :cond_5

    .line 15
    new-instance v1, Lz6$b;

    invoke-direct {v1, v3, v2}, Lz6$b;-><init>(Lr7;Lz6$a;)V

    .line 16
    :cond_5
    invoke-static {v1}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v5

    check-cast v4, Ll7;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 17
    iget-object p1, p0, Lz6;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
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

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    .line 1
    iget-object p3, p0, Lz6;->b:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lz6;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lz6;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz6$b;

    const/4 v2, 0x0

    .line 4
    :goto_1
    invoke-static {v1}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Lz6;->b:Landroid/graphics/Path;

    invoke-static {v1}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll7;

    invoke-interface {v4}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lz6;->b:Landroid/graphics/Path;

    iget-object v0, p0, Lz6;->d:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 7
    iget-object p2, p0, Lz6;->j:Ls7;

    check-cast p2, Lu7;

    invoke-virtual {p2}, Lu7;->m()F

    move-result p2

    .line 8
    iget-object p3, p0, Lz6;->d:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    iget-object p2, p0, Lz6;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 10
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const-string p1, "StrokeContent#getBounds"

    .line 11
    invoke-static {p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p2 .. p2}, Ldc;->e(Landroid/graphics/Matrix;)Z

    move-result v3

    const-string v4, "StrokeContent#draw"

    if-eqz v3, :cond_0

    .line 2
    invoke-static {v4}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void

    :cond_0
    move/from16 v3, p3

    int-to-float v3, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v3, v5

    .line 3
    iget-object v6, v0, Lz6;->k:Ls7;

    check-cast v6, Lw7;

    invoke-virtual {v6}, Lw7;->m()I

    move-result v6

    int-to-float v6, v6

    mul-float v3, v3, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v3, v6

    mul-float v3, v3, v5

    float-to-int v3, v3

    .line 4
    iget-object v5, v0, Lz6;->i:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/4 v8, 0x0

    invoke-static {v3, v8, v7}, Lcc;->c(III)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget-object v3, v0, Lz6;->i:Landroid/graphics/Paint;

    iget-object v5, v0, Lz6;->j:Ls7;

    check-cast v5, Lu7;

    invoke-virtual {v5}, Lu7;->m()F

    move-result v5

    invoke-static/range {p2 .. p2}, Ldc;->d(Landroid/graphics/Matrix;)F

    move-result v7

    mul-float v7, v7, v5

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v3, v0, Lz6;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    .line 7
    invoke-static {v4}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void

    .line 8
    :cond_1
    iget-object v3, v0, Lz6;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v7, "StrokeContent#applyDashPattern"

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    .line 9
    invoke-static {v7}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    goto :goto_3

    .line 10
    :cond_2
    invoke-static/range {p2 .. p2}, Ldc;->d(Landroid/graphics/Matrix;)F

    move-result v3

    const/4 v10, 0x0

    .line 11
    :goto_0
    iget-object v11, v0, Lz6;->l:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 12
    iget-object v11, v0, Lz6;->h:[F

    iget-object v12, v0, Lz6;->l:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls7;

    invoke-virtual {v12}, Ls7;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v11, v10

    .line 13
    rem-int/lit8 v11, v10, 0x2

    if-nez v11, :cond_3

    .line 14
    iget-object v11, v0, Lz6;->h:[F

    aget v12, v11, v10

    cmpg-float v12, v12, v9

    if-gez v12, :cond_4

    .line 15
    aput v9, v11, v10

    goto :goto_1

    .line 16
    :cond_3
    iget-object v11, v0, Lz6;->h:[F

    aget v12, v11, v10

    const v13, 0x3dcccccd    # 0.1f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_4

    .line 17
    aput v13, v11, v10

    .line 18
    :cond_4
    :goto_1
    iget-object v11, v0, Lz6;->h:[F

    aget v12, v11, v10

    mul-float v12, v12, v3

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 19
    :cond_5
    iget-object v10, v0, Lz6;->m:Ls7;

    if-nez v10, :cond_6

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Ls7;->g()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float v10, v10, v3

    .line 20
    :goto_2
    iget-object v3, v0, Lz6;->i:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/DashPathEffect;

    iget-object v12, v0, Lz6;->h:[F

    invoke-direct {v11, v12, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 21
    invoke-static {v7}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 22
    :goto_3
    iget-object v3, v0, Lz6;->n:Ls7;

    if-eqz v3, :cond_7

    .line 23
    iget-object v7, v0, Lz6;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ls7;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_7
    const/4 v3, 0x0

    .line 24
    :goto_4
    iget-object v7, v0, Lz6;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_15

    .line 25
    iget-object v7, v0, Lz6;->g:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lz6$b;

    .line 26
    invoke-static {v7}, Lz6$b;->b(Lz6$b;)Lr7;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 27
    invoke-static {v7}, Lz6$b;->b(Lz6$b;)Lr7;

    move-result-object v10

    const-string v11, "StrokeContent#applyTrimPath"

    if-nez v10, :cond_8

    .line 28
    invoke-static {v11}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    const/4 v9, 0x0

    goto/16 :goto_e

    .line 29
    :cond_8
    iget-object v10, v0, Lz6;->b:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 30
    invoke-static {v7}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_5
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_9

    .line 31
    iget-object v12, v0, Lz6;->b:Landroid/graphics/Path;

    invoke-static {v7}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ll7;

    invoke-interface {v13}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v13

    invoke-virtual {v12, v13, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_5

    .line 32
    :cond_9
    iget-object v10, v0, Lz6;->a:Landroid/graphics/PathMeasure;

    iget-object v12, v0, Lz6;->b:Landroid/graphics/Path;

    invoke-virtual {v10, v12, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 33
    iget-object v10, v0, Lz6;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    .line 34
    :goto_6
    iget-object v12, v0, Lz6;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 35
    iget-object v12, v0, Lz6;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    add-float/2addr v10, v12

    goto :goto_6

    .line 36
    :cond_a
    invoke-static {v7}, Lz6$b;->b(Lz6$b;)Lr7;

    move-result-object v12

    invoke-virtual {v12}, Lr7;->g()Ls7;

    move-result-object v12

    invoke-virtual {v12}, Ls7;->g()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    mul-float v12, v12, v10

    const/high16 v13, 0x43b40000    # 360.0f

    div-float/2addr v12, v13

    .line 37
    invoke-static {v7}, Lz6$b;->b(Lz6$b;)Lr7;

    move-result-object v13

    invoke-virtual {v13}, Lr7;->h()Ls7;

    move-result-object v13

    invoke-virtual {v13}, Ls7;->g()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    mul-float v13, v13, v10

    div-float/2addr v13, v6

    add-float/2addr v13, v12

    .line 38
    invoke-static {v7}, Lz6$b;->b(Lz6$b;)Lr7;

    move-result-object v14

    invoke-virtual {v14}, Lr7;->e()Ls7;

    move-result-object v14

    invoke-virtual {v14}, Ls7;->g()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    mul-float v14, v14, v10

    div-float/2addr v14, v6

    add-float/2addr v14, v12

    .line 39
    invoke-static {v7}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v15, 0x0

    :goto_7
    if-ltz v12, :cond_12

    .line 40
    iget-object v6, v0, Lz6;->c:Landroid/graphics/Path;

    invoke-static {v7}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll7;

    invoke-interface {v5}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 41
    iget-object v5, v0, Lz6;->c:Landroid/graphics/Path;

    invoke-virtual {v5, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 42
    iget-object v5, v0, Lz6;->a:Landroid/graphics/PathMeasure;

    iget-object v6, v0, Lz6;->c:Landroid/graphics/Path;

    invoke-virtual {v5, v6, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 43
    iget-object v5, v0, Lz6;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    cmpl-float v6, v14, v10

    if-lez v6, :cond_c

    sub-float v6, v14, v10

    add-float v16, v15, v5

    cmpg-float v16, v6, v16

    if-gez v16, :cond_c

    cmpg-float v16, v15, v6

    if-gez v16, :cond_c

    cmpl-float v16, v13, v10

    if-lez v16, :cond_b

    sub-float v16, v13, v10

    div-float v16, v16, v5

    move/from16 v8, v16

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    div-float/2addr v6, v5

    .line 44
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 45
    iget-object v9, v0, Lz6;->c:Landroid/graphics/Path;

    move/from16 v17, v10

    const/4 v10, 0x0

    invoke-static {v9, v8, v6, v10}, Ldc;->a(Landroid/graphics/Path;FFF)V

    .line 46
    iget-object v6, v0, Lz6;->c:Landroid/graphics/Path;

    iget-object v8, v0, Lz6;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_c
    move/from16 v17, v10

    add-float v6, v15, v5

    cmpg-float v8, v6, v13

    if-ltz v8, :cond_11

    cmpl-float v8, v15, v14

    if-lez v8, :cond_d

    goto :goto_b

    :cond_d
    cmpg-float v8, v6, v14

    if-gtz v8, :cond_e

    cmpg-float v8, v13, v15

    if-gez v8, :cond_e

    .line 47
    iget-object v6, v0, Lz6;->c:Landroid/graphics/Path;

    iget-object v8, v0, Lz6;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_e
    cmpg-float v8, v13, v15

    if-gez v8, :cond_f

    const/4 v10, 0x0

    goto :goto_9

    :cond_f
    sub-float v8, v13, v15

    div-float v10, v8, v5

    :goto_9
    cmpl-float v6, v14, v6

    if-lez v6, :cond_10

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_10
    sub-float v6, v14, v15

    div-float/2addr v6, v5

    .line 48
    :goto_a
    iget-object v8, v0, Lz6;->c:Landroid/graphics/Path;

    const/4 v9, 0x0

    invoke-static {v8, v10, v6, v9}, Ldc;->a(Landroid/graphics/Path;FFF)V

    .line 49
    iget-object v6, v0, Lz6;->c:Landroid/graphics/Path;

    iget-object v8, v0, Lz6;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v9, 0x0

    :goto_c
    add-float/2addr v15, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v10, v17

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_7

    :cond_12
    const/4 v9, 0x0

    .line 50
    invoke-static {v11}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    goto :goto_e

    :cond_13
    const/4 v9, 0x0

    .line 51
    iget-object v5, v0, Lz6;->b:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 52
    invoke-static {v7}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_d
    if-ltz v5, :cond_14

    .line 53
    iget-object v6, v0, Lz6;->b:Landroid/graphics/Path;

    invoke-static {v7}, Lz6$b;->a(Lz6$b;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ll7;

    invoke-interface {v8}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_14
    const-string v5, "StrokeContent#buildPath"

    .line 54
    invoke-static {v5}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    .line 55
    iget-object v5, v0, Lz6;->b:Landroid/graphics/Path;

    iget-object v6, v0, Lz6;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v5, "StrokeContent#drawPath"

    .line 56
    invoke-static {v5}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    :goto_e
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 57
    :cond_15
    invoke-static {v4}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

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
    sget-object v0, Lcom/airbnb/lottie/l;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lz6;->k:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/l;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lz6;->j:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/l;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p1, p0, Lz6;->n:Ls7;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lz6;->f:Lz9;

    invoke-virtual {v0, p1}, Lz9;->o(Ls7;)V

    :cond_2
    const/4 p1, 0x0

    if-nez p2, :cond_3

    .line 8
    iput-object p1, p0, Lz6;->n:Ls7;

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Lh8;

    .line 10
    invoke-direct {v0, p2, p1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 11
    iput-object v0, p0, Lz6;->n:Ls7;

    .line 12
    invoke-virtual {v0, p0}, Ls7;->a(Ls7$b;)V

    .line 13
    iget-object p1, p0, Lz6;->f:Lz9;

    iget-object p2, p0, Lz6;->n:Ls7;

    invoke-virtual {p1, p2}, Lz9;->i(Ls7;)V

    :cond_4
    :goto_0
    return-void
.end method
