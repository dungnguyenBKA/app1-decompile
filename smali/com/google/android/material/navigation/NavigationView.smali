.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;
    }
.end annotation


# static fields
.field private static final m:[I

.field private static final n:[I


# instance fields
.field private final g:Lcom/google/android/material/internal/c;

.field private final h:Lcom/google/android/material/internal/d;

.field private final i:I

.field private final j:[I

.field private k:Landroid/view/MenuInflater;

.field private l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->m:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->n:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f03023d

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 2
    invoke-direct/range {p0 .. p3}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v8, Lcom/google/android/material/internal/d;

    invoke-direct {v8}, Lcom/google/android/material/internal/d;-><init>()V

    iput-object v8, v0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/d;

    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 4
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    .line 5
    new-instance v10, Lcom/google/android/material/internal/c;

    invoke-direct {v10, v7}, Lcom/google/android/material/internal/c;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/c;

    .line 6
    sget-object v3, Lcom/google/android/material/R$styleable;->A:[I

    const/4 v11, 0x0

    new-array v6, v11, [I

    const v5, 0x7f0f0253

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/i;->g(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/i0;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 10
    sget v3, Lc3;->g:I

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 14
    new-instance v3, Lmy;

    invoke-direct {v3}, Lmy;-><init>()V

    .line 15
    instance-of v4, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 16
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 17
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 18
    invoke-virtual {v3, v2}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 19
    :cond_2
    invoke-virtual {v3, v7}, Lmy;->A(Landroid/content/Context;)V

    .line 20
    sget v2, Lc3;->g:I

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const/4 v2, 0x3

    .line 22
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 23
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    :cond_4
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 25
    invoke-virtual {v1, v9, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/navigation/NavigationView;->i:I

    const/16 v3, 0x9

    .line 26
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 27
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_0

    :cond_5
    const v3, 0x1010038

    .line 28
    invoke-direct {v0, v3}, Lcom/google/android/material/navigation/NavigationView;->f(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_0
    const/16 v4, 0x12

    .line 29
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 30
    invoke-virtual {v1, v4, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v4

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x8

    .line 31
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 32
    invoke-virtual {v1, v6, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v6

    .line 33
    invoke-virtual {v8, v6}, Lcom/google/android/material/internal/d;->t(I)V

    :cond_7
    const/4 v6, 0x0

    const/16 v9, 0x13

    .line 34
    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 35
    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_8
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    const v6, 0x1010036

    .line 36
    invoke-direct {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->f(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_9
    const/4 v9, 0x5

    .line 37
    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_c

    const/16 v12, 0xb

    .line 38
    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v13

    const/16 v14, 0xc

    if-nez v13, :cond_b

    .line 39
    invoke-virtual {v1, v14}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_2

    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v13, 0x1

    :goto_3
    if-eqz v13, :cond_c

    .line 40
    invoke-virtual {v1, v12, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v9

    .line 41
    invoke-virtual {v1, v14, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v12

    .line 42
    new-instance v14, Lmy;

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 44
    invoke-static {v13, v9, v12}, Lqy;->a(Landroid/content/Context;II)Lqy$b;

    move-result-object v9

    .line 45
    invoke-virtual {v9}, Lqy$b;->m()Lqy;

    move-result-object v9

    invoke-direct {v14, v9}, Lmy;-><init>(Lqy;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v12, 0xd

    .line 47
    invoke-static {v9, v1, v12}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 48
    invoke-virtual {v14, v9}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    const/16 v9, 0x10

    .line 49
    invoke-virtual {v1, v9, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v15

    const/16 v9, 0x11

    .line 50
    invoke-virtual {v1, v9, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v16

    const/16 v9, 0xf

    .line 51
    invoke-virtual {v1, v9, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v17

    const/16 v9, 0xe

    .line 52
    invoke-virtual {v1, v9, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v18

    .line 53
    new-instance v9, Landroid/graphics/drawable/InsetDrawable;

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_c
    const/4 v12, 0x6

    .line 54
    invoke-virtual {v1, v12}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 55
    invoke-virtual {v1, v12, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v12

    .line 56
    invoke-virtual {v8, v12}, Lcom/google/android/material/internal/d;->r(I)V

    :cond_d
    const/4 v12, 0x7

    .line 57
    invoke-virtual {v1, v12, v11}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v12

    const/16 v13, 0xa

    .line 58
    invoke-virtual {v1, v13, v2}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v13

    .line 59
    invoke-virtual {v8, v13}, Lcom/google/android/material/internal/d;->v(I)V

    .line 60
    new-instance v13, Lcom/google/android/material/navigation/NavigationView$a;

    invoke-direct {v13, v0}, Lcom/google/android/material/navigation/NavigationView$a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v10, v13}, Landroidx/appcompat/view/menu/g;->G(Landroidx/appcompat/view/menu/g$a;)V

    .line 61
    invoke-virtual {v8, v2}, Lcom/google/android/material/internal/d;->p(I)V

    .line 62
    invoke-virtual {v8, v7, v10}, Lcom/google/android/material/internal/d;->h(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 63
    invoke-virtual {v8, v3}, Lcom/google/android/material/internal/d;->u(Landroid/content/res/ColorStateList;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/google/android/material/internal/d;->y(I)V

    if-eqz v5, :cond_e

    .line 65
    invoke-virtual {v8, v4}, Lcom/google/android/material/internal/d;->w(I)V

    .line 66
    :cond_e
    invoke-virtual {v8, v6}, Lcom/google/android/material/internal/d;->x(Landroid/content/res/ColorStateList;)V

    .line 67
    invoke-virtual {v8, v9}, Lcom/google/android/material/internal/d;->q(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {v8, v12}, Lcom/google/android/material/internal/d;->s(I)V

    .line 69
    invoke-virtual {v10, v8}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 70
    invoke-virtual {v8, v0}, Lcom/google/android/material/internal/d;->m(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0x14

    .line 71
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 72
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v3

    .line 73
    invoke-virtual {v8, v2}, Lcom/google/android/material/internal/d;->z(Z)V

    .line 74
    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    if-nez v2, :cond_f

    .line 75
    new-instance v2, Lp;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lp;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    .line 76
    :cond_f
    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    .line 77
    invoke-virtual {v2, v3, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    invoke-virtual {v8, v11}, Lcom/google/android/material/internal/d;->z(Z)V

    .line 79
    invoke-virtual {v8, v11}, Lcom/google/android/material/internal/d;->c(Z)V

    :cond_10
    const/4 v2, 0x4

    .line 80
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 81
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v2

    .line 82
    invoke-virtual {v8, v2}, Lcom/google/android/material/internal/d;->n(I)Landroid/view/View;

    .line 83
    :cond_11
    invoke-virtual {v1}, Landroidx/appcompat/widget/i0;->v()V

    .line 84
    new-instance v1, Lcom/google/android/material/navigation/a;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 86
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/navigation/NavigationView;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/navigation/NavigationView;)Lcom/google/android/material/internal/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/d;

    return-object p0
.end method

.method private f(I)Landroid/content/res/ColorStateList;
    .locals 10

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0300b9

    .line 6
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 9
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->n:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->m:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    .line 10
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method


# virtual methods
.method protected a(Ll3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->l(Ll3;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lmy;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lmy;

    invoke-static {p0, v0}, Lny;->b(Landroid/view/View;Lmy;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/c;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->D(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->d:Landroid/os/Bundle;

    .line 4
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/c;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/g;->F(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setElevation(F)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lmy;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lmy;

    invoke-virtual {v0, p1}, Lmy;->E(F)V

    :cond_1
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/internal/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/d;->y(I)V

    :cond_0
    return-void
.end method
