.class public abstract Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Landroid/graphics/Matrix;

.field protected d:D

.field protected e:D

.field protected f:F

.field protected g:I

.field protected h:I

.field public i:Z

.field protected j:Z

.field public k:[F

.field public l:[F

.field public m:F

.field public n:F

.field protected o:Landroid/graphics/Matrix;

.field protected p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 5
    iput-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->d:D

    .line 6
    iput-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->f:F

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->j:Z

    const/16 v0, 0xa

    new-array v1, v0, [F

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    new-array v0, v0, [F

    .line 10
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    .line 11
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->o:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->p:Z

    .line 13
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 7

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    if-gtz p1, :cond_1

    const-string p1, "restoreState"

    const-string v0, "layoutWidth is set to 0:"

    .line 2
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "TAG"

    const-string v1, "-----------------------------------"

    .line 8
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    const-string v5, "ClassName: "

    .line 10
    invoke-static {v5}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LineNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MethodName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    .line 2
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->o:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->o:Landroid/graphics/Matrix;

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    .line 1
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p1, p3, v2}, Lic;->a(FFFF)F

    move-result p1

    float-to-double p1, p1

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-gtz p3, :cond_1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract c(Landroid/graphics/Canvas;)V
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->a()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public e()Landroid/graphics/PointF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/16 v2, 0x8

    aget v2, v1, v2

    const/16 v3, 0x9

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public f()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public g()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/16 v1, 0x9

    aget v0, v0, v1

    return v0
.end method

.method public h()F
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v6, v0, v5

    const/4 v7, 0x3

    aget v0, v0, v7

    invoke-static {v2, v4, v6, v0}, Landroidx/core/app/b;->J(FFFF)F

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    aget v1, v2, v1

    aget v3, v2, v3

    aget v4, v2, v5

    aget v2, v2, v7

    invoke-static {v1, v3, v4, v2}, Landroidx/core/app/b;->J(FFFF)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x4

    aget v3, v0, v3

    const/4 v4, 0x5

    aget v0, v0, v4

    sub-float/2addr v1, v3

    sub-float/2addr v2, v0

    mul-float v1, v1, v1

    mul-float v2, v2, v2

    add-float/2addr v2, v1

    float-to-double v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    .line 3
    iget-wide v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public j()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    sub-float/2addr v1, v3

    sub-float/2addr v2, v0

    mul-float v1, v1, v1

    mul-float v2, v2, v2

    add-float/2addr v2, v1

    float-to-double v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    .line 3
    iget-wide v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public abstract k()Landroid/graphics/RectF;
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h:I

    return v0
.end method

.method public abstract m()Landroid/graphics/RectF;
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->g:I

    return v0
.end method

.method public p()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->d:D

    return-wide v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->p:Z

    return v0
.end method

.method protected r([F)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public s(FF)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->r([F)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    aget v1, v1, v2

    invoke-direct {v0, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 6
    new-instance v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v5, 0x2

    aget v5, v4, v5

    const/4 v6, 0x3

    aget v4, v4, v6

    invoke-direct {v1, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v6, 0x4

    aget v6, v5, v6

    const/4 v7, 0x5

    aget v5, v5, v7

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    const/4 v7, 0x6

    aget v7, v6, v7

    const/4 v8, 0x7

    aget v6, v6, v8

    invoke-direct {v5, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 9
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 10
    invoke-virtual {p0, v0, v1, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    .line 11
    invoke-virtual {p0, v1, v4, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p2

    .line 12
    invoke-virtual {p0, v4, v5, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    .line 13
    invoke-virtual {p0, v5, v0, v6}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    :cond_2
    return v3
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->j:Z

    return v0
.end method

.method public u(FFF)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    .line 2
    iput-wide v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->e:D

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method

.method public v(FFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method

.method public w(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->c:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->l:[F

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->k:[F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    return-void
.end method

.method public x(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->f:F

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->f:F

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->f:F

    :goto_0
    return-void
.end method

.method public y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->p:Z

    return-void
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/b;->h:I

    return-void
.end method
