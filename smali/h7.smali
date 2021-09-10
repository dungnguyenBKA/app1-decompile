.class public Lh7;
.super Lz6;
.source "SourceFile"


# instance fields
.field private final o:Ljava/lang/String;

.field private final p:Z

.field private final q:Lb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/graphics/RectF;

.field private final t:Lm9;

.field private final u:I

.field private final v:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Lj9;",
            "Lj9;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ls7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls7<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lh8;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/g;Lz9;Ll9;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Ll9;->b()Lw9$a;

    move-result-object v0

    invoke-virtual {v0}, Lw9$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 2
    invoke-virtual {p3}, Ll9;->g()Lw9$b;

    move-result-object v0

    invoke-virtual {v0}, Lw9$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Ll9;->i()F

    move-result v6

    invoke-virtual {p3}, Ll9;->k()Lw8;

    move-result-object v7

    .line 3
    invoke-virtual {p3}, Ll9;->m()Lu8;

    move-result-object v8

    invoke-virtual {p3}, Ll9;->h()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Ll9;->c()Lu8;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v10}, Lz6;-><init>(Lcom/airbnb/lottie/g;Lz9;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLw8;Lu8;Ljava/util/List;Lu8;)V

    .line 5
    new-instance v0, Lb0;

    const/16 v1, 0xa

    .line 6
    invoke-direct {v0, v1}, Lb0;-><init>(I)V

    .line 7
    iput-object v0, p0, Lh7;->q:Lb0;

    .line 8
    new-instance v0, Lb0;

    .line 9
    invoke-direct {v0, v1}, Lb0;-><init>(I)V

    .line 10
    iput-object v0, p0, Lh7;->r:Lb0;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lh7;->s:Landroid/graphics/RectF;

    .line 12
    invoke-virtual {p3}, Ll9;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh7;->o:Ljava/lang/String;

    .line 13
    invoke-virtual {p3}, Ll9;->f()Lm9;

    move-result-object v0

    iput-object v0, p0, Lh7;->t:Lm9;

    .line 14
    invoke-virtual {p3}, Ll9;->n()Z

    move-result v0

    iput-boolean v0, p0, Lh7;->p:Z

    .line 15
    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->l()Lcom/airbnb/lottie/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/e;->d()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lh7;->u:I

    .line 16
    invoke-virtual {p3}, Ll9;->e()Lv8;

    move-result-object p1

    invoke-virtual {p1}, Lv8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lh7;->v:Ls7;

    .line 17
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 18
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 19
    invoke-virtual {p3}, Ll9;->l()Ly8;

    move-result-object p1

    invoke-virtual {p1}, Ly8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lh7;->w:Ls7;

    .line 20
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 21
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    .line 22
    invoke-virtual {p3}, Ll9;->d()Ly8;

    move-result-object p1

    invoke-virtual {p1}, Ly8;->a()Ls7;

    move-result-object p1

    iput-object p1, p0, Lh7;->x:Ls7;

    .line 23
    invoke-virtual {p1, p0}, Ls7;->a(Ls7$b;)V

    .line 24
    invoke-virtual {p2, p1}, Lz9;->i(Ls7;)V

    return-void
.end method

