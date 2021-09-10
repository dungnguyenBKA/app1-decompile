.class public Lcom/google/android/material/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$c;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayout$a;,
        Lcom/google/android/material/tabs/TabLayout$g;,
        Lcom/google/android/material/tabs/TabLayout$e;,
        Lcom/google/android/material/tabs/TabLayout$c;,
        Lcom/google/android/material/tabs/TabLayout$f;,
        Lcom/google/android/material/tabs/TabLayout$d;,
        Lcom/google/android/material/tabs/TabLayout$b;
    }
.end annotation


# static fields
.field private static final O:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lcom/google/android/material/tabs/TabLayout$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:I

.field B:Z

.field C:Z

.field D:Z

.field private final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/google/android/material/tabs/TabLayout$b;

.field private G:Landroid/animation/ValueAnimator;

.field H:Landroidx/viewpager/widget/ViewPager;

.field private I:Landroidx/viewpager/widget/a;

.field private J:Landroid/database/DataSetObserver;

.field private K:Lcom/google/android/material/tabs/TabLayout$e;

.field private L:Lcom/google/android/material/tabs/TabLayout$a;

.field private M:Z

.field private final N:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lcom/google/android/material/tabs/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/material/tabs/TabLayout$d;

.field private final d:Landroid/graphics/RectF;

.field private final e:Lcom/google/android/material/tabs/TabLayout$c;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Landroid/content/res/ColorStateList;

.field l:Landroid/content/res/ColorStateList;

.field m:Landroid/content/res/ColorStateList;

.field n:Landroid/graphics/drawable/Drawable;

.field o:Landroid/graphics/PorterDuff$Mode;

.field p:F

.field q:F

.field final r:I

