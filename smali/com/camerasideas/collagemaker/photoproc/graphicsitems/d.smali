.class public Lcom/camerasideas/collagemaker/photoproc/graphicsitems/d;
.super Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public f(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->a:F

    mul-float v0, v0, p1

    const/high16 p1, 0x437a0000    # 250.0f

    div-float/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->b:F

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->b:F

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_0
    return-void
.end method

.method public g(F)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->a:F

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->f:Landroid/content/Context;

    invoke-static {v1, p1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->a:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlendPath{mIsEraser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFeather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPointList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPaint.width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->e:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrushType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/c;->g:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
