.class public Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;,
        Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;
    }
.end annotation


# instance fields
.field private b:D

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:Landroid/graphics/Canvas;

.field private i:F

.field private j:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/a;

.field private k:I

.field private l:F

.field private m:I

.field private n:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x41200000    # 10.0f

    .line 2
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->f:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    .line 4
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->i:F

    .line 5
    new-instance p3, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/a;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/high16 v2, 0x43160000    # 150.0f

    const/4 v3, 0x1

    invoke-direct {p3, v1, v2, v3}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/a;-><init>(Landroid/graphics/Paint$Align;FZ)V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->j:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/a;

    .line 6
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->k:I

    const/high16 p3, 0x41a00000    # 20.0f

    .line 7
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->l:F

    .line 8
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    .line 9
    sget-object p3, Lcom/camerasideas/collagemaker/R$styleable;->l:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const p3, 0x7f050045

    .line 10
    invoke-static {p1, p3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p3

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->m:I

    const/4 p3, 0x2

    .line 11
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->f:F

    .line 12
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->i:F

    .line 13
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    .line 14
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->m:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->f:F

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->i:F

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    .line 19
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->i:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 20
    :cond_0
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 21
    :goto_0
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->d:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->d:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->d:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->e:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->e:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(FLandroid/graphics/Canvas;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;
    .locals 5

    .line 1
    sget-object v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;-><init>(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;)V

    .line 2
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->f:F

    iput v2, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    .line 3
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v3, p1, v2

    if-lez v3, :cond_4

    sub-float/2addr p1, v2

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr v3, v4

    sub-float/2addr p1, v3

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr v3, v4

    sub-float/2addr p1, v3

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr p2, v3

    sub-float/2addr p1, p2

    cmpl-float p2, p1, v2

    if-nez p2, :cond_0

    .line 10
    invoke-static {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->b(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    .line 11
    invoke-static {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->d(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;F)F

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->b(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    .line 13
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    add-float/2addr p2, p1

    invoke-static {v1, p2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->d(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;F)F

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->e:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    invoke-static {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->b(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    .line 15
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr p2, v0

    sub-float/2addr p2, p1

    invoke-static {v1, p2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->d(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;F)F

    goto :goto_0

    .line 16
    :cond_2
    sget-object v0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->d:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    invoke-static {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->b(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    .line 17
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr p2, v0

    sub-float/2addr p2, p1

    invoke-static {v1, p2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->d(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;F)F

    goto :goto_0

    .line 18
    :cond_3
    sget-object p2, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    invoke-static {v1, p2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->b(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    .line 19
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    add-float/2addr p2, p1

    invoke-static {v1, p2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->d(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;F)F

    goto :goto_0

    .line 20
    :cond_4
    invoke-static {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->b(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    add-float/2addr v2, p1

    .line 21
    invoke-static {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->d(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;F)F

    :goto_0
    return-object v1
.end method

.method public b(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b:D

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->h:Landroid/graphics/Canvas;

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->f:F

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    .line 6
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 7
    iget-wide v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b:D

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    .line 9
    iget-wide v6, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v2, v4

    invoke-virtual {p0, v2, p1}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->a(FLandroid/graphics/Canvas;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->a(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    move-result-object v4

    sget-object v5, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    if-ne v4, v5, :cond_2

    .line 11
    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->c(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)F

    move-result v4

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-wide v6, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_1

    .line 12
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->c(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    int-to-float v5, v0

    sub-float/2addr v5, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    int-to-float v6, v1

    sub-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->c(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    :goto_0
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    :cond_2
    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->a(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    move-result-object v4

    sget-object v5, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    if-ne v4, v5, :cond_3

    .line 23
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 24
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    int-to-float v5, v0

    sub-float/2addr v5, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    const/4 v6, 0x0

    .line 26
    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->c(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)F

    move-result v7

    add-float/2addr v7, v6

    .line 27
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 28
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    :cond_3
    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->a(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    move-result-object v4

    sget-object v5, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->d:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    if-ne v4, v5, :cond_4

    .line 30
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 31
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    int-to-float v5, v0

    sub-float v6, v5, v3

    invoke-virtual {v4, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    int-to-float v7, v1

    sub-float/2addr v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    iget v6, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->c(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)F

    move-result v5

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 36
    :cond_4
    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->a(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    move-result-object v4

    sget-object v5, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;->e:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$b;

    if-ne v4, v5, :cond_5

    .line 37
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 38
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    int-to-float v1, v1

    sub-float v5, v1, v3

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->g:F

    sub-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;->c(Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView$a;)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method