.field s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm2;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lm2;-><init>(I)V

    sput-object v0, Lcom/google/android/material/tabs/TabLayout;->O:Lk2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0302d1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->d:Landroid/graphics/RectF;

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->s:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ll2;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ll2;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->N:Lk2;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 9
    new-instance v2, Lcom/google/android/material/tabs/TabLayout$c;

    invoke-direct {v2, p0, p1}, Lcom/google/android/material/tabs/TabLayout$c;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    .line 10
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v2, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 11
    sget-object v8, Lcom/google/android/material/R$styleable;->H:[I

    const/4 v3, 0x1

    new-array v11, v3, [I

    const/16 v4, 0x16

    aput v4, v11, v0

    const v10, 0x7f0f0256

    move-object v6, p1

    move-object v7, p2

    move v9, p3

    .line 12
    invoke-static/range {v6 .. v11}, Lcom/google/android/material/internal/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 13
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 15
    new-instance v6, Lmy;

    invoke-direct {v6}, Lmy;-><init>()V

    .line 16
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v6, p3}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 17
    invoke-virtual {v6, p1}, Lmy;->A(Landroid/content/Context;)V

    .line 18
    invoke-static {p0}, Lc3;->i(Landroid/view/View;)F

    move-result p3

    invoke-virtual {v6, p3}, Lmy;->E(F)V

    .line 19
    invoke-virtual {p0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/16 p3, 0xa

    .line 20
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 21
    invoke-virtual {v2, p3}, Lcom/google/android/material/tabs/TabLayout$c;->f(I)V

    const/4 p3, 0x7

    .line 22
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 23
    invoke-virtual {v2, p3}, Lcom/google/android/material/tabs/TabLayout$c;->e(I)V

    const/4 p3, 0x5

    .line 24
    invoke-static {p1, p2, p3}, Lyx;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 25
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout;->n:Landroid/graphics/drawable/Drawable;

    if-eq v6, p3, :cond_1

    .line 26
    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->n:Landroid/graphics/drawable/Drawable;

    .line 27
    sget p3, Lc3;->g:I

    .line 28
    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1
    const/16 p3, 0x9

    .line 29
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 30
    iget v6, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    if-eq v6, p3, :cond_2

    .line 31
    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    .line 32
    sget p3, Lc3;->g:I

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
    const/16 p3, 0x8

    .line 34
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 35
    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->C:Z

    .line 36
    sget p3, Lc3;->g:I

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    const/16 p3, 0xf

    .line 38
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->i:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->h:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->g:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    const/16 v6, 0x12

    .line 39
    invoke-virtual {p2, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    const/16 p3, 0x13

    .line 40
    iget v6, p0, Lcom/google/android/material/tabs/TabLayout;->g:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->g:I

    const/16 p3, 0x11

    .line 41
    iget v6, p0, Lcom/google/android/material/tabs/TabLayout;->h:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->h:I

    const/16 p3, 0x10

    .line 42
    iget v6, p0, Lcom/google/android/material/tabs/TabLayout;->i:I

    .line 43
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->i:I

    const p3, 0x7f0f0171

    .line 44
    invoke-virtual {p2, v4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->j:I

    .line 45
    sget-object v4, Landroidx/appcompat/R$styleable;->y:[I

    .line 46
    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 47
    :try_start_0
    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/tabs/TabLayout;->p:F

    const/4 v4, 0x3

    .line 48
    invoke-static {p1, p3, v4}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p3, 0x17

    .line 50
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    invoke-static {p1, p2, p3}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    :cond_3
    const/16 p3, 0x15

    .line 52
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_4

    .line 53
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 54
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    new-array v8, v7, [[I

    new-array v9, v7, [I

    .line 55
    sget-object v10, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    aput-object v10, v8, v0

    aput p3, v9, v0

    .line 56
    sget-object p3, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    aput-object p3, v8, v3

    aput v6, v9, v3

    .line 57
    new-instance p3, Landroid/content/res/ColorStateList;

    invoke-direct {p3, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 58
    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    .line 59
    :cond_4
    invoke-static {p1, p2, v4}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/content/res/ColorStateList;

    const/4 p3, 0x4

    .line 60
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v4, 0x0

    invoke-static {p3, v4}, Lcom/google/android/material/internal/j;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->o:Landroid/graphics/PorterDuff$Mode;

    const/16 p3, 0x14

    .line 61
    invoke-static {p1, p2, p3}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x6

    const/16 p3, 0x12c

    .line 62
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->y:I

    const/16 p1, 0xd

    .line 63
    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    .line 64
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->u:I

    .line 65
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    .line 66
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    const/16 p1, 0xe

    .line 67
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->A:I

    .line 68
    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->x:I

    const/16 p1, 0xb

    .line 69
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->B:Z

    const/16 p1, 0x18

    .line 70
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->D:Z

    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060217

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout;->q:F

    const p2, 0x7f060215

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->v:I

    .line 75
    iget p1, p0, Lcom/google/android/material/tabs/TabLayout;->A:I

    if-eqz p1, :cond_6

    if-ne p1, v7, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    .line 76
    :cond_6
    :goto_0
    iget p1, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    iget p2, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 77
    :goto_1
    invoke-virtual {v2, p1, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 78
    iget p1, p0, Lcom/google/android/material/tabs/TabLayout;->A:I

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v7, :cond_7

    goto :goto_2

    .line 79
    :cond_7
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    :cond_8
    const p1, 0x800003

    .line 80
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 81
    :goto_2
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->r(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 82
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    throw p1
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lcom/google/android/material/tabs/TabItem;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->j()Lcom/google/android/material/tabs/TabLayout$d;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$d;->m(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$d;

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$d;->k(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$d;

    .line 8
    :cond_1
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->d:I

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$d;->j(I)Lcom/google/android/material/tabs/TabLayout$d;

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$d;->i(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$d;

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$d;Z)V

    return-void

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 2
    sget v0, Lc3;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 6
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->e(IF)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 10
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->G:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    .line 11
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->G:Landroid/animation/ValueAnimator;

    .line 12
    sget-object v5, Ljx;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->G:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/google/android/material/tabs/TabLayout;->y:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->G:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/google/android/material/tabs/a;

    invoke-direct {v5, p0}, Lcom/google/android/material/tabs/a;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->G:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v4

    aput v1, v5, v2

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->y:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout$c;->a(II)V

    return-void

    .line 18
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v1, v2, v2}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZ)V

    return-void
.end method

.method private e(IF)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 3
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    .line 4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    .line 5
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 8
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    sub-int/2addr v0, p1

    add-int/2addr v3, v1

    int-to-float p1, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 9
    sget p2, Lc3;->g:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    if-nez p2, :cond_5

    add-int/2addr v0, p1

    goto :goto_3

    :cond_5
    sub-int/2addr v0, p1

    :goto_3
    return v0
.end method

.method private i()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->v:I

    :goto_1
    return v0
.end method

.method private o(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 3
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private p(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->H:Landroidx/viewpager/widget/ViewPager;

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Lcom/google/android/material/tabs/TabLayout$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->t(Landroidx/viewpager/widget/ViewPager$g;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$a;

    if-eqz p2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/ViewPager;->s(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/TabLayout$b;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/TabLayout$b;

    :cond_2
    if-eqz p1, :cond_6

    .line 9
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->H:Landroidx/viewpager/widget/ViewPager;

    .line 10
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->K:Lcom/google/android/material/tabs/TabLayout$e;

    if-nez p2, :cond_3

    .line 11
    new-instance p2, Lcom/google/android/material/tabs/TabLayout$e;

    invoke-direct {p2, p0}, Lcom/google/android/material/tabs/TabLayout$e;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->K:Lcom/google/android/material/tabs/TabLayout$e;

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->K:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$e;->d()V

    .line 13
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->K:Lcom/google/android/material/tabs/TabLayout$e;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$g;)V

    .line 14
    new-instance p2, Lcom/google/android/material/tabs/TabLayout$g;

    invoke-direct {p2, p1}, Lcom/google/android/material/tabs/TabLayout$g;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/TabLayout$b;

    .line 15
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$a;

    if-nez p2, :cond_5

    .line 18
    new-instance p2, Lcom/google/android/material/tabs/TabLayout$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/tabs/TabLayout$a;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$a;

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$a;

    .line 20
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->L:Lcom/google/android/material/tabs/TabLayout$a;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 22
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->i()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZ)V

    goto :goto_0

    .line 24
    :cond_6
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/tabs/TabLayout;->m(Landroidx/viewpager/widget/a;Z)V

    .line 26
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->M:Z

    return-void
.end method

.method private q(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->x:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 4
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 5
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->c(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->c(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->c(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->c(Landroid/view/View;)V

    return-void
.end method

.method public b(Lcom/google/android/material/tabs/TabLayout$d;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$d;->f:Lcom/google/android/material/tabs/TabLayout;

    if-ne v1, p0, :cond_3

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$d;->l(I)V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$d;

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout$d;->l(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$d;->g:Lcom/google/android/material/tabs/TabLayout$f;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$f;->setSelected(Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 10
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$d;->e()I

    move-result v3

    .line 11
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-direct {p0, v4}, Lcom/google/android/material/tabs/TabLayout;->q(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 13
    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p1, Lcom/google/android/material/tabs/TabLayout$d;->f:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2, p1, v2}, Lcom/google/android/material/tabs/TabLayout;->l(Lcom/google/android/material/tabs/TabLayout$d;Z)V

    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab not attached to a TabLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different TabLayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$d;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public g(I)Lcom/google/android/material/tabs/TabLayout$d;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->h()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$d;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public j()Lcom/google/android/material/tabs/TabLayout$d;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->O:Lk2;

    invoke-interface {v0}, Lk2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$d;

    invoke-direct {v0}, Lcom/google/android/material/tabs/TabLayout$d;-><init>()V

    .line 3
    :cond_0
    iput-object p0, v0, Lcom/google/android/material/tabs/TabLayout$d;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->N:Lk2;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lk2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$f;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/tabs/TabLayout$f;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    .line 6
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$f;->d(Lcom/google/android/material/tabs/TabLayout$d;)V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 9
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$d;->a(Lcom/google/android/material/tabs/TabLayout$d;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$d;->b(Lcom/google/android/material/tabs/TabLayout$d;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$d;->a(Lcom/google/android/material/tabs/TabLayout$d;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    :goto_1
    iput-object v1, v0, Lcom/google/android/material/tabs/TabLayout$d;->g:Lcom/google/android/material/tabs/TabLayout$f;

    return-object v0
.end method

.method k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$f;

    .line 3
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$f;->c()V

    .line 5
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->N:Lk2;

    invoke-interface {v2, v1}, Lk2;->a(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$d;

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$d;->h()V

    .line 11
    sget-object v2, Lcom/google/android/material/tabs/TabLayout;->O:Lk2;

    invoke-interface {v2, v1}, Lk2;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$d;

    .line 13
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroidx/viewpager/widget/a;

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Landroidx/viewpager/widget/a;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->j()Lcom/google/android/material/tabs/TabLayout$d;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroidx/viewpager/widget/a;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v0}, Lcom/google/android/material/tabs/TabLayout$d;->m(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$d;

    invoke-virtual {p0, v4, v2}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$d;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    if-lez v1, :cond_4

    .line 17
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->i()I

    move-result v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->f()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->h()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$d;

    move-result-object v0

    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->l(Lcom/google/android/material/tabs/TabLayout$d;Z)V

    :cond_4
    return-void
.end method

.method public l(Lcom/google/android/material/tabs/TabLayout$d;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$d;

    const/4 v1, -0x1

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_7

    .line 2
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$b;->a(Lcom/google/android/material/tabs/TabLayout$d;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$d;->e()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->d(I)V

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$d;->e()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$d;->e()I

    move-result p2

    if-ne p2, v1, :cond_4

    :cond_3
    if-eq v2, v1, :cond_4

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v2, p2, v3, v3}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZ)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->d(I)V

    :goto_2
    if-eq v2, v1, :cond_5

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->o(I)V

    .line 10
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$d;

    if-eqz v0, :cond_6

    .line 11
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_3
    if-ltz p2, :cond_6

    .line 12
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v2, v0}, Lcom/google/android/material/tabs/TabLayout$b;->c(Lcom/google/android/material/tabs/TabLayout$d;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 13
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_4
    if-ltz p2, :cond_7

    .line 14
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-interface {v0, p1}, Lcom/google/android/material/tabs/TabLayout$b;->b(Lcom/google/android/material/tabs/TabLayout$d;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method m(Landroidx/viewpager/widget/a;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroidx/viewpager/widget/a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/a;->b(Landroid/database/DataSetObserver;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->I:Landroidx/viewpager/widget/a;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->k()V

    return-void
.end method

.method public n(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 3
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/material/tabs/TabLayout$c;->d(IF)V

    .line 4
    :cond_1
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->G:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 5
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->G:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->e(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->o(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lmy;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lmy;

    invoke-static {p0, v0}, Lny;->b(Landroid/view/View;Lmy;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/tabs/TabLayout;->p(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->M:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->p(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 4
    iput-boolean v2, p0, Lcom/google/android/material/tabs/TabLayout;->M:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-static {v1, p1}, Lcom/google/android/material/tabs/TabLayout$f;->b(Lcom/google/android/material/tabs/TabLayout$f;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 3
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout$d;

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$d;->f()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    iget-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout;->B:Z

    if-nez v1, :cond_2

    const/16 v1, 0x48

    goto :goto_2

    :cond_2
    const/16 v1, 0x30

    .line 6
    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/material/internal/j;->b(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p2

    .line 9
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_5

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 12
    :cond_5
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->u:I

    if-lez v1, :cond_6

    goto :goto_4

    :cond_6
    int-to-float v0, v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0x38

    invoke-static {v1, v3}, Lcom/google/android/material/internal/j;->b(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :goto_4
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->s:I

    .line 16
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    if-ne p1, v4, :cond_b

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 19
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:I

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_6

    .line 20
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_a

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    .line 21
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_a

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 22
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    invoke-static {p2, v1, v0}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 25
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_b
    return-void
.end method

.method r(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->q(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setElevation(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lmy;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lmy;

    invoke-virtual {v0, p1}, Lmy;->E(F)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:Lcom/google/android/material/tabs/TabLayout$c;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
