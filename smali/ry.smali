.class public Lry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lry$a;
    }
.end annotation


# instance fields
.field private final a:[Lsy;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/PointF;

.field private final e:Lsy;

.field private final f:[F

.field private final g:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lsy;

    .line 2
    iput-object v1, p0, Lry;->a:[Lsy;

    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 3
    iput-object v1, p0, Lry;->b:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 4
    iput-object v1, p0, Lry;->c:[Landroid/graphics/Matrix;

    .line 5
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lry;->d:Landroid/graphics/PointF;

    .line 6
    new-instance v1, Lsy;

    invoke-direct {v1}, Lsy;-><init>()V

    iput-object v1, p0, Lry;->e:Lsy;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 7
    iput-object v2, p0, Lry;->f:[F

    new-array v1, v1, [F

    .line 8
    iput-object v1, p0, Lry;->g:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lry;->a:[Lsy;

    new-instance v3, Lsy;

    invoke-direct {v3}, Lsy;-><init>()V

    aput-object v3, v2, v1

    .line 10
    iget-object v2, p0, Lry;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 11
    iget-object v2, p0, Lry;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lqy;FLandroid/graphics/RectF;Lry$a;Landroid/graphics/Path;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ge v6, v9, :cond_9

    if-eq v6, v10, :cond_2

    if-eq v6, v7, :cond_1

    if-eq v6, v8, :cond_0

    .line 2
    iget-object v9, v1, Lqy;->f:Liy;

    goto :goto_1

    .line 3
    :cond_0
    iget-object v9, v1, Lqy;->e:Liy;

    goto :goto_1

    .line 4
    :cond_1
    iget-object v9, v1, Lqy;->h:Liy;

    goto :goto_1

    .line 5
    :cond_2
    iget-object v9, v1, Lqy;->g:Liy;

    :goto_1
    if-eq v6, v10, :cond_5

    if-eq v6, v7, :cond_4

    if-eq v6, v8, :cond_3

    .line 6
    iget-object v11, v1, Lqy;->b:Ljy;

    goto :goto_2

    .line 7
    :cond_3
    iget-object v11, v1, Lqy;->a:Ljy;

    goto :goto_2

    .line 8
    :cond_4
    iget-object v11, v1, Lqy;->d:Ljy;

    goto :goto_2

    .line 9
    :cond_5
    iget-object v11, v1, Lqy;->c:Ljy;

    .line 10
    :goto_2
    iget-object v12, v0, Lry;->a:[Lsy;

    aget-object v12, v12, v6

    const/high16 v13, 0x42b40000    # 90.0f

    .line 11
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v9, v3}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v9

    invoke-virtual {v11, v12, v13, v2, v9}, Ljy;->a(Lsy;FFF)V

    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v11, v9, 0x5a

    int-to-float v11, v11

    .line 13
    iget-object v12, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    .line 14
    iget-object v12, v0, Lry;->d:Landroid/graphics/PointF;

    if-eq v6, v10, :cond_8

    if-eq v6, v7, :cond_7

    if-eq v6, v8, :cond_6

    .line 15
    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v8, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    .line 16
    :cond_6
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v8, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    .line 17
    :cond_7
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    .line 18
    :cond_8
    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v12, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 19
    :goto_3
    iget-object v7, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    iget-object v8, v0, Lry;->d:Landroid/graphics/PointF;

    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 20
    iget-object v7, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 21
    iget-object v7, v0, Lry;->f:[F

    iget-object v8, v0, Lry;->a:[Lsy;

    aget-object v12, v8, v6

    .line 22
    iget v12, v12, Lsy;->c:F

    .line 23
    aput v12, v7, v5

    .line 24
    aget-object v8, v8, v6

    .line 25
    iget v8, v8, Lsy;->d:F

    .line 26
    aput v8, v7, v10

    .line 27
    iget-object v8, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v8, v8, v6

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 28
    iget-object v7, v0, Lry;->c:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 29
    iget-object v7, v0, Lry;->c:[Landroid/graphics/Matrix;

    aget-object v7, v7, v6

    iget-object v8, v0, Lry;->f:[F

    aget v12, v8, v5

    aget v8, v8, v10

    invoke-virtual {v7, v12, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 30
    iget-object v7, v0, Lry;->c:[Landroid/graphics/Matrix;

    aget-object v6, v7, v6

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v6, v9

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_11

    .line 31
    iget-object v11, v0, Lry;->f:[F

    iget-object v12, v0, Lry;->a:[Lsy;

    aget-object v13, v12, v6

    .line 32
    iget v13, v13, Lsy;->a:F

    .line 33
    aput v13, v11, v5

    .line 34
    aget-object v12, v12, v6

    .line 35
    iget v12, v12, Lsy;->b:F

    .line 36
    aput v12, v11, v10

    .line 37
    iget-object v12, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v6, :cond_a

    .line 38
    iget-object v11, v0, Lry;->f:[F

    aget v12, v11, v5

    aget v11, v11, v10

    invoke-virtual {v4, v12, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    .line 39
    :cond_a
    iget-object v11, v0, Lry;->f:[F

    aget v12, v11, v5

    aget v11, v11, v10

    invoke-virtual {v4, v12, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    :goto_5
    iget-object v11, v0, Lry;->a:[Lsy;

    aget-object v11, v11, v6

    iget-object v12, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12, v4}, Lsy;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz p4, :cond_b

    .line 41
    iget-object v11, v0, Lry;->a:[Lsy;

    aget-object v11, v11, v6

    iget-object v12, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    move-object/from16 v13, p4

    check-cast v13, Lmy$a;

    .line 42
    iget-object v13, v13, Lmy$a;->a:Lmy;

    invoke-static {v13}, Lmy;->b(Lmy;)[Lsy$g;

    move-result-object v13

    invoke-virtual {v11, v12}, Lsy;->d(Landroid/graphics/Matrix;)Lsy$g;

    move-result-object v11

    aput-object v11, v13, v6

    :cond_b
    add-int/lit8 v11, v6, 0x1

    .line 43
    rem-int/lit8 v12, v11, 0x4

    .line 44
    iget-object v13, v0, Lry;->f:[F

    iget-object v14, v0, Lry;->a:[Lsy;

    aget-object v15, v14, v6

    .line 45
    iget v15, v15, Lsy;->c:F

    .line 46
    aput v15, v13, v5

    .line 47
    aget-object v14, v14, v6

    .line 48
    iget v14, v14, Lsy;->d:F

    .line 49
    aput v14, v13, v10

    .line 50
    iget-object v14, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v14, v14, v6

    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 51
    iget-object v13, v0, Lry;->g:[F

    iget-object v14, v0, Lry;->a:[Lsy;

    aget-object v15, v14, v12

    .line 52
    iget v15, v15, Lsy;->a:F

    .line 53
    aput v15, v13, v5

    .line 54
    aget-object v14, v14, v12

    .line 55
    iget v14, v14, Lsy;->b:F

    .line 56
    aput v14, v13, v10

    .line 57
    iget-object v14, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v12, v14, v12

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 58
    iget-object v12, v0, Lry;->f:[F

    aget v13, v12, v5

    iget-object v14, v0, Lry;->g:[F

    aget v15, v14, v5

    sub-float/2addr v13, v15

    float-to-double v7, v13

    aget v12, v12, v10

    aget v13, v14, v10

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x3a83126f    # 0.001f

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    .line 59
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 60
    iget-object v12, v0, Lry;->f:[F

    iget-object v13, v0, Lry;->a:[Lsy;

    aget-object v14, v13, v6

    iget v14, v14, Lsy;->c:F

    aput v14, v12, v5

    .line 61
    aget-object v13, v13, v6

    iget v13, v13, Lsy;->d:F

    aput v13, v12, v10

    .line 62
    iget-object v13, v0, Lry;->b:[Landroid/graphics/Matrix;

    aget-object v13, v13, v6

    invoke-virtual {v13, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v6, v10, :cond_c

    const/4 v12, 0x3

    if-eq v6, v12, :cond_c

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    iget-object v13, v0, Lry;->f:[F

    aget v13, v13, v10

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    goto :goto_6

    .line 64
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    iget-object v13, v0, Lry;->f:[F

    aget v13, v13, v5

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 65
    :goto_6
    iget-object v13, v0, Lry;->e:Lsy;

    const/high16 v14, 0x43870000    # 270.0f

    .line 66
    invoke-virtual {v13, v8, v8, v14, v8}, Lsy;->f(FFFF)V

    if-eq v6, v10, :cond_f

    const/4 v8, 0x2

    if-eq v6, v8, :cond_e

    const/4 v13, 0x3

    if-eq v6, v13, :cond_d

    .line 67
    iget-object v14, v1, Lqy;->j:Lly;

    goto :goto_7

    .line 68
    :cond_d
    iget-object v14, v1, Lqy;->i:Lly;

    goto :goto_7

    :cond_e
    const/4 v13, 0x3

    .line 69
    iget-object v14, v1, Lqy;->l:Lly;

    goto :goto_7

    :cond_f
    const/4 v8, 0x2

    const/4 v13, 0x3

    .line 70
    iget-object v14, v1, Lqy;->k:Lly;

    .line 71
    :goto_7
    iget-object v15, v0, Lry;->e:Lsy;

    .line 72
    invoke-virtual {v14, v7, v12, v2, v15}, Lly;->a(FFFLsy;)V

    .line 73
    iget-object v7, v0, Lry;->e:Lsy;

    iget-object v12, v0, Lry;->c:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    invoke-virtual {v7, v12, v4}, Lsy;->c(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz p4, :cond_10

    .line 74
    iget-object v7, v0, Lry;->e:Lsy;

    iget-object v12, v0, Lry;->c:[Landroid/graphics/Matrix;

    aget-object v12, v12, v6

    move-object/from16 v14, p4

    check-cast v14, Lmy$a;

    .line 75
    iget-object v14, v14, Lmy$a;->a:Lmy;

    invoke-static {v14}, Lmy;->c(Lmy;)[Lsy$g;

    move-result-object v14

    invoke-virtual {v7, v12}, Lsy;->d(Landroid/graphics/Matrix;)Lsy$g;

    move-result-object v7

    aput-object v7, v14, v6

    :cond_10
    move v6, v11

    const/4 v7, 0x2

    const/4 v8, 0x3

    goto/16 :goto_4

    .line 76
    :cond_11
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    return-void
.end method
