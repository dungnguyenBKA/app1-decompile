.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lcom/google/android/material/internal/VisibilityAwareImageButton;
.source "SourceFile"

# interfaces
.implements Lb3;
.implements Landroidx/core/widget/h;
.implements Lux;
.implements Lty;


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;
    }
.end annotation


# instance fields
.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/graphics/PorterDuff$Mode;

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field m:Z

.field final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/Rect;

.field private final p:Landroidx/appcompat/widget/f;

.field private final q:Lvx;

.field private r:Lcom/google/android/material/floatingactionbutton/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030159

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const v0, 0x7f0f0252

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    sget-object v3, Lcom/google/android/material/R$styleable;->m:[I

    const/4 v7, 0x0

    new-array v6, v7, [I

    const v5, 0x7f0f0252

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8
    invoke-static {p1, v1, v7}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v4, 0x0

    .line 10
    invoke-static {v2, v4}, Lcom/google/android/material/internal/j;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0xb

    .line 11
    invoke-static {p1, v1, v2}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    const/4 v2, 0x6

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    const/4 v2, 0x5

    .line 13
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    const/4 v2, 0x2

    .line 14
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v4, 0x8

    .line 16
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/16 v5, 0xa

    .line 17
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/16 v5, 0xf

    .line 18
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m:Z

    .line 19
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06030d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0x9

    .line 20
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    const/16 v6, 0xe

    .line 21
    invoke-static {p1, v1, v6}, Lpx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lpx;

    move-result-object v6

    const/4 v8, 0x7

    .line 22
    invoke-static {p1, v1, v8}, Lpx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lpx;

    move-result-object v8

    .line 23
    sget-object v9, Lqy;->m:Liy;

    .line 24
    invoke-static {p1, p2, p3, v0, v9}, Lqy;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILiy;)Lqy$b;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lqy$b;->m()Lqy;

    move-result-object p1

    const/4 v0, 0x4

    .line 26
    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 27
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    new-instance v1, Landroidx/appcompat/widget/f;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/f;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Landroidx/appcompat/widget/f;

    .line 29
    invoke-virtual {v1, p2, p3}, Landroidx/appcompat/widget/f;->e(Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p2, Lvx;

    invoke-direct {p2, p0}, Lvx;-><init>(Lux;)V

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lvx;

    .line 31
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/e;->B(Lqy;)V

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    iget v7, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->h:I

    .line 33
    invoke-virtual {p1, p2, p3, v1, v7}, Lcom/google/android/material/floatingactionbutton/e;->n(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    .line 35
    iput v5, p1, Lcom/google/android/material/floatingactionbutton/e;->j:I

    .line 36
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    .line 37
    iget p2, p1, Lcom/google/android/material/floatingactionbutton/e;->g:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_0

    .line 38
    iput v2, p1, Lcom/google/android/material/floatingactionbutton/e;->g:F

    .line 39
    iget p2, p1, Lcom/google/android/material/floatingactionbutton/e;->h:F

    iget p3, p1, Lcom/google/android/material/floatingactionbutton/e;->i:F

    invoke-virtual {p1, v2, p2, p3}, Lcom/google/android/material/floatingactionbutton/e;->t(FFF)V

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    .line 41
    iget p2, p1, Lcom/google/android/material/floatingactionbutton/e;->h:F

    cmpl-float p2, p2, v4

    if-eqz p2, :cond_1

    .line 42
    iput v4, p1, Lcom/google/android/material/floatingactionbutton/e;->h:F

    .line 43
    iget p2, p1, Lcom/google/android/material/floatingactionbutton/e;->g:F

    iget p3, p1, Lcom/google/android/material/floatingactionbutton/e;->i:F

    invoke-virtual {p1, p2, v4, p3}, Lcom/google/android/material/floatingactionbutton/e;->t(FFF)V

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    .line 45
    iget p2, p1, Lcom/google/android/material/floatingactionbutton/e;->i:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_2

    .line 46
    iput v3, p1, Lcom/google/android/material/floatingactionbutton/e;->i:F

    .line 47
    iget p2, p1, Lcom/google/android/material/floatingactionbutton/e;->g:F

    iget p3, p1, Lcom/google/android/material/floatingactionbutton/e;->h:F

    invoke-virtual {p1, p2, p3, v3}, Lcom/google/android/material/floatingactionbutton/e;->t(FFF)V

    .line 48
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/e;->A(I)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/google/android/material/floatingactionbutton/e;->C(Lpx;)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/material/floatingactionbutton/e;->y(Lpx;)V

    .line 51
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    .line 52
    iput-boolean v0, p1, Lcom/google/android/material/floatingactionbutton/e;->f:Z

    .line 53
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private A()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 3
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-nez v2, :cond_2

    .line 6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8
    invoke-static {v1, v2}, Landroidx/appcompat/widget/e;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private static B(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    if-ne v0, p0, :cond_0

    move p0, p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method static synthetic m(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    return p0
.end method

.method static synthetic n(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private t()Lcom/google/android/material/floatingactionbutton/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lcom/google/android/material/floatingactionbutton/e;

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/material/floatingactionbutton/h;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/h;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lfy;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/e;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/e;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lfy;)V

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lcom/google/android/material/floatingactionbutton/e;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r:Lcom/google/android/material/floatingactionbutton/e;

    return-object v0
.end method

.method private w(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    const p1, 0x7f0601fe

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_1
    const p1, 0x7f0601fd

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 5
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_3

    .line 8
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->w(I)I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->w(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private z(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method C(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/floatingactionbutton/e;->G(Lcom/google/android/material/floatingactionbutton/e$h;Z)V

    return-void
.end method

.method public a()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lvx;

    invoke-virtual {v0}, Lvx;->b()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/e;->s([I)V

    return-void
.end method

.method public e(Lqy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/e;->B(Lqy;)V

    return-void
.end method

.method public f(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->A()V

    :cond_0
    return-void
.end method

.method public g()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->A()V

    :cond_0
    return-void
.end method

.method public j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/e;->p()V

    return-void
.end method

.method public o(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/e;->d(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/e;->q()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/e;->r()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->v()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/e;->J()V

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->B(II)I

    move-result p1

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->B(II)I

    move-result p2

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lvx;

    iget-object p1, p1, Lcom/google/android/material/stateful/ExtendableSavedState;->d:Le0;

    const/4 v1, 0x0

    const-string v2, "expandableWidgetHelper"

    .line 6
    invoke-virtual {p1, v2, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    check-cast p1, Landroid/os/Bundle;

    .line 9
    invoke-virtual {v0, p1}, Lvx;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/material/stateful/ExtendableSavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, v1, Lcom/google/android/material/stateful/ExtendableSavedState;->d:Le0;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lvx;

    .line 5
    invoke-virtual {v2}, Lvx;->d()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "expandableWidgetHelper"

    .line 6
    invoke-virtual {v0, v3, v2}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/e;->e(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public q(Lsx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsx<",
            "+",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$c;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lsx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/e;->f(Lcom/google/android/material/floatingactionbutton/e$g;)V

    return-void
.end method

.method public r(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lc3;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->z(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q:Lvx;

    invoke-virtual {v0}, Lvx;->a()I

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "FloatingActionButton"

    const-string v0, "Setting a custom background is not supported."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, p1}, Lmy;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/e;->d:Lcom/google/android/material/floatingactionbutton/c;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/c;->b(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lmy;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lmy;->E(F)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/e;->I()V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->A()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->p:Landroidx/appcompat/widget/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/f;->f(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->A()V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/e;->v()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/e;->v()V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/e;->w()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/e;->w()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/e;->w()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method

.method public u(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->z(Landroid/graphics/Rect;)V

    return-void
.end method

.method v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i:I

    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->w(I)I

    move-result v0

    return v0
.end method

.method x(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/floatingactionbutton/e;->m(Lcom/google/android/material/floatingactionbutton/e$h;Z)V

    return-void
.end method

.method public y()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->t()Lcom/google/android/material/floatingactionbutton/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/e;->o()Z

    move-result v0

    return v0
.end method
