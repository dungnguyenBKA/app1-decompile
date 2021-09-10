.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$h;,
        Landroidx/viewpager/widget/ViewPager$LayoutParams;,
        Landroidx/viewpager/widget/ViewPager$e;,
        Landroidx/viewpager/widget/ViewPager$SavedState;,
        Landroidx/viewpager/widget/ViewPager$c;,
        Landroidx/viewpager/widget/ViewPager$f;,
        Landroidx/viewpager/widget/ViewPager$g;,
        Landroidx/viewpager/widget/ViewPager$d;
    }
.end annotation


# static fields
.field static final Q:[I

.field private static final R:Landroid/view/animation/Interpolator;

.field private static final S:Landroidx/viewpager/widget/ViewPager$h;


# instance fields
.field private A:Landroid/view/VelocityTracker;

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:Landroid/widget/EdgeEffect;

.field private H:Landroid/widget/EdgeEffect;

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$g;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroidx/viewpager/widget/ViewPager$g;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Ljava/lang/Runnable;

.field private P:I

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/ViewPager$d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/viewpager/widget/ViewPager$d;

.field private final d:Landroid/graphics/Rect;

.field e:I

.field private f:Landroid/os/Parcelable;

.field private g:Landroid/widget/Scroller;

.field private h:Z

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->Q:[I

    .line 2
    new-instance v0, Landroidx/viewpager/widget/ViewPager$a;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$a;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->R:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Landroidx/viewpager/widget/ViewPager$h;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$h;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->S:Landroidx/viewpager/widget/ViewPager$h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Landroidx/viewpager/widget/ViewPager$d;

    invoke-direct {p1}, Landroidx/viewpager/widget/ViewPager$d;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Landroidx/viewpager/widget/ViewPager$d;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/graphics/Rect;

    const p1, -0x800001

    .line 5
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->k:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 6
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->l:F

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    const/4 p2, -0x1

    .line 8
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    .line 9
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->I:Z

    .line 10
    new-instance p2, Landroidx/viewpager/widget/ViewPager$b;

    invoke-direct {p2, p0}, Landroidx/viewpager/widget/ViewPager$b;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->O:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    .line 12
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 p2, 0x40000

    .line 13
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 16
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Landroidx/viewpager/widget/ViewPager;->R:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    .line 17
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 18
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 19
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->u:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 20
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->B:I

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->C:I

    .line 22
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->G:Landroid/widget/EdgeEffect;

    .line 23
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroid/widget/EdgeEffect;

    const/high16 p2, 0x41c80000    # 25.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 24
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->D:I

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 25
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->E:I

    const/high16 p2, 0x41800000    # 16.0f

    mul-float v1, v1, p2

    float-to-int p2, v1

    .line 26
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->s:I

    .line 27
    new-instance p2, Landroidx/viewpager/widget/ViewPager$e;

    invoke-direct {p2, p0}, Landroidx/viewpager/widget/ViewPager$e;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, p2}, Lc3;->u(Landroid/view/View;Ln2;)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 30
    :cond_0
    new-instance p1, Landroidx/viewpager/widget/b;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/b;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, p1}, Lc3;->x(Landroid/view/View;Ly2;)V

    return-void
.end method

