.class public Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lw2;
.implements Ls2;


# static fields
.field private static final F:Ljava/lang/String;

.field private static final G:[I


# instance fields
.field A:Z

.field private B:I

.field private C:Landroid/view/animation/Animation$AnimationListener;

.field private final D:Landroid/view/animation/Animation;

.field private final E:Landroid/view/animation/Animation;

.field private b:Landroid/view/View;

.field c:Z

.field private d:I

.field private e:F

.field private f:F

.field private final g:Lx2;

.field private final h:Lt2;

.field private final i:[I

.field private final j:[I

.field private k:Z

.field l:I

.field private m:F

.field private n:F

.field private o:Z

.field private p:I

.field private final q:Landroid/view/animation/DecelerateInterpolator;

.field r:Landroidx/swiperefreshlayout/widget/a;

.field private s:I

.field protected t:I

.field protected u:I

.field v:I

.field w:Landroidx/swiperefreshlayout/widget/d;

.field private x:Landroid/view/animation/Animation;

.field private y:Landroid/view/animation/Animation;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101000e

    aput v2, v0, v1

    .line 2
    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->G:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 4
    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i:[I

    new-array v1, v1, [I

    .line 5
    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j:[I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 7
    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:I

    .line 8
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$a;

    invoke-direct {v1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$a;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation$AnimationListener;

    .line 9
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$e;

    invoke-direct {v1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$e;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    .line 10
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$f;

    invoke-direct {v1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$f;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    .line 11
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:I

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 14
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Landroid/view/animation/DecelerateInterpolator;

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 16
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:I

    .line 17
    new-instance v2, Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, -0x50506

    invoke-direct {v2, v3, v4}, Landroidx/swiperefreshlayout/widget/a;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    .line 18
    new-instance v2, Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/swiperefreshlayout/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/d;->g(I)V

    .line 20
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    iget-object v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 v2, 0x42800000    # 64.0f

    .line 24
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->v:I

    int-to-float v1, v1

    .line 25
    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    .line 26
    new-instance v1, Lx2;

    invoke-direct {v1}, Lx2;-><init>()V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lx2;

    .line 27
    new-instance v1, Lt2;

    invoke-direct {v1, p0}, Lt2;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    .line 28
    invoke-virtual {p0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 29
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:I

    neg-int v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f(F)V

    .line 31
    sget-object v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->G:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private c(F)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    const-wide/16 v1, 0xc8

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->A:Z

    .line 4
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    .line 5
    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    .line 6
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->C:Landroid/view/animation/Animation$AnimationListener;

    .line 7
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:I

    .line 8
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 9
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v0, :cond_0

    .line 11
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 12
    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 13
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->D:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    .line 15
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroidx/swiperefreshlayout/widget/d;->f(FF)V

    .line 16
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;

    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 17
    iget v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    .line 18
    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:I

    .line 19
    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->reset()V

    .line 20
    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 23
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 24
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->E:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 25
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/d;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d(Landroid/view/animation/Animation;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e(F)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/d;->b(Z)V

    .line 2
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    div-float v0, p1, v0

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    sub-float/2addr v3, v4

    .line 6
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->v:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    .line 7
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v4

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v3, v7

    float-to-double v7, v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 8
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    double-to-float v3, v7

    mul-float v3, v3, v5

    mul-float v7, v4, v3

    mul-float v7, v7, v5

    .line 9
    iget v8, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    mul-float v4, v4, v0

    add-float/2addr v4, v7

    float-to-int v0, v4

    add-int/2addr v8, v0

    .line 10
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 13
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 14
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 15
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/d;->getAlpha()I

    move-result p1

    const/16 v0, 0x4c

    if-le p1, v0, :cond_2

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->y:Landroid/view/animation/Animation;

    .line 16
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 17
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/d;->getAlpha()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l(II)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->y:Landroid/view/animation/Animation;

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/d;->getAlpha()I

    move-result p1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d(Landroid/view/animation/Animation;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 19
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/d;->getAlpha()I

    move-result p1

    invoke-direct {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l(II)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Landroid/view/animation/Animation;

    :cond_2
    :goto_0
    const p1, 0x3f4ccccd    # 0.8f

    mul-float v0, v2, p1

    .line 20
    iget-object v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v4, v6, p1}, Landroidx/swiperefreshlayout/widget/d;->f(FF)V

    .line 21
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/d;->c(F)V

    const/high16 p1, -0x41800000    # -0.25f

    const v0, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v0

    add-float/2addr v2, p1

    mul-float v3, v3, v5

    add-float/2addr v3, v2

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v3, v3, p1

    .line 22
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/d;->d(F)V

    .line 23
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    sub-int/2addr v8, p1

    invoke-virtual {p0, v8}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k(I)V

    return-void
.end method

.method private h(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    :cond_1
    return-void
.end method

.method private l(II)Landroid/view/animation/Animation;
    .locals 1

    .line 1
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$c;

    invoke-direct {v0, p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$c;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V

    const-wide/16 p1, 0x12c

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 5
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private r(F)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->n:F

    sub-float/2addr p1, v0

    .line 2
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:I

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    if-nez p1, :cond_0

    int-to-float p1, v1

    add-float/2addr v0, p1

    .line 3
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 5
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/d;->setAlpha(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/widget/ListView;

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->canScrollList(I)Z

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    invoke-virtual {v0, p1, p2, p3}, Lt2;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    invoke-virtual {v0, p1, p2}, Lt2;->b(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lt2;->c(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lt2;->e(IIII[I)Z

    move-result p1

    return p1
.end method

.method f(F)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k(I)V

    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lx2;

    invoke-virtual {v0}, Lx2;->a()I

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lt2;->i(I)Z

    move-result v0

    return v0
.end method

.method i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/d;->stop()V

    .line 3
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:Landroidx/swiperefreshlayout/widget/d;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/d;->setAlpha(I)V

    .line 6
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k(I)V

    .line 7
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    invoke-virtual {v0}, Lt2;->j()Z

    move-result v0

    return v0
.end method

.method j(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-static {v0, p1}, Lc3;->o(Landroid/view/View;I)V

    .line 3
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    if-ne v0, v3, :cond_3

    .line 6
    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_4

    return v2

    .line 8
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 9
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r(F)V

    goto :goto_0

    .line 10
    :cond_5
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 11
    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    goto :goto_0

    .line 12
    :cond_6
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k(I)V

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 14
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_7

    return v2

    .line 16
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->n:F

    .line 17
    :goto_0
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    return p1

    :cond_8
    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez p3, :cond_1

    .line 5
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    .line 6
    :cond_1
    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p5

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    .line 11
    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 12
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 13
    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    .line 14
    iget-object p4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    add-int/2addr p1, p2

    add-int/2addr p3, v0

    invoke-virtual {p4, p5, v0, p1, p3}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    .line 10
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    iget p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:I

    .line 11
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->measure(II)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:I

    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    if-ne p2, v0, :cond_2

    .line 16
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    const/4 p1, 0x1

    if-lez p3, :cond_1

    .line 1
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    int-to-float v2, p3

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    float-to-int v0, v0

    sub-int v0, p3, v0

    .line 2
    aput v0, p4, p1

    .line 3
    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    goto :goto_0

    :cond_0
    sub-float/2addr v0, v2

    .line 4
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    .line 5
    aput p3, p4, p1

    .line 6
    :goto_0
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i:[I

    const/4 v1, 0x0

    .line 8
    aget v2, p4, v1

    sub-int/2addr p2, v2

    aget v2, p4, p1

    sub-int/2addr p3, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, p3, v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    aget p2, p4, v1

    aget p3, v0, v1

    add-int/2addr p2, p3

    aput p2, p4, v1

    .line 10
    aget p2, p4, p1

    aget p3, v0, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    :cond_2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    .line 2
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-gez p5, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    .line 5
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lx2;

    invoke-virtual {v0, p1, p2, p3}, Lx2;->c(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 2
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k:Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lx2;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lx2;->d(I)V

    .line 3
    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k:Z

    .line 4
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c(F)V

    .line 6
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:F

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a()Z

    move-result v1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_b

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-gez v0, :cond_3

    .line 5
    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:Ljava/lang/String;

    const-string v0, "Got ACTION_POINTER_DOWN event but have an invalid action index."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    goto :goto_0

    :cond_4
    return v2

    .line 7
    :cond_5
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_6

    .line 8
    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:Ljava/lang/String;

    const-string v0, "Got ACTION_MOVE event but have an invalid active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 9
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 10
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r(F)V

    .line 11
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    if-eqz v0, :cond_c

    .line 12
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 13
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    goto :goto_0

    :cond_7
    return v2

    .line 14
    :cond_8
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 15
    sget-object p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:Ljava/lang/String;

    const-string v0, "Got ACTION_UP event but don\'t have an active pointer id."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 16
    :cond_9
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    if-eqz v1, :cond_a

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 18
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:F

    sub-float/2addr p1, v0

    mul-float p1, p1, v3

    .line 19
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 20
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c(F)V

    :cond_a
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    return v2

    .line 22
    :cond_b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 23
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    :cond_c
    :goto_0
    return v1

    :cond_d
    :goto_1
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lc3;->l(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method s(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$b;

    invoke-direct {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$b;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/a;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 5
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroidx/swiperefreshlayout/widget/a;

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    invoke-virtual {v0, p1}, Lt2;->k(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lt2;->l(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:Lt2;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lt2;->m(I)V

    return-void
.end method
