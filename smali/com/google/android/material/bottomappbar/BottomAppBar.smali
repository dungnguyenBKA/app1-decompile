.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# static fields
.field public static final synthetic e0:I


# instance fields
.field private final Q:I

.field private final R:Lmy;

.field private S:Landroid/animation/Animator;

.field private T:I

.field private U:Z

.field private V:I

.field private W:Z

.field private a0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

.field private b0:I

.field c0:Landroid/animation/AnimatorListenerAdapter;

.field d0:Lsx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsx<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030056

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const v0, 0x7f0f0264

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lmy;

    invoke-direct {p1}, Lmy;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->V:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Z

    .line 6
    new-instance v2, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->c0:Landroid/animation/AnimatorListenerAdapter;

    .line 7
    new-instance v2, Lcom/google/android/material/bottomappbar/BottomAppBar$b;

    invoke-direct {v2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$b;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->d0:Lsx;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 9
    sget-object v5, Lcom/google/android/material/R$styleable;->c:[I

    new-array v8, v0, [I

    const v7, 0x7f0f0264

    move-object v3, v2

    move-object v4, p2

    move v6, p3

    .line 10
    invoke-static/range {v3 .. v8}, Lcom/google/android/material/internal/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-static {v2, p2, v0}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 12
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v3, 0x4

    .line 13
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x5

    .line 14
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x6

    .line 15
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    .line 16
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:I

    const/4 v7, 0x3

    .line 17
    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    const/4 v7, 0x7

    .line 18
    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Z

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0602ab

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->Q:I

    .line 21
    new-instance p2, Lcom/google/android/material/bottomappbar/d;

    invoke-direct {p2, v3, v4, v5}, Lcom/google/android/material/bottomappbar/d;-><init>(FFF)V

    .line 22
    new-instance v0, Lqy$b;

    invoke-direct {v0}, Lqy$b;-><init>()V

    .line 23
    invoke-virtual {v0, p2}, Lqy$b;->v(Lly;)Lqy$b;

    invoke-virtual {v0}, Lqy$b;->m()Lqy;

    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lmy;->e(Lqy;)V

    .line 25
    invoke-virtual {p1, v6}, Lmy;->M(I)V

    .line 26
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Lmy;->I(Landroid/graphics/Paint$Style;)V

    .line 27
    invoke-virtual {p1, v2}, Lmy;->A(Landroid/content/Context;)V

    int-to-float p2, v1

    .line 28
    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setElevation(F)V

    .line 29
    invoke-static {p1, p3}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 30
    sget p2, Lc3;->g:I

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    new-instance p1, Lcom/google/android/material/bottomappbar/BottomAppBar$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$c;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-static {p0, p1}, Lcom/google/android/material/internal/j;->a(Landroid/view/View;Lcom/google/android/material/internal/j$b;)V

    return-void
.end method

.method static synthetic d0(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:I

    return p0
.end method

.method static synthetic e0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Z

    return p0
.end method

.method static f0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0()Landroid/view/View;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic g0(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u0()F

    move-result p0

    return p0
.end method

.method static h0(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b0:I

    return p0
.end method

.method static synthetic i0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j0(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->y0()V

    return-void
.end method

.method static k0(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lc3;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->x0()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s0()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v2

    const-string v6, "alpha"

    .line 9
    invoke-static {v1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    .line 11
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t0(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    .line 12
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_4

    new-array v5, v3, [F

    const/4 v7, 0x0

    aput v7, v5, v2

    .line 13
    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 14
    new-instance v6, Lcom/google/android/material/bottomappbar/b;

    invoke-direct {v6, p0, v1, p1, p2}, Lcom/google/android/material/bottomappbar/b;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0x96

    .line 16
    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v5, p2, v2

    aput-object v4, p2, v3

    .line 17
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_5

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_5
    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 22
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 23
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    .line 24
    new-instance p2, Lcom/google/android/material/bottomappbar/a;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/a;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_1
    return-void
.end method

.method static synthetic l0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lmy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    return-object p0
.end method

.method static synthetic m0(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w0()Lcom/google/android/material/bottomappbar/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n0(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->b0:I

    return p1
.end method

.method static o0(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->V:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->V:I

    return-void
.end method

.method static p0(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->V:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->V:I

    return-void
.end method

.method static synthetic q0(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    return-object p1
.end method

.method private r0()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v3, :cond_1

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method private s0()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private u0()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:I

    .line 2
    sget v1, Lc3;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v2, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->Q:I

    sub-int/2addr v0, v3

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    :cond_1
    mul-int v0, v0, v2

    int-to-float v0, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private w0()Lcom/google/android/material/bottomappbar/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    .line 2
    invoke-virtual {v0}, Lmy;->v()Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->i()Lly;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/d;

    return-object v0
.end method

.method private x0()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0()Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private y0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w0()Lcom/google/android/material/bottomappbar/d;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u0()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/d;->g(F)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r0()Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->x0()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lmy;->G(F)V

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w0()Lcom/google/android/material/bottomappbar/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/d;->b()F

    move-result v1

    neg-float v1, v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u0()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public X(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public Z(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public a()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    invoke-static {p0, v0}, Lny;->b(Landroid/view/View;Lmy;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->y0()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s0()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object p1

    if-eqz p1, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->x0()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t0(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p2

    int-to-float p2, p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 10
    :cond_2
    iget p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:I

    iget-boolean p3, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Z

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t0(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p2

    int-to-float p2, p2

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->d:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:I

    .line 6
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->e:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->d:I

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:Z

    iput-boolean v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$SavedState;->e:Z

    return-object v1
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    invoke-virtual {v0, p1}, Lmy;->E(F)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    .line 3
    invoke-virtual {p1}, Lmy;->u()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    invoke-virtual {v0}, Lmy;->t()I

    move-result v0

    sub-int/2addr p1, v0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->a0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->D(Landroid/view/View;I)V

    return-void
.end method

.method protected t0(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 8

    .line 1
    sget v0, Lc3;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 4
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 5
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    iget v6, v6, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    const v7, 0x800007

    and-int/2addr v6, v7

    const v7, 0x800003

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_4

    .line 9
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p1

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    :goto_5
    sub-int/2addr v3, p1

    if-ne p2, v2, :cond_7

    if-eqz p3, :cond_7

    move v1, v3

    :cond_7
    return v1
.end method

.method public v0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->U:Z

    return v0
.end method

.method z0(I)Z
    .locals 1

    int-to-float p1, p1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w0()Lcom/google/android/material/bottomappbar/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/d;->c()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w0()Lcom/google/android/material/bottomappbar/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/d;->f(F)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Lmy;

    invoke-virtual {p1}, Lmy;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
