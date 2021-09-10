.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lcom/google/android/material/appbar/HeaderBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Lcom/google/android/material/appbar/HeaderBehavior<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private j:I

.field private k:I

.field private l:Landroid/animation/ValueAnimator;

.field private m:I

.field private n:Z

.field private o:F

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    return-void
.end method

.method static synthetic M(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->j:I

    return p0
.end method

.method private N(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->H()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float v0, v0, v1

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    goto :goto_0

    :cond_0
    int-to-float p4, v0

    .line 4
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->H()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    .line 10
    sget-object v2, Ljx;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/appbar/b;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/appbar/b;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 15
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method

.method private static O(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Ls2;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ListView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private Y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->H()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v1, :cond_2

    .line 3
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 7
    iget v8, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    .line 8
    invoke-static {v8, v4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->O(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v8

    .line 10
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v5

    :cond_0
    neg-int v5, v0

    if-gt v6, v5, :cond_1

    if-lt v7, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ltz v3, :cond_9

    .line 11
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 13
    iget v6, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    and-int/lit8 v7, v6, 0x11

    const/16 v8, 0x11

    if-ne v7, v8, :cond_9

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    neg-int v7, v7

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    neg-int v8, v8

    .line 16
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_3

    .line 17
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()I

    move-result v3

    add-int/2addr v8, v3

    :cond_3
    const/4 v3, 0x2

    .line 18
    invoke-static {v6, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->O(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 19
    sget v9, Lc3;->g:I

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    add-int/2addr v8, v1

    goto :goto_2

    :cond_4
    const/4 v9, 0x5

    .line 21
    invoke-static {v6, v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->O(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 22
    sget v9, Lc3;->g:I

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    add-int/2addr v1, v8

    if-ge v0, v1, :cond_5

    move v7, v1

    goto :goto_2

    :cond_5
    move v8, v1

    .line 24
    :cond_6
    :goto_2
    invoke-static {v6, v4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->O(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v1

    .line 26
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v1

    :cond_7
    add-int v1, v8, v7

    .line 27
    div-int/2addr v1, v3

    if-ge v0, v1, :cond_8

    move v7, v8

    .line 28
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->h()I

    move-result v0

    neg-int v0, v0

    invoke-static {v7, v0, v2}, Landroidx/core/app/b;->o(III)I

    move-result v0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->N(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    :cond_9
    return-void
.end method

.method private Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v0, v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v0, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_8

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 6
    iget v0, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    and-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 7
    sget v1, Lc3;->g:I

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    if-lez p4, :cond_2

    and-int/lit8 p4, v0, 0xc

    if-eqz p4, :cond_2

    neg-int p3, p3

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_3

    goto :goto_2

    :cond_2
    and-int/lit8 p4, v0, 0x2

    if-eqz p4, :cond_3

    neg-int p3, p3

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_3

    :goto_2
    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    .line 11
    :goto_3
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->j()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->r(Landroid/view/View;)Z

    move-result p3

    .line 13
    :cond_4
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->q(Z)Z

    move-result p3

    if-nez p5, :cond_7

    if-eqz p3, :cond_8

    .line 14
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_4
    if-ge p4, p3, :cond_6

    .line 16
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 18
    invoke-virtual {p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p5

    .line 19
    instance-of v0, p5, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v0, :cond_5

    .line 20
    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {p5}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->H()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v2, :cond_8

    .line 21
    :cond_7
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    :cond_8
    return-void
.end method


# virtual methods
.method E(Landroid/view/View;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method F(Landroid/view/View;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->d()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method G(Landroid/view/View;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->h()I

    move-result p1

    return p1
.end method

.method H()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->B()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method I(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->P(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->r(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->q(Z)Z

    :cond_0
    return-void
.end method

.method L(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7

    .line 1
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->H()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    if-lt p2, p4, :cond_6

    if-gt p2, p5, :cond_6

    .line 3
    invoke-static {p3, p4, p5}, Landroidx/core/app/b;->o(III)I

    move-result v3

    if-eq p2, v3, :cond_7

    .line 4
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->i()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 6
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_3

    .line 7
    invoke-virtual {v2, p5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 9
    iget-object v5, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->b:Landroid/view/animation/Interpolator;

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt p3, v6, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt p3, v6, :cond_2

    if-eqz v5, :cond_3

    .line 11
    iget p4, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, v6

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p5, v4

    add-int/2addr v0, p5

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 13
    sget p4, Lc3;->g:I

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getMinimumHeight()I

    move-result p4

    sub-int/2addr v0, p4

    .line 15
    :cond_0
    sget p4, Lc3;->g:I

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 17
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->g()I

    move-result p4

    sub-int/2addr v0, p4

    :cond_1
    if-lez v0, :cond_3

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p4, v0

    int-to-float p3, p3

    div-float/2addr p3, p4

    .line 19
    invoke-interface {v5, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    mul-float p3, p3, p4

    .line 20
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result p4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p5

    add-int/2addr p5, p3

    mul-int p5, p5, p4

    goto :goto_1

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    move p5, v3

    .line 22
    :goto_1
    invoke-virtual {p0, p5}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->D(I)Z

    move-result p3

    sub-int p4, p2, v3

    sub-int p5, v3, p5

    .line 23
    iput p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->j:I

    if-nez p3, :cond_4

    .line 24
    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->i()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 25
    invoke-virtual {p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;)V

    .line 26
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->B()I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->k(I)V

    if-ge v3, p2, :cond_5

    const/4 p2, -0x1

    const/4 v4, -0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    move v0, p4

    goto :goto_3

    .line 28
    :cond_6
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->j:I

    :cond_7
    :goto_3
    return v0
.end method

.method public Q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p3

    .line 3
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    and-int/lit8 v3, p3, 0x8

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    .line 6
    iget-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:Z

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getMinimumHeight()I

    move-result p3

    .line 8
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()I

    move-result v3

    add-int/2addr p3, v3

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:F

    mul-float p3, p3, v3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    :goto_0
    add-int/2addr p3, v0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->K(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_6

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->h()I

    move-result p3

    neg-int p3, p3

    if-eqz v0, :cond_3

    .line 12
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->N(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->K(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_2

    :cond_4
    and-int/2addr p3, v2

    if-eqz p3, :cond_6

    if-eqz v0, :cond_5

    .line 14
    invoke-direct {p0, p1, p2, v1, v4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->N(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IF)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/appbar/HeaderBehavior;->K(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 16
    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->n()V

    const/4 p3, -0x1

    .line 17
    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->B()I

    move-result p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->h()I

    move-result v0

    neg-int v0, v0

    invoke-static {p3, v0, v1}, Landroidx/core/app/b;->o(III)I

    move-result p3

    .line 19
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->D(I)Z

    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->B()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 21
    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->B()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->k(I)V

    return v2
.end method

.method public R(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 2
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-ne p5, v1, :cond_0

    .line 3
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p6

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->C(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public S(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    if-gez p5, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->h()I

    move-result p4

    neg-int p4, p4

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->c()I

    move-result p7

    add-int/2addr p7, p4

    move v4, p4

    move v5, p7

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->h()I

    move-result p4

    neg-int p4, p4

    const/4 p7, 0x0

    move v4, p4

    const/4 v5, 0x0

    :goto_0
    if-eq v4, v5, :cond_1

    const/4 p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->J(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p4

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->r(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->q(Z)Z

    :cond_2
    return-void
.end method

.method public T(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    if-gez p7, :cond_0

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->d()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/HeaderBehavior;->J(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p9, p3

    :cond_0
    return-void
.end method

.method public U(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-eqz p1, :cond_0

    .line 2
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 3
    invoke-virtual {p3}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    .line 4
    iget p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->d:I

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    .line 5
    iget p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->e:F

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:F

    .line 6
    iget-boolean p1, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->f:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:Z

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    :goto_0
    return-void
.end method

.method public V(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1
    sget-object p1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->B()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 4
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v0

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    .line 7
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iput v3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->d:I

    .line 9
    sget p1, Lc3;->g:I

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    .line 11
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->f:Z

    int-to-float p1, v5

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->e:F

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public W(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->j()Z

    move-result p4

    if-nez p4, :cond_3

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->h()I

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :cond_3
    :goto_2
    if-eqz p5, :cond_4

    .line 4
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->l:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 7
    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I

    return p5
.end method

.method public X(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->r(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->q(Z)Z

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->Q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->R(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic p(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->S(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->T(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public bridge synthetic u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->U(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic v(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->V(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->W(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->X(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method
