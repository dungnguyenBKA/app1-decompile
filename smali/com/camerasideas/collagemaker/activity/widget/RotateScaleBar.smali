.class public Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:F

.field private d:F

.field private e:Landroid/widget/Scroller;

.field private f:I

.field private g:F

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/text/TextPaint;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x32

    .line 3
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->b:I

    const/high16 p3, 0x41a00000    # 20.0f

    .line 4
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    .line 5
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->i:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->j:Landroid/text/TextPaint;

    if-eqz p2, :cond_0

    .line 7
    sget-object p3, Lcom/camerasideas/collagemaker/R$styleable;->i:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->k:Z

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/high16 p2, 0x3fc00000    # 1.5f

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 11
    invoke-static {v0, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    const/high16 p3, 0x41200000    # 10.0f

    .line 12
    invoke-static {p1, p3}, Lc2;->b(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    .line 13
    new-instance p3, Landroid/widget/Scroller;

    invoke-direct {p3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    .line 14
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->h:Landroid/graphics/Rect;

    .line 15
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->i:Landroid/graphics/Paint;

    const-string v1, "#AFAFAF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 18
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->i:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->j:Landroid/text/TextPaint;

    const/16 p3, 0xd

    invoke-static {p1, p3}, Lc2;->c(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 21
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->j:Landroid/text/TextPaint;

    const-string p3, "Roboto-Medium.ttf"

    .line 22
    invoke-static {p1, p3}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 24
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->j:Landroid/text/TextPaint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    :goto_0
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->b:I

    if-gt v3, v0, :cond_2

    .line 3
    rem-int/lit8 v0, v3, 0x5

    if-nez v0, :cond_0

    int-to-float v0, v3

    .line 4
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    mul-float v5, v0, v1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v1, v2

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    mul-float v7, v0, v1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->i:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->k:Z

    if-eqz v1, :cond_1

    .line 6
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->b:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->j:Landroid/text/TextPaint;

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 8
    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    mul-float v0, v0, v5

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->j:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    int-to-float v0, v3

    .line 9
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    mul-float v5, v0, v1

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    div-float v6, v1, v2

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    mul-float v7, v0, v1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v0, v2

    iget-object v9, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->i:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 3
    rem-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->g:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->f:I

    sub-int/2addr v1, v0

    .line 5
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->c:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_1

    if-ltz v1, :cond_2

    :cond_1
    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->b:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    if-lez v1, :cond_3

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 7
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getFinalY()I

    move-result v6

    invoke-virtual {v3, v5, v6, v1, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    int-to-double v7, p1

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    double-to-int p1, v5

    int-to-float p1, p1

    .line 10
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->g:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v5, v1, v3

    add-float/2addr v5, p1

    div-float/2addr v5, v3

    iput v5, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->c:F

    cmpg-float p1, v5, v4

    if-gez p1, :cond_4

    .line 11
    iput v4, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->c:F

    .line 12
    :cond_4
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->c:F

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->b:I

    int-to-float v4, v3

    cmpl-float p1, p1, v4

    if-lez p1, :cond_5

    int-to-float p1, v3

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->c:F

    .line 13
    :cond_5
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->c:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->d:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 14
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    invoke-virtual {v1, p1}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->f:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_6
    return v2

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->e:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 20
    :cond_8
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/RotateScaleBar;->f:I

    return v2
.end method
