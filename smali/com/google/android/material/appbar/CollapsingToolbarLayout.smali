.class public Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$b;,
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:I

.field private d:Landroidx/appcompat/widget/Toolbar;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Landroid/graphics/Rect;

.field final l:Lcom/google/android/material/internal/a;

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;

.field p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:Z

.field private s:Landroid/animation/ValueAnimator;

.field private t:J

.field private u:I

.field private v:Lcom/google/android/material/appbar/AppBarLayout$c;

.field w:I

.field x:Ll3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b:Z

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:I

    .line 6
    new-instance v2, Lcom/google/android/material/internal/a;

    invoke-direct {v2, p0}, Lcom/google/android/material/internal/a;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    .line 7
    sget-object v3, Ljx;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/a;->J(Landroid/animation/TimeInterpolator;)V

    .line 8
    sget-object v6, Lcom/google/android/material/R$styleable;->i:[I

    const/4 v3, 0x0

    new-array v9, v3, [I

    const v8, 0x7f0f0251

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    .line 9
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/internal/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    const p3, 0x800053

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 11
    invoke-virtual {v2, p2}, Lcom/google/android/material/internal/a;->B(I)V

    const p2, 0x800013

    .line 12
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 13
    invoke-virtual {v2, p2}, Lcom/google/android/material/internal/a;->v(I)V

    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:I

    const/4 p2, 0x7

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:I

    :cond_0
    const/4 p2, 0x6

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 18
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:I

    :cond_1
    const/16 p2, 0x8

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 20
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:I

    :cond_2
    const/4 p2, 0x5

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 22
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:I

    :cond_3
    const/16 p2, 0xe

    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    const/16 p2, 0xd

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f(Ljava/lang/CharSequence;)V

    const p2, 0x7f0f016a

    .line 25
    invoke-virtual {v2, p2}, Lcom/google/android/material/internal/a;->z(I)V

    const p2, 0x7f0f0150

    .line 26
    invoke-virtual {v2, p2}, Lcom/google/android/material/internal/a;->t(I)V

    const/16 p2, 0x9

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 28
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 29
    invoke-virtual {v2, p2}, Lcom/google/android/material/internal/a;->z(I)V

    .line 30
    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 31
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 32
    invoke-virtual {v2, p2}, Lcom/google/android/material/internal/a;->t(I)V

    :cond_5
    const/16 p2, 0xb

    .line 33
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:I

    const/16 p2, 0xa

    const/16 p3, 0x258

    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->t:J

    const/4 p2, 0x2

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 36
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eq p3, p2, :cond_9

    if-eqz p3, :cond_6

    .line 37
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    if-eqz p2, :cond_7

    .line 38
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_7
    move-object p2, v2

    :goto_0
    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_8

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual {p2, v3, v3, p3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 41
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 42
    :cond_8
    sget p2, Lc3;->g:I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_9
    const/16 p2, 0xc

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 45
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    if-eq p3, p2, :cond_f

    if-eqz p3, :cond_a

    .line 46
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    if-eqz p2, :cond_b

    .line 47
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_b
    iput-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    .line 48
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 49
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 50
    :cond_c
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    .line 51
    sget p3, Lc3;->g:I

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p3

    .line 53
    invoke-static {p2, p3}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;I)Z

    .line 54
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    if-nez p3, :cond_d

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 55
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 56
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    iget p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 57
    :cond_e
    sget p2, Lc3;->g:I

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_f
    const/16 p2, 0xf

    .line 59
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:I

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 62
    new-instance p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-static {p0, p1}, Lc3;->x(Landroid/view/View;Ly2;)V

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Landroid/view/View;

    .line 4
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_2

    .line 7
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_1

    .line 8
    move-object v1, v3

    check-cast v1, Landroid/view/View;

    .line 9
    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    .line 10
    :cond_2
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Landroid/view/View;

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    const/4 v3, 0x0

    if-nez v1, :cond_6

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    .line 13
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 14
    instance-of v6, v5, Landroidx/appcompat/widget/Toolbar;

    if-eqz v6, :cond_4

    .line 15
    move-object v0, v5

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_5
    :goto_2
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    .line 17
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    if-nez v0, :cond_8

    .line 23
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    .line 25
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 26
    :cond_9
    iput-boolean v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b:Z

    return-void
.end method

.method private static b(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method static d(Landroid/view/View;)Lcom/google/android/material/appbar/d;
    .locals 2

    const v0, 0x7f0802e5

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/material/appbar/d;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/d;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method final c(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d(Landroid/view/View;)Lcom/google/android/material/appbar/d;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/appbar/d;->b()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, p1

    return v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a()V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->f(Landroid/graphics/Canvas;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    if-lez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Ll3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ll3;->e()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_3

    .line 10
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    if-lez v3, :cond_3

    .line 2
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Landroid/view/View;

    if-eqz v3, :cond_1

    if-ne v3, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    if-ne p2, v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 5
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_4
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->H([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method e(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 4
    sget v1, Lc3;->g:I

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    .line 7
    sget p1, Lc3;->g:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->I(Ljava/lang/CharSequence;)V

    .line 2
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->m()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final g()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w:I

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Ll3;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ll3;->e()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    sget v4, Lc3;->g:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v4

    if-lez v4, :cond_3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    :goto_1
    const/4 v4, 0x1

    if-ge v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 9
    :goto_2
    sget v1, Lc3;->g:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 12
    :goto_3
    iget-boolean v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Z

    if-eq v5, v0, :cond_c

    const/16 v5, 0xff

    if-eqz v1, :cond_a

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 13
    :goto_4
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a()V

    .line 14
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_8

    .line 15
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:Landroid/animation/ValueAnimator;

    .line 16
    iget-wide v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->t:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:Landroid/animation/ValueAnimator;

    iget v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    if-le v5, v6, :cond_7

    sget-object v6, Ljx;->c:Landroid/animation/TimeInterpolator;

    goto :goto_5

    :cond_7
    sget-object v6, Ljx;->d:Landroid/animation/TimeInterpolator;

    :goto_5
    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/google/android/material/appbar/c;

    invoke-direct {v6, p0}, Lcom/google/android/material/appbar/c;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_6

    .line 19
    :cond_8
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 20
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:Landroid/animation/ValueAnimator;

    new-array v2, v2, [I

    iget v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:I

    aput v6, v2, v3

    aput v5, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 22
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    :cond_a
    if-eqz v0, :cond_b

    const/16 v3, 0xff

    .line 23
    :cond_b
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e(I)V

    .line 24
    :goto_7
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Z

    :cond_c
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_2

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 5
    sget v2, Lc3;->g:I

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 8
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v:Lcom/google/android/material/appbar/AppBarLayout$c;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$b;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 10
    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v:Lcom/google/android/material/appbar/AppBarLayout$c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v:Lcom/google/android/material/appbar/AppBarLayout$c;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->m(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Ll3;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ll3;->e()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    sget v4, Lc3;->g:I

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 9
    invoke-static {v3, p1}, Lc3;->o(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d(Landroid/view/View;)Lcom/google/android/material/appbar/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/appbar/d;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 13
    sget v1, Lc3;->g:I

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:Z

    if-eqz p1, :cond_a

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 17
    :goto_3
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Landroid/view/View;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    .line 18
    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Landroid/view/View;)I

    move-result p1

    .line 19
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Landroid/graphics/Rect;

    invoke-static {p0, v2, v3}, Lcom/google/android/material/internal/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 20
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    .line 21
    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->y()I

    move-result v4

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v4}, Landroidx/appcompat/widget/Toolbar;->z()I

    move-result v4

    :goto_5
    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p1

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    .line 22
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->A()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    .line 23
    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->z()I

    move-result v6

    goto :goto_6

    :cond_7
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v6}, Landroidx/appcompat/widget/Toolbar;->y()I

    move-result v6

    :goto_6
    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, p1

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->x()I

    move-result p1

    sub-int/2addr v6, p1

    .line 25
    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/google/android/material/internal/a;->r(IIII)V

    .line 26
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    if-eqz v1, :cond_8

    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:I

    goto :goto_7

    :cond_8
    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:I

    :goto_7
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:I

    add-int/2addr v3, v4

    sub-int/2addr p4, p2

    if-eqz v1, :cond_9

    iget p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:I

    goto :goto_8

    :cond_9
    iget p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:I

    :goto_8
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:I

    sub-int/2addr p5, p2

    invoke-virtual {p1, v2, v3, p4, p5}, Lcom/google/android/material/internal/a;->x(IIII)V

    .line 27
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->p()V

    .line 28
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_e

    .line 29
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->m()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 30
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->w()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f(Ljava/lang/CharSequence;)V

    .line 31
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Landroid/view/View;

    if-eqz p1, :cond_d

    if-ne p1, p0, :cond_c

    goto :goto_9

    .line 32
    :cond_c
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_a

    .line 33
    :cond_d
    :goto_9
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 34
    :cond_e
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g()V

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_b
    if-ge v0, p1, :cond_f

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d(Landroid/view/View;)Lcom/google/android/material/appbar/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/d;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a()V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Ll3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll3;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-lez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 3
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
