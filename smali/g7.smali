.class public Lg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld7;
.implements Ls7$b;
.implements Lj7;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lz9;

.field private final d:Lb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll7;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lm9;

.field private final k:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Lj9;",
            "Lj9;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lh8;

.field private final q:Lcom/airbnb/lottie/g;

.field private final r:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g;Lz9;Lk9;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb0;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Lb0;-><init>(I)V

    .line 4
    iput-object v0, p0, Lg7;->d:Lb0;

    .line 5
    new-instance v0, Lb0;

    .line 6
    invoke-direct {v0, v1}, Lb0;-><init>(I)V

    .line 7
    iput-object v0, p0, Lg7;->e:Lb0;

    .line 8
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg7;->f:Landroid/graphics/Path;

    .line 9
    new-instance v1, Ly6;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ly6;-><init>(I)V

    iput-object v1, p0, Lg7;->g:Landroid/graphics/Paint;

    .line 10
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lg7;->h:Landroid/graphics/RectF;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg7;->i:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lg7;->c:Lz9;

    .line 13
    invoke-virtual {p3}, Lk9;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lg7;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p3}, Lk9;->i()Z

    move-result v1

    iput-boolean v1, p0, Lg7;->b:Z

    .line 15
    iput-object p1, p0, Lg7;->q:Lcom/airbnb/lottie/g;

    .line 16
    invoke-virtual {p3}, Lk9;->e()Lm9;

    move-result-object v1

    iput-object v1, p0, Lg7;->j:Lm9;

    .line 17
    invoke-virtual {p3}, Lk9;->c()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 18
    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->l()Lcom/airbnb/lottie/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->d()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lg7;->r:I

    .line 19
    invoke-virtual {p3}, Lk9;->d()Lv8;

    move-result-object p1

    invoke-virtual {p1}, Lv8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lg7;->k:Ls7;

    .line 20
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 21
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 22
    invoke-virtual {p3}, Lk9;->g()Lw8;

    move-result-object p1

    invoke-virtual {p1}, Lw8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lg7;->l:Ls7;

    .line 23
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 24
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 25
    invoke-virtual {p3}, Lk9;->h()Ly8;

    move-result-object p1

    invoke-virtual {p1}, Ly8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lg7;->m:Ls7;

    .line 26
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 27
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 28
    invoke-virtual {p3}, Lk9;->b()Ly8;

    move-result-object p1

    invoke-virtual {p1}, Ly8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lg7;->n:Ls7;

    .line 29
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 30
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    return-void
.end method

