.class public Landroidx/appcompat/widget/StarCheckView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/StarCheckView$a;
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Z

.field private g:Landroid/animation/ValueAnimator;

.field private h:Landroid/animation/ValueAnimator;

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroidx/appcompat/widget/StarCheckView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/StarCheckView;->f:Z

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/StarCheckView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/StarCheckView;->f:Z

    .line 6
    invoke-direct {p0}, Landroidx/appcompat/widget/StarCheckView;->f()V

    return-void
.end method

.method static synthetic a(Landroidx/appcompat/widget/StarCheckView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic b(Landroidx/appcompat/widget/StarCheckView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->i:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic c(Landroidx/appcompat/widget/StarCheckView;)Landroidx/appcompat/widget/StarCheckView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/StarCheckView;->j:Landroidx/appcompat/widget/StarCheckView$a;

    return-object p0
.end method

.method static synthetic d(Landroidx/appcompat/widget/StarCheckView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->h:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-le p3, v0, :cond_1

    const/16 p3, 0xff

    .line 1
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/StarCheckView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float p3, v0

    int-to-float v0, v1

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/StarCheckView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/StarCheckView;->b:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070180

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/StarCheckView;->c:Landroid/graphics/Bitmap;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/StarCheckView;->d:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/StarCheckView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/StarCheckView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public g(ZZ)V
    .locals 6

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/StarCheckView;->f:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    new-array p2, p1, [F

    .line 2
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v0, Landroidx/appcompat/widget/z;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/z;-><init>(Landroidx/appcompat/widget/StarCheckView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x4b0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/appcompat/widget/a0;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/a0;-><init>(Landroidx/appcompat/widget/StarCheckView;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    new-array p2, p1, [F

    .line 8
    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    .line 9
    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->i:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/appcompat/widget/b0;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/b0;-><init>(Landroidx/appcompat/widget/StarCheckView;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    iget-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->i:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, p1, [F

    .line 13
    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->h:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/appcompat/widget/c0;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/c0;-><init>(Landroidx/appcompat/widget/StarCheckView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    iget-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    iget-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    iput-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    .line 21
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->i:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 23
    iput-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->i:Landroid/animation/ValueAnimator;

    .line 24
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->h:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 25
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 26
    iput-object p2, p0, Landroidx/appcompat/widget/StarCheckView;->h:Landroid/animation/ValueAnimator;

    .line 27
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_2
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method public h(Landroidx/appcompat/widget/StarCheckView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/StarCheckView;->j:Landroidx/appcompat/widget/StarCheckView$a;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/StarCheckView;->h:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    int-to-float v2, v2

    mul-float v2, v2, v1

    move v9, v2

    const v2, 0x3f99999a    # 1.2f

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 10
    iget-object v2, p0, Landroidx/appcompat/widget/StarCheckView;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    iget-object v10, p0, Landroidx/appcompat/widget/StarCheckView;->e:Landroid/graphics/Paint;

    new-instance v11, Landroid/graphics/RadialGradient;

    const/4 v1, 0x3

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v11

    move v2, v0

    move v3, v8

    move v4, v9

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/appcompat/widget/StarCheckView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v9, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    const/4 v1, 0x0

    .line 13
    iget-object v2, p0, Landroidx/appcompat/widget/StarCheckView;->i:Landroid/animation/ValueAnimator;

    const/16 v3, 0xff

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v2, v3

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/4 v4, 0x1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    invoke-virtual {p1, v1, v1, v0, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v2, 0xff

    .line 17
    :goto_1
    iget-object v4, p0, Landroidx/appcompat/widget/StarCheckView;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v4, v2}, Landroidx/appcompat/widget/StarCheckView;->e(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 19
    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/StarCheckView;->g:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v2, v3

    mul-float v2, v2, v1

    float-to-int v3, v2

    .line 21
    invoke-virtual {p1, v1, v1, v0, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 22
    :cond_5
    iget-boolean v0, p0, Landroidx/appcompat/widget/StarCheckView;->f:Z

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p0, Landroidx/appcompat/widget/StarCheckView;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v3}, Landroidx/appcompat/widget/StarCheckView;->e(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    :cond_6
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x66ffda21
        0x66ffda21
        -0x330025df
    .end array-data
.end method