.method private A(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->o:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->o:Z

    :cond_0
    return-void
.end method

.method private e(Z)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->A(Z)V

    .line 3
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    .line 7
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 8
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v2, v4, :cond_1

    if-eq v3, v5, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v4, v2, :cond_2

    .line 10
    invoke-direct {p0, v4}, Landroidx/viewpager/widget/ViewPager;->p(I)Z

    .line 11
    :cond_2
    :goto_1
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 12
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$d;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->O:Ljava/lang/Runnable;

    .line 15
    sget v0, Lc3;->g:I

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->O:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_2
    return-void
.end method

.method private f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$g;->c(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->M:Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$g;->c(I)V

    :cond_2
    return-void
.end method

.method private g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 8
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 9
    check-cast p2, Landroid/view/ViewGroup;

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 11
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 12
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 13
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 14
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private h()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private k()Landroidx/viewpager/widget/ViewPager$d;
    .locals 13

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-lez v0, :cond_1

    int-to-float v4, v3

    int-to-float v0, v0

    div-float/2addr v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v8, v5

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 3
    :goto_2
    iget-object v11, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 4
    iget-object v11, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$d;

    if-nez v9, :cond_3

    .line 5
    iget v12, v11, Landroidx/viewpager/widget/ViewPager$d;->a:I

    add-int/2addr v0, v6

    if-ne v12, v0, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->c:Landroidx/viewpager/widget/ViewPager$d;

    add-float/2addr v10, v1

    add-float/2addr v10, v4

    .line 7
    iput v10, v2, Landroidx/viewpager/widget/ViewPager$d;->b:F

    .line 8
    iput v0, v2, Landroidx/viewpager/widget/ViewPager$d;->a:I

    .line 9
    throw v5

    .line 10
    :cond_3
    :goto_3
    iget v10, v11, Landroidx/viewpager/widget/ViewPager$d;->b:F

    add-float v0, v1, v10

    add-float/2addr v0, v4

    if-nez v9, :cond_5

    cmpl-float v9, v2, v10

    if-ltz v9, :cond_4

    goto :goto_4

    :cond_4
    return-object v8

    :cond_5
    :goto_4
    cmpg-float v0, v2, v0

    if-ltz v0, :cond_7

    .line 11
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v7, v0, :cond_6

    goto :goto_5

    .line 12
    :cond_6
    iget v0, v11, Landroidx/viewpager/widget/ViewPager$d;->a:I

    add-int/lit8 v7, v7, 0x1

    move-object v8, v11

    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    :goto_5
    return-object v11

    :cond_8
    return-object v8
.end method

.method private n(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->v:F

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    .line 6
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private p(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->I:Z

    if-eqz p1, :cond_0

    return v3

    .line 3
    :cond_0
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->J:Z

    .line 4
    invoke-virtual {p0, v3, v2, v3}, Landroidx/viewpager/widget/ViewPager;->m(IFI)V

    .line 5
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->J:Z

    if-eqz p1, :cond_1

    return v3

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->k()Landroidx/viewpager/widget/ViewPager$d;

    move-result-object v0

    .line 8
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()I

    move-result v4

    add-int/lit8 v5, v4, 0x0

    int-to-float v6, v3

    int-to-float v4, v4

    div-float/2addr v6, v4

    .line 9
    iget v7, v0, Landroidx/viewpager/widget/ViewPager$d;->a:I

    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 10
    iget v0, v0, Landroidx/viewpager/widget/ViewPager$d;->b:F

    sub-float/2addr p1, v0

    add-float/2addr v2, v6

    div-float/2addr p1, v2

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 11
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->J:Z

    .line 12
    invoke-virtual {p0, v7, p1, v0}, Landroidx/viewpager/widget/ViewPager;->m(IFI)V

    .line 13
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->J:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private q(F)Z
    .locals 2

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->v:F

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()I

    .line 4
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$d;

    .line 5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager$d;

    .line 6
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$d;->a:I

    .line 7
    iget p1, v0, Landroidx/viewpager/widget/ViewPager$d;->a:I

    const/4 p1, 0x0

    throw p1
.end method

.method private u(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private v()Z
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->z:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->q:Z

    .line 3
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->r:Z

    .line 4
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->A:Landroid/view/VelocityTracker;

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 8
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private w(IZIZ)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->l(I)Landroidx/viewpager/widget/ViewPager$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()I

    move-result v2

    int-to-float v2, v2

    .line 3
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->k:F

    iget v0, v0, Landroidx/viewpager/widget/ViewPager$d;->b:F

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->l:F

    .line 4
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 5
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_7

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->A(Z)V

    goto/16 :goto_4

    .line 8
    :cond_1
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 9
    iget-boolean p2, p0, Landroidx/viewpager/widget/ViewPager;->h:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    move-result p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getStartX()I

    move-result p2

    .line 10
    :goto_2
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 11
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->A(Z)V

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    :goto_3
    move v4, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    sub-int v6, v0, v4

    rsub-int/lit8 v7, v5, 0x0

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    .line 14
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 15
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 16
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->z(I)V

    goto :goto_4

    .line 17
    :cond_5
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->A(Z)V

    const/4 p2, 0x2

    .line 18
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->z(I)V

    .line 19
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()I

    move-result p2

    .line 20
    div-int/lit8 v0, p2, 0x2

    .line 21
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr p2, v2

    const v2, 0x3ef1463b

    mul-float p2, p2, v2

    float-to-double v2, p2

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p2, v2

    mul-float p2, p2, v0

    add-float/2addr p2, v0

    .line 23
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_6

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 24
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    const/16 p3, 0x258

    .line 25
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 26
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->h:Z

    .line 27
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 28
    sget p2, Lc3;->g:I

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :goto_4
    if-eqz p4, :cond_9

    .line 30
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->f(I)V

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    .line 31
    throw p1

    :cond_7
    if-eqz p4, :cond_8

    .line 32
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->f(I)V

    .line 33
    :cond_8
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 35
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->p(I)Z

    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public a(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->N:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->N:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->N:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->j(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$d;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->j(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$d;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3
    :cond_0
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 4
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 6
    const-class v3, Landroidx/viewpager/widget/ViewPager$c;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    .line 7
    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    .line 8
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    .line 9
    iput-boolean v3, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->c:Z

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public b(Landroidx/viewpager/widget/ViewPager$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_4

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "arrowScroll tried to find focus based on non-child current focused view "

    .line 9
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 11
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v0, v2

    .line 12
    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v2, :cond_8

    if-eq v2, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 13
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 14
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v3, :cond_5

    .line 15
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    move-result v0

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_6
    if-ne p1, v4, :cond_a

    .line 17
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 18
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Landroidx/viewpager/widget/ViewPager;->g(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v4, :cond_7

    goto :goto_5

    .line 19
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eq p1, v5, :cond_9

    if-ne p1, v1, :cond_a

    .line 20
    :cond_9
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    move-result v3

    :cond_a
    :goto_5
    if-eqz v3, :cond_b

    .line 21
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_b
    return v3
.end method

.method public canScrollHorizontally(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->h:Z

    .line 2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 5
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 6
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 8
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->p(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 11
    :cond_1
    sget v0, Lc3;->g:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    .line 13
    :cond_2
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    return-void
.end method

.method protected d(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 11
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 7
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x42

    .line 9
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    move-result p1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 12
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->j(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$d;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 4
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 9
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->k:F

    int-to-float v6, v3

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 12
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->G:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 18
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->l:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 20
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 21
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->H:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 23
    sget p1, Lc3;->g:I

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    return v0
.end method

.method j(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$d;
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$d;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method l(I)Landroidx/viewpager/widget/ViewPager$d;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$d;

    .line 3
    iget v2, v1, Landroidx/viewpager/widget/ViewPager$d;->a:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected m(IFI)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->K:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    .line 7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 9
    iget-boolean v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    iget v9, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->b:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    sub-int v9, v5, v4

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    .line 15
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_4

    .line 16
    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v3, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_7

    .line 19
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v3, :cond_6

    .line 20
    invoke-interface {v3, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$g;->a(IFI)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 21
    :cond_7
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->M:Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v0, :cond_8

    .line 22
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$g;->a(IFI)V

    .line 23
    :cond_8
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->J:Z

    return-void
.end method

.method o()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->A(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, v6, Landroidx/viewpager/widget/ViewPager;->q:Z

    if-eqz v1, :cond_1

    return v9

    .line 3
    :cond_1
    iget-boolean v1, v6, Landroidx/viewpager/widget/ViewPager;->r:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_e

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    .line 4
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->n(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 5
    :cond_4
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->z:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_3

    .line 6
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 7
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 8
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->v:F

    sub-float v11, v10, v1

    .line 9
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 10
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 11
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->y:F

    sub-float v0, v13, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v0, v11, v15

    if-eqz v0, :cond_9

    .line 12
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->v:F

    .line 13
    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->t:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    cmpl-float v1, v11, v15

    if-gtz v1, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, v6, Landroidx/viewpager/widget/ViewPager;->t:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    cmpg-float v0, v11, v15

    if-gez v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_9

    const/4 v2, 0x0

    float-to-int v3, v11

    float-to-int v4, v10

    float-to-int v5, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 14
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15
    iput v10, v6, Landroidx/viewpager/widget/ViewPager;->v:F

    .line 16
    iput v13, v6, Landroidx/viewpager/widget/ViewPager;->w:F

    .line 17
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->r:Z

    return v8

    .line 18
    :cond_9
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->u:I

    int-to-float v0, v0

    cmpl-float v1, v12, v0

    if-lez v1, :cond_b

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v12, v12, v1

    cmpl-float v1, v12, v14

    if-lez v1, :cond_b

    .line 19
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->q:Z

    .line 20
    invoke-direct {v6, v9}, Landroidx/viewpager/widget/ViewPager;->u(Z)V

    .line 21
    invoke-virtual {v6, v9}, Landroidx/viewpager/widget/ViewPager;->z(I)V

    cmpl-float v0, v11, v15

    if-lez v0, :cond_a

    .line 22
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->x:F

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->u:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_a
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->x:F

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->u:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_1
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->v:F

    .line 23
    iput v13, v6, Landroidx/viewpager/widget/ViewPager;->w:F

    .line 24
    invoke-direct {v6, v9}, Landroidx/viewpager/widget/ViewPager;->A(Z)V

    goto :goto_2

    :cond_b
    cmpl-float v0, v14, v0

    if-lez v0, :cond_c

    .line 25
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->r:Z

    .line 26
    :cond_c
    :goto_2
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->q:Z

    if-nez v0, :cond_d

    goto :goto_3

    .line 27
    :cond_d
    invoke-direct {v6, v10}, Landroidx/viewpager/widget/ViewPager;->q(F)Z

    const/4 v0, 0x0

    throw v0

    .line 28
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->x:F

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->v:F

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->y:F

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->w:F

    .line 30
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->z:I

    .line 31
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->r:Z

    .line 32
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->h:Z

    .line 33
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 34
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->P:I

    if-ne v0, v1, :cond_f

    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    .line 35
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->E:I

    if-le v0, v1, :cond_f

    .line 36
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 38
    iput-boolean v9, v6, Landroidx/viewpager/widget/ViewPager;->q:Z

    .line 39
    invoke-direct {v6, v9}, Landroidx/viewpager/widget/ViewPager;->u(Z)V

    .line 40
    invoke-virtual {v6, v9}, Landroidx/viewpager/widget/ViewPager;->z(I)V

    goto :goto_3

    .line 41
    :cond_f
    invoke-direct {v6, v8}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 42
    iput-boolean v8, v6, Landroidx/viewpager/widget/ViewPager;->q:Z

    .line 43
    :goto_3
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->A:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    .line 44
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/viewpager/widget/ViewPager;->A:Landroid/view/VelocityTracker;

    .line 45
    :cond_10
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->A:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 46
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->q:Z

    return v0

    .line 47
    :cond_11
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->v()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 7
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 10
    iget-boolean v14, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    if-eqz v14, :cond_6

    .line 11
    iget v12, v12, Landroidx/viewpager/widget/ViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 17
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    .line 20
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 21
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v5

    .line 22
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_9

    .line 23
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v12, :cond_8

    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 26
    iget-boolean v6, v6, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    if-nez v6, :cond_8

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->j(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$d;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 27
    :cond_9
    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->i:I

    sub-int/2addr v3, v7

    .line 28
    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->j:I

    .line 29
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->K:I

    .line 30
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->I:Z

    if-eqz v1, :cond_a

    .line 31
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->e:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/ViewPager;->w(IZIZ)V

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    .line 32
    :goto_6
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->I:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 2
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 5
    div-int/lit8 p2, p1, 0xa

    .line 6
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->s:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v3, :cond_b

    .line 13
    iget-boolean v7, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_b

    .line 14
    iget v7, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_5

    :cond_5
    :goto_4
    const/high16 v9, -0x80000000

    .line 15
    :goto_5
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_6

    :cond_6
    move v10, p1

    :goto_6
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_7

    :cond_7
    move v10, p1

    .line 16
    :goto_7
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_8

    :cond_8
    move v3, p2

    goto :goto_8

    :cond_9
    move v3, p2

    move v5, v9

    .line 17
    :goto_8
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 18
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 19
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_9

    :cond_a
    if-eqz v4, :cond_b

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    .line 24
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 25
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 26
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_a
    if-ge v0, p2, :cond_f

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v2, :cond_d

    .line 31
    iget-boolean v4, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p1

    .line 32
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 33
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    move v1, p2

    const/4 p1, 0x1

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    const/4 p1, -0x1

    :goto_0
    if-eq p2, v1, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->j(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$d;

    :cond_1
    add-int/2addr p2, p1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager$SavedState;->e:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->f:Landroid/os/Parcelable;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/viewpager/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    iput v0, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->d:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_3

    const/4 p2, 0x0

    if-lez p3, :cond_1

    .line 2
    iget-object p4, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    iget-object p4, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->isFinished()Z

    move-result p4

    if-nez p4, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/widget/Scroller;

    .line 5
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    .line 6
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->h()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    add-int/2addr p1, p2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    add-int/2addr p3, p2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    .line 11
    :cond_1
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->l(I)Landroidx/viewpager/widget/ViewPager$d;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 12
    iget p3, p3, Landroidx/viewpager/widget/ViewPager$d;->b:F

    iget p4, p0, Landroidx/viewpager/widget/ViewPager;->l:F

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    mul-float p3, p3, p1

    float-to-int p1, p3

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    if-eq p1, p3, :cond_3

    .line 15
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->F:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_1
    return v1
.end method

.method r()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    if-eq v0, v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->l(I)Landroidx/viewpager/widget/ViewPager$d;

    .line 3
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->e:I

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public s(Landroidx/viewpager/widget/ViewPager$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->N:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public t(Landroidx/viewpager/widget/ViewPager$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

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

.method public x(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->A(Z)V

    return-void
.end method

.method y(Landroidx/viewpager/widget/ViewPager$g;)Landroidx/viewpager/widget/ViewPager$g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->M:Landroidx/viewpager/widget/ViewPager$g;

    .line 2
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->M:Landroidx/viewpager/widget/ViewPager$g;

    return-object v0
.end method

.method z(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->P:I

    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->L:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$g;->b(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->M:Landroidx/viewpager/widget/ViewPager$g;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$g;->b(I)V

    :cond_3
    return-void
.end method