.method private e([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lh7;->y:Lh8;

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
    iget-object v0, p0, Lh7;->w:Ls7;

    invoke-virtual {v0}, Ls7;->f()F

    move-result v0

    iget v1, p0, Lh7;->u:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lh7;->x:Ls7;

    invoke-virtual {v1}, Ls7;->f()F

    move-result v1

    iget v2, p0, Lh7;->u:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3
    iget-object v2, p0, Lh7;->v:Ls7;

    invoke-virtual {v2}, Ls7;->f()F

    move-result v2

    iget v3, p0, Lh7;->u:I

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
.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lh7;->p:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, Lh7;->s:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lz6;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 3
    iget-object v2, v0, Lh7;->t:Lm9;

    sget-object v3, Lm9;->b:Lm9;

    if-ne v2, v3, :cond_2

    .line 4
    invoke-direct/range {p0 .. p0}, Lh7;->h()I

    move-result v2

    .line 5
    iget-object v3, v0, Lh7;->q:Lb0;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lb0;->g(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v2, v0, Lh7;->w:Ls7;

    invoke-virtual {v2}, Ls7;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 7
    iget-object v3, v0, Lh7;->x:Ls7;

    invoke-virtual {v3}, Ls7;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 8
    iget-object v6, v0, Lh7;->v:Ls7;

    invoke-virtual {v6}, Ls7;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj9;

    .line 9
    invoke-virtual {v6}, Lj9;->a()[I

    move-result-object v7

    invoke-direct {v0, v7}, Lh7;->e([I)[I

    move-result-object v13

    .line 10
    invoke-virtual {v6}, Lj9;->b()[F

    move-result-object v14

    .line 11
    iget v9, v2, Landroid/graphics/PointF;->x:F

    .line 12
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 13
    iget v11, v3, Landroid/graphics/PointF;->x:F

    .line 14
    iget v12, v3, Landroid/graphics/PointF;->y:F

    .line 15
    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 16
    iget-object v3, v0, Lh7;->q:Lb0;

    invoke-virtual {v3, v4, v5, v2}, Lb0;->k(JLjava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-direct/range {p0 .. p0}, Lh7;->h()I

    move-result v2

    .line 18
    iget-object v3, v0, Lh7;->r:Lb0;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lb0;->g(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    iget-object v2, v0, Lh7;->w:Ls7;

    invoke-virtual {v2}, Ls7;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 20
    iget-object v3, v0, Lh7;->x:Ls7;

    invoke-virtual {v3}, Ls7;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 21
    iget-object v6, v0, Lh7;->v:Ls7;

    invoke-virtual {v6}, Ls7;->g()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj9;

    .line 22
    invoke-virtual {v6}, Lj9;->a()[I

    move-result-object v7

    invoke-direct {v0, v7}, Lh7;->e([I)[I

    move-result-object v12

    .line 23
    invoke-virtual {v6}, Lj9;->b()[F

    move-result-object v13

    .line 24
    iget v9, v2, Landroid/graphics/PointF;->x:F

    .line 25
    iget v10, v2, Landroid/graphics/PointF;->y:F

    .line 26
    iget v2, v3, Landroid/graphics/PointF;->x:F

    .line 27
    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v9

    float-to-double v6, v2

    sub-float/2addr v3, v10

    float-to-double v2, v3

    .line 28
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v11, v2

    .line 29
    new-instance v2, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 30
    iget-object v3, v0, Lh7;->r:Lb0;

    invoke-virtual {v3, v4, v5, v2}, Lb0;->k(JLjava/lang/Object;)V

    .line 31
    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 32
    iget-object v3, v0, Lz6;->i:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 33
    invoke-super/range {p0 .. p3}, Lz6;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

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
    invoke-super {p0, p1, p2}, Lz6;->g(Ljava/lang/Object;Lgc;)V

    .line 2
    sget-object v0, Lcom/airbnb/lottie/l;->D:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lh7;->y:Lh8;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lz6;->f:Lz9;

    invoke-virtual {v0, p1}, Lz9;->o(Ls7;)V

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 5
    iput-object p1, p0, Lh7;->y:Lh8;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lh8;

    .line 7
    invoke-direct {v0, p2, p1}, Lh8;-><init>(Lgc;Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lh7;->y:Lh8;

    .line 9
    invoke-virtual {v0, p0}, Ls7;->a(Ls7$b;)V

    .line 10
    iget-object p1, p0, Lz6;->f:Lz9;

    iget-object p2, p0, Lh7;->y:Lh8;

    invoke-virtual {p1, p2}, Lz9;->i(Ls7;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh7;->o:Ljava/lang/String;

    return-object v0
.end method
