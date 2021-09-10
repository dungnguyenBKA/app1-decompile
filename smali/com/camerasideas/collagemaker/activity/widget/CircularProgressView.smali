.class public Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$d;
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:Landroid/graphics/RectF;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$d;",
            ">;"
        }
    .end annotation
.end field

.field private t:F

.field private u:F

.field private v:Landroid/animation/ValueAnimator;

.field private w:Landroid/animation/ValueAnimator;

.field private x:Landroid/animation/AnimatorSet;

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->d:I

    .line 3
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->f:I

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->f(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->d:I

    .line 7
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->f:I

    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->f(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->t:F

    return p0
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->t:F

    return p1
.end method

.method static synthetic c(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->u:F

    return p1
.end method

.method static synthetic d(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->k:F

    return p1
.end method

.method static synthetic e(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->l:F

    return p1
.end method


# virtual methods
.method protected f(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->s:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/camerasideas/collagemaker/R$styleable;->c:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f09000b

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->i:F

    const v0, 0x7f09000a

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->j:F

    const v0, 0x7f0601e6

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->m:I

    const v0, 0x7f040004

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->g:Z

    const v0, 0x7f040003

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->h:Z

    const v0, 0x7f09000c

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->y:F

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->f:I

    .line 11
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->y:F

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->t:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "colorAccent"

    const-string v4, "attr"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const v4, 0x7f050063

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 14
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->n:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 15
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    iget v0, v1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->n:I

    goto :goto_0

    .line 18
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v5, [I

    const v3, 0x1010435

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 20
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->n:I

    .line 21
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->n:I

    :goto_0
    const v0, 0x7f090006

    .line 23
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 24
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->o:I

    const/4 v0, 0x3

    const v1, 0x7f090008

    .line 25
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->p:I

    const/4 v0, 0x4

    const v1, 0x7f090009

    .line 27
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->q:I

    const/4 v0, 0x2

    const v1, 0x7f090007

    .line 29
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->r:I

    .line 31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->b:Landroid/graphics/Paint;

    .line 33
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->n:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->b:Landroid/graphics/Paint;

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->m:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->b:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->c:Landroid/graphics/Paint;

    .line 38
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->c:Landroid/graphics/Paint;

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->f:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->c:Landroid/graphics/Paint;

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->m:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->e:Landroid/graphics/RectF;

    return-void
.end method

.method public g()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->v:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->x:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->g:Z

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 8
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->y:F

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->t:F

    new-array v5, v2, [F

    aput v0, v5, v4

    add-float/2addr v0, v1

    aput v0, v5, v3

    .line 9
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->v:Landroid/animation/ValueAnimator;

    .line 10
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->p:I

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->v:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$a;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$a;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->v:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->u:F

    new-array v1, v2, [F

    aput v0, v1, v4

    .line 15
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->i:F

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->w:Landroid/animation/ValueAnimator;

    .line 16
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->q:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->w:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->w:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$b;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$b;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 19
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_3
    const/high16 v0, 0x41700000    # 15.0f

    .line 20
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->k:F

    .line 21
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->x:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 22
    :goto_0
    iget v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->r:I

    if-ge v6, v7, :cond_5

    int-to-float v8, v6

    add-int/lit8 v9, v7, -0x1

    int-to-float v9, v9

    mul-float v9, v9, v1

    int-to-float v1, v7

    div-float/2addr v9, v1

    add-float/2addr v9, v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-static {v9, v0, v8, v1}, Lic;->a(FFFF)F

    move-result v1

    new-array v7, v2, [F

    aput v0, v7, v4

    aput v9, v7, v3

    .line 23
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 24
    iget v10, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->o:I

    iget v11, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->r:I

    div-int/2addr v10, v11

    div-int/2addr v10, v2

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    new-instance v10, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    new-instance v10, Lcom/camerasideas/collagemaker/activity/widget/e;

    invoke-direct {v10, p0}, Lcom/camerasideas/collagemaker/activity/widget/e;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v10, v2, [F

    const/high16 v11, 0x44340000    # 720.0f

    mul-float v12, v8, v11

    .line 27
    iget v13, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->r:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v4

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v12, v8

    mul-float v12, v12, v11

    div-float v11, v12, v13

    aput v11, v10, v3

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 28
    iget v11, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->o:I

    iget v13, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->r:I

    div-int/2addr v11, v13

    div-int/2addr v11, v2

    int-to-long v13, v11

    invoke-virtual {v10, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    new-instance v11, Lcom/camerasideas/collagemaker/activity/widget/f;

    invoke-direct {v11, p0}, Lcom/camerasideas/collagemaker/activity/widget/f;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v11, v2, [F

    aput v1, v11, v4

    add-float v13, v1, v9

    sub-float/2addr v13, v0

    aput v13, v11, v3

    .line 31
    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 32
    iget v13, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->o:I

    iget v14, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->r:I

    div-int/2addr v13, v14

    div-int/2addr v13, v2

    int-to-long v13, v13

    invoke-virtual {v11, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    new-instance v13, Lcom/camerasideas/collagemaker/activity/widget/g;

    invoke-direct {v13, p0, v9, v1}, Lcom/camerasideas/collagemaker/activity/widget/g;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;FF)V

    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v1, v2, [F

    .line 35
    iget v9, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->r:I

    int-to-float v9, v9

    div-float/2addr v12, v9

    aput v12, v1, v4

    add-float/2addr v8, v14

    const/high16 v12, 0x44340000    # 720.0f

    mul-float v8, v8, v12

    div-float/2addr v8, v9

    aput v8, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 36
    iget v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->o:I

    iget v9, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->r:I

    div-int/2addr v8, v9

    div-int/2addr v8, v2

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    new-instance v8, Lcom/camerasideas/collagemaker/activity/widget/h;

    invoke-direct {v8, p0}, Lcom/camerasideas/collagemaker/activity/widget/h;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)V

    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 40
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 41
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 42
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->x:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    if-eqz v5, :cond_4

    .line 43
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    const/high16 v1, 0x43b40000    # 360.0f

    move-object v5, v8

    goto/16 :goto_0

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->x:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$c;

    invoke-direct {v1, p0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$c;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->x:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    .line 46
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 47
    :cond_6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$d;

    .line 48
    invoke-interface {v1}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$d;->a()V

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->g:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->g:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->g()V

    :cond_1
    if-eq v0, p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$d;

    .line 5
    invoke-interface {v1, p1}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView$d;->b(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->v:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->v:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->w:Landroid/animation/ValueAnimator;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->x:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 9
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->x:Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->h:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->g()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->i()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->i:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->u:F

    :goto_0
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->j:F

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    move v4, v0

    .line 3
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->g:Z

    if-nez v0, :cond_2

    .line 4
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->f:I

    if-eqz v0, :cond_1

    .line 5
    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->e:Landroid/graphics/RectF;

    iget v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->t:F

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->c:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->e:Landroid/graphics/RectF;

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->t:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->b:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->e:Landroid/graphics/RectF;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->t:F

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->l:F

    add-float v9, v0, v1

    iget v10, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->k:F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->b:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p2, p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p1, p2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 6
    :goto_0
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->d:I

    add-int/2addr p2, p1

    add-int/2addr p1, v0

    .line 7
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2
    :goto_0
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 5
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->e:Landroid/graphics/RectF;

    iget p4, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->m:I

    add-int v0, p1, p4

    int-to-float v0, v0

    add-int v1, p2, p4

    int-to-float v1, v1

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->d:I

    sub-int p1, v2, p1

    sub-int/2addr p1, p4

    int-to-float p1, p1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p4

    int-to-float p2, v2

    invoke-virtual {p3, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->g()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CircularProgressView;->i()V

    :cond_2
    :goto_0
    return-void
.end method
