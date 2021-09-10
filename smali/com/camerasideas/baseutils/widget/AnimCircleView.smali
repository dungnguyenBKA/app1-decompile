.class public Lcom/camerasideas/baseutils/widget/AnimCircleView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:F

.field private i:I

.field private j:I

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Landroid/animation/ObjectAnimator;

.field private m:Landroid/animation/ObjectAnimator;

.field private n:Landroid/animation/AnimatorSet;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    .line 2
    iput v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->j:I

    .line 3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/camerasideas/baseutils/widget/AnimCircleView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    .line 6
    iput v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->j:I

    .line 7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/baseutils/widget/AnimCircleView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x1000000

    .line 10
    iput p3, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->j:I

    .line 11
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/baseutils/widget/AnimCircleView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/baseutils/widget/AnimCircleView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->f:Landroid/graphics/Paint;

    .line 5
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->g:Landroid/graphics/Paint;

    .line 7
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 10
    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->i:I

    const/high16 v1, -0x1000000

    if-eqz p2, :cond_0

    .line 11
    sget-object v2, Lcom/camerasideas/baseutils/R$styleable;->a:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 13
    iget p2, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->i:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->i:I

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    :cond_0
    invoke-virtual {p0, v1}, Lcom/camerasideas/baseutils/widget/AnimCircleView;->setColor(I)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0001

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->o:I

    return-void
.end method


# virtual methods
.method public getAnimationProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->h:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    iget v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->o:I

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 3
    fill-array-data v2, :array_0

    const-string v3, "animationProgress"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->k:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    .line 4
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v0, v1, [F

    .line 5
    fill-array-data v0, :array_1

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->l:Landroid/animation/ObjectAnimator;

    .line 6
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v0, v1, [F

    .line 7
    fill-array-data v0, :array_2

    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->m:Landroid/animation/ObjectAnimator;

    .line 8
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->l:Landroid/animation/ObjectAnimator;

    new-array v2, v1, [F

    iget v3, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->h:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->i:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->m:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->i:I

    int-to-float v2, v2

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 11
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->l:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 12
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/camerasideas/baseutils/widget/a;

    invoke-direct {v1, p0}, Lcom/camerasideas/baseutils/widget/a;-><init>(Lcom/camerasideas/baseutils/widget/AnimCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->h:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    div-int/lit8 p3, p1, 0x2

    iput p3, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->c:I

    .line 3
    div-int/lit8 p3, p2, 0x2

    iput p3, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->b:I

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->d:I

    .line 5
    iget p2, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->i:I

    sub-int/2addr p1, p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->e:I

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->h:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->j:I

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {v0, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 5
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->j:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->g:Landroid/graphics/Paint;

    iget v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->j:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->g:Landroid/graphics/Paint;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public startAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public stopAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/baseutils/widget/AnimCircleView;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method