.method private e([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lg7;->p:Lh8;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lh8;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 3
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 5
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 7
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 8
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private h()I
    .locals 4

    .line 1
    iget-object v0, p0, Lg7;->m:Ls7;

    invoke-virtual {v0}, Ls7;->f()F

    move-result v0

    iget v1, p0, Lg7;->r:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lg7;->n:Ls7;

    invoke-virtual {v1}, Ls7;->f()F

    move-result v1

    iget v2, p0, Lg7;->r:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3
    iget-object v2, p0, Lg7;->k:Ls7;

    invoke-virtual {v2}, Ls7;->f()F

    move-result v2

    iget v3, p0, Lg7;->r:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    const/16 v3, 0x20f

    mul-int v3, v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    mul-int v3, v3, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    mul-int v3, v3, v2

    :cond_2
    return v3
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg7;->q:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7;

    .line 3
    instance-of v1, v0, Ll7;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lg7;->i:Ljava/util/List;

    check-cast v0, Ll7;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

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

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Lg7;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lg7;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lg7;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lg7;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll7;

    invoke-interface {v2}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lg7;->f:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5
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

    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lg7;->b:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, Lg7;->f:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, v0, Lg7;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4
    iget-object v4, v0, Lg7;->f:Landroid/graphics/Path;

    iget-object v5, v0, Lg7;->i:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll7;

    invoke-interface {v5}, Ll7;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lg7;->f:Landroid/graphics/Path;

    iget-object v4, v0, Lg7;->h:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6
    iget-object v3, v0, Lg7;->j:Lm9;

    sget-object v4, Lm9;->b:Lm9;

    if-ne v3, v4, :cond_3

    .line 7
    invoke-direct/range {p0 .. p0}, Lg7;->h()I

    move-result v3

    .line 8
    iget-object v4, v0, Lg7;->d:Lb0;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lb0;->g(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/LinearGradient;

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object v3, v0, Lg7;->m:Ls7;

    invoke-virtual {v3}, Ls7;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 10
    iget-object v4, v0, Lg7;->n:Ls7;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 11
    iget-object v7, v0, Lg7;->k:Ls7;

    invoke-virtual {v7}, Ls7;->g()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj9;

    .line 12
    invoke-virtual {v7}, Lj9;->a()[I

    move-result-object v8

    invoke-direct {v0, v8}, Lg7;->e([I)[I

    move-result-object v14

    .line 13
    invoke-virtual {v7}, Lj9;->b()[F

    move-result-object v15

    .line 14
    new-instance v7, Landroid/graphics/LinearGradient;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->y:F

    iget v12, v4, Landroid/graphics/PointF;->x:F

    iget v13, v4, Landroid/graphics/PointF;->y:F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 15
    iget-object v3, v0, Lg7;->d:Lb0;

    invoke-virtual {v3, v5, v6, v7}, Lb0;->k(JLjava/lang/Object;)V

    move-object v3, v7

    goto :goto_2

    .line 16
    :cond_3
    invoke-direct/range {p0 .. p0}, Lg7;->h()I

    move-result v3

    .line 17
    iget-object v4, v0, Lg7;->e:Lb0;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lb0;->g(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RadialGradient;

    if-eqz v3, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    iget-object v3, v0, Lg7;->m:Ls7;

    invoke-virtual {v3}, Ls7;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 19
    iget-object v4, v0, Lg7;->n:Ls7;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 20
    iget-object v7, v0, Lg7;->k:Ls7;

    invoke-virtual {v7}, Ls7;->g()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj9;

    .line 21
    invoke-virtual {v7}, Lj9;->a()[I

    move-result-object v8

    invoke-direct {v0, v8}, Lg7;->e([I)[I

    move-result-object v13

    .line 22
    invoke-virtual {v7}, Lj9;->b()[F

    move-result-object v14

    .line 23
    iget v10, v3, Landroid/graphics/PointF;->x:F

    .line 24
    iget v11, v3, Landroid/graphics/PointF;->y:F

    .line 25
    iget v3, v4, Landroid/graphics/PointF;->x:F

    .line 26
    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    float-to-double v7, v3

    sub-float/2addr v4, v11

    float-to-double v3, v4

    .line 27
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_5

    const v3, 0x3a83126f    # 0.001f

    const v12, 0x3a83126f    # 0.001f

    goto :goto_1

    :cond_5
    move v12, v3

    .line 28
    :goto_1
    new-instance v3, Landroid/graphics/RadialGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 29
    iget-object v4, v0, Lg7;->e:Lb0;

    invoke-virtual {v4, v5, v6, v3}, Lb0;->k(JLjava/lang/Object;)V

    .line 30
    :goto_2
    invoke-virtual {v3, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 31
    iget-object v1, v0, Lg7;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 32
    iget-object v1, v0, Lg7;->o:Ls7;

    if-eqz v1, :cond_6

    .line 33
    iget-object v3, v0, Lg7;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ls7;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_6
    move/from16 v1, p3

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    .line 34
    iget-object v4, v0, Lg7;->l:Ls7;

    invoke-virtual {v4}, Ls7;->g()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v1, v1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 35
    iget-object v3, v0, Lg7;->g:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-static {v1, v2, v4}, Lcc;->c(III)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    iget-object v1, v0, Lg7;->f:Landroid/graphics/Path;

    iget-object v2, v0, Lg7;->g:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string v1, "GradientFillContent#draw"

    .line 37
    invoke-static {v1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void
.end method

.method public g(Ljava/lang/Object;Lgc;)V
    .locals 2
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
    iget-object p1, p0, Lg7;->l:Ls7;

    invoke-virtual {p1, p2}, Ls7;->l(Lgc;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/l;->C:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lg7;->o:Ls7;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lg7;->c:Lz9;

    invoke-virtual {v0, p1}, Lz9;->o(Ls7;)V

    :cond_1
    if-nez p2, :cond_2

    .line 6
    iput-object v1, p0, Lg7;->o:Ls7;

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Lh8;

    .line 8
    invoke-direct {p1, p2, v1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 9
    iput-object p1, p0, Lg7;->o:Ls7;

    .line 10
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 11
    iget-object p1, p0, Lg7;->c:Lz9;

    iget-object p2, p0, Lg7;->o:Ls7;

    invoke-virtual {p1, p2}, Lz9;->i(Ls7;)V

    goto :goto_0

    .line 12
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/l;->D:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_6

    .line 13
    iget-object p1, p0, Lg7;->p:Lh8;

    if-eqz p1, :cond_4

    .line 14
    iget-object v0, p0, Lg7;->c:Lz9;

    invoke-virtual {v0, p1}, Lz9;->o(Ls7;)V

    :cond_4
    if-nez p2, :cond_5

    .line 15
    iput-object v1, p0, Lg7;->p:Lh8;

    goto :goto_0

    .line 16
    :cond_5
    new-instance p1, Lh8;

    .line 17
    invoke-direct {p1, p2, v1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lg7;->p:Lh8;

    .line 19
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 20
    iget-object p1, p0, Lg7;->c:Lz9;

    iget-object p2, p0, Lg7;->p:Lh8;

    invoke-virtual {p1, p2}, Lz9;->i(Ls7;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg7;->a:Ljava/lang/String;

    return-object v0
.end method
