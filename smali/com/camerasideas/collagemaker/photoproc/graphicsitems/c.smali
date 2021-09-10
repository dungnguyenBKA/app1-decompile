.class public Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;
.super Landroid/graphics/Path;
.source "SourceFile"


# instance fields
.field protected a:F

.field protected b:F

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/graphics/PointF;

.field protected e:Landroid/graphics/Paint;

.field protected f:Landroid/content/Context;

.field protected g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x41400000    # 12.0f

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->a:F

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->b:F

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->d:Landroid/graphics/PointF;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    .line 7
    move-object v0, p0

    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/d;

    .line 8
    iput-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->f:Landroid/content/Context;

    .line 9
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 13
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 14
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    iget-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->f:Landroid/content/Context;

    iget v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->a:F

    invoke-static {v1, v2}, Lc2;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->a:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 16
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 17
    iget-object p1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/graphics/PointF;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->d:Landroid/graphics/PointF;

    .line 3
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 6
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->d:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v0

    div-float/2addr v4, v3

    invoke-virtual {p0, v1, v0, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->d:Landroid/graphics/PointF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/f;

    return-object v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->b:F

    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->a:F

    return v0
.end method

.method public e(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/f;

    return-void
.end method
