.class public Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;
.super Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:I

.field private E:Landroid/graphics/RectF;

.field private F:F

.field private G:F

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->D:I

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->E:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->x:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const v3, 0x7f050045

    invoke-static {v2, v3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->x:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->C:I

    .line 13
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lc2;->b(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->F:F

    .line 14
    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->G:F

    return-void
.end method

.method private I()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v3, 0x5

    .line 2
    aget v4, v0, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    .line 3
    iget v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->A:F

    .line 4
    iget v6, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->B:F

    const/4 v7, 0x0

    .line 5
    aput v7, v0, v2

    .line 6
    aput v7, v0, v4

    .line 7
    aget v8, v0, v2

    add-float/2addr v8, v5

    aput v8, v0, v1

    const/4 v1, 0x3

    .line 8
    aput v7, v0, v1

    .line 9
    aget v1, v0, v2

    add-float/2addr v1, v5

    const/4 v8, 0x4

    aput v1, v0, v8

    .line 10
    aget v1, v0, v4

    add-float/2addr v1, v6

    aput v1, v0, v3

    const/4 v1, 0x6

    .line 11
    aput v7, v0, v1

    .line 12
    aget v1, v0, v4

    add-float/2addr v1, v6

    const/4 v3, 0x7

    aput v1, v0, v3

    .line 13
    aget v1, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v5, v2

    add-float/2addr v5, v1

    const/16 v1, 0x8

    aput v5, v0, v1

    .line 14
    aget v1, v0, v4

    div-float/2addr v6, v2

    add-float/2addr v6, v1

    const/16 v1, 0x9

    aput v6, v0, v1

    .line 15
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method


# virtual methods
.method public D()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->x:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->x:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->i:Z

    .line 4
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->C:I

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->w(FF)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public E(Landroid/graphics/RectF;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->E:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    .line 3
    iput p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h:I

    .line 4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->A:F

    .line 6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->B:F

    .line 7
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3fe6666666666666L    # 0.7

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    double-to-float p1, p1

    .line 8
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 9
    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    float-to-double v0, p1

    .line 10
    iput-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float p2, p2

    mul-float p2, p2, p1

    div-float/2addr p2, v2

    sub-float/2addr v1, p2

    iget p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h:I

    int-to-float p2, p2

    div-float/2addr p2, v2

    int-to-float p3, p3

    mul-float p3, p3, p1

    div-float/2addr p3, v2

    sub-float/2addr p2, p3

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 14
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->I()V

    :cond_0
    return-void
.end method

.method public F(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFF)V
    .locals 6

    const-string v0, "CutoutStickerItem/Save"

    .line 1
    invoke-static {v0}, Lim;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 3
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->p:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/16 v4, 0x8

    aget v4, v3, v4

    const/16 v5, 0x9

    aget v3, v3, v5

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 4
    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->A:F

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->B:F

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 7
    invoke-virtual {v0, p3, p3, v3, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 8
    invoke-virtual {v0, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->x:Landroid/graphics/Paint;

    iget p4, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->D:I

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public G(Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->E:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public H(Landroid/graphics/Bitmap;)Z
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    .line 2
    invoke-static {p1}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->A:F

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->B:F

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->E:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->A:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->E:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->A:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->E:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    iget p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->B:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p1, v0

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    float-to-double v2, p1

    .line 9
    iput-wide v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    .line 10
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 11
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 12
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v0, v0

    mul-float v0, v0, p1

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    int-to-float v1, v1

    mul-float v1, v1, p1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->I()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "CutoutStickerItem"

    const-string v0, "Load Sticker Failed!"

    .line 14
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->D()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 3
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->p:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/16 v4, 0x8

    aget v4, v3, v4

    const/16 v5, 0x9

    aget v3, v3, v5

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->w:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->D:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->z:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->x:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->D()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->w:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const v2, 0x7f050038

    invoke-static {v1, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->F:F

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iget v4, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->G:F

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v4, v6

    double-to-float v6, v6

    sub-float/2addr v3, v6

    const/4 v7, 0x1

    aget v8, v1, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-float/2addr v8, v6

    const/4 v9, 0x4

    aget v10, v1, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-float/2addr v10, v6

    const/4 v11, 0x5

    aget v1, v1, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-float/2addr v1, v6

    invoke-direct {v0, v3, v8, v10, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->s:I

    int-to-double v3, v1

    iget-wide v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v3, v5

    double-to-float v1, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    const v3, 0x7f050045

    invoke-static {v1, v3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->r:I

    int-to-double v3, v1

    iget-wide v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    aget v2, v1, v2

    aget v3, v1, v7

    aget v4, v1, v9

    aget v1, v1, v11

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->s:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v1, v3

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public k()Landroid/graphics/RectF;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->f()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g()F

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v2, v2, v4

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v4, 0x5

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v3, v3, v5

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 5
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float v6, v0, v2

    div-float/2addr v3, v5

    sub-float v5, v1, v3

    add-float/2addr v0, v2

    add-float/2addr v1, v3

    invoke-direct {v4, v6, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public m()Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->E:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->t:Landroid/graphics/RectF;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/e;->t:Landroid/graphics/RectF;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/h;->E:Landroid/graphics/RectF;

    :goto_0
    return-object v0
.end method
