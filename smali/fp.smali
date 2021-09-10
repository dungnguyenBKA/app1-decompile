.class public Lfp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lfp;->a:Z

    .line 3
    iput-boolean v0, p0, Lfp;->b:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lfp;->c:F

    return-void
.end method

.method private a(FF)I
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    aget v3, v1, v2

    int-to-float v4, v3

    sub-float/2addr v4, p1

    .line 3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb4
        0x10e
        0x168
    .end array-data
.end method


# virtual methods
.method public b(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;F)F
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/4 v5, 0x2

    aget v6, v3, v5

    const/4 v7, 0x3

    aget v3, v3, v7

    invoke-direct {v1, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 3
    new-instance v3, Landroid/graphics/PointF;

    iget-object v6, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    aget v8, v6, v2

    aget v6, v6, v4

    invoke-direct {v3, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    new-instance v6, Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    aget v5, p1, v5

    aget p1, p1, v7

    invoke-direct {v6, v5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5
    new-instance p1, Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    invoke-direct {p1, v5, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    new-instance v0, Landroid/graphics/PointF;

    iget v1, v6, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    iget v5, v6, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v7

    invoke-direct {v0, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v5

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v7

    add-float/2addr v5, v1

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    mul-float v0, v0, p1

    div-float/2addr v5, v0

    float-to-double v0, v5

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 10
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 11
    iget v1, v6, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    cmpg-float v5, v0, v3

    if-gez v5, :cond_0

    cmpg-float v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    cmpg-float v0, v1, v3

    if-gez v0, :cond_1

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    sub-float p1, v0, p1

    :cond_1
    neg-float p2, p2

    .line 12
    iget-boolean v0, p0, Lfp;->a:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3

    const/high16 v0, 0x40a00000    # 5.0f

    .line 13
    invoke-direct {p0, p1, v0}, Lfp;->a(FF)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 14
    iput-boolean v4, p0, Lfp;->a:Z

    .line 15
    iput-boolean v2, p0, Lfp;->b:Z

    .line 16
    iput v3, p0, Lfp;->c:F

    int-to-float p2, v0

    sub-float/2addr p2, p1

    goto :goto_2

    .line 17
    :cond_2
    iput-boolean v4, p0, Lfp;->b:Z

    goto :goto_2

    :cond_3
    const/high16 v0, 0x41000000    # 8.0f

    .line 18
    invoke-direct {p0, p1, v0}, Lfp;->a(FF)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 19
    iput-boolean v2, p0, Lfp;->a:Z

    .line 20
    iput v3, p0, Lfp;->c:F

    goto :goto_1

    .line 21
    :cond_4
    iget p1, p0, Lfp;->c:F

    add-float/2addr p1, p2

    iput p1, p0, Lfp;->c:F

    .line 22
    :goto_1
    iget p1, p0, Lfp;->c:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41c00000    # 24.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 23
    iput-boolean v4, p0, Lfp;->b:Z

    .line 24
    :cond_5
    iget-boolean p1, p0, Lfp;->b:Z

    if-eqz p1, :cond_6

    :goto_2
    move v3, p2

    :cond_6
    return v3
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfp;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
