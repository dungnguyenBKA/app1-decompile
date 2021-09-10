.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field private final b:Landroidx/appcompat/view/menu/g;

.field final c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private final d:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/view/MenuInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030057

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    const v1, 0x7f0f024f

    move-object/from16 v3, p1

    .line 2
    invoke-static {v3, v2, v4, v1}, Lcom/google/android/material/internal/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v7, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-direct {v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;-><init>()V

    iput-object v7, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 5
    new-instance v9, Lcom/google/android/material/bottomnavigation/a;

    invoke-direct {v9, v8}, Lcom/google/android/material/bottomnavigation/a;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Landroidx/appcompat/view/menu/g;

    .line 6
    new-instance v10, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    const/4 v11, 0x0

    .line 7
    invoke-direct {v10, v8, v11}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    iput-object v10, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 9
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v12, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 10
    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-virtual {v7, v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->a(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    const/4 v13, 0x1

    .line 13
    invoke-virtual {v7, v13}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->l(I)V

    .line 14
    invoke-virtual {v10, v7}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->v(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V

    .line 15
    invoke-virtual {v9, v7}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1, v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->h(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 17
    sget-object v3, Lcom/google/android/material/R$styleable;->d:[I

    const v5, 0x7f0f024f

    const/4 v14, 0x2

    new-array v6, v14, [I

    fill-array-data v6, :array_0

    move-object v1, v8

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/i;->g(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/i0;

    move-result-object v1

    const/4 v2, 0x5

    .line 19
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const v2, 0x1010038

    .line 21
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 22
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m(Landroid/content/res/ColorStateList;)V

    :goto_0
    const/4 v2, 0x4

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 24
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v2

    .line 25
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->q(I)V

    const/16 v2, 0x8

    .line 26
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v2

    .line 28
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->s(I)V

    :cond_1
    const/4 v2, 0x7

    .line 29
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v2

    .line 31
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->r(I)V

    :cond_2
    const/16 v2, 0x9

    .line 32
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 34
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->t(Landroid/content/res/ColorStateList;)V

    .line 35
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_6

    .line 36
    :cond_4
    new-instance v2, Lmy;

    invoke-direct {v2}, Lmy;-><init>()V

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 38
    instance-of v5, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_5

    .line 39
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 40
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 42
    :cond_5
    invoke-virtual {v2, v8}, Lmy;->A(Landroid/content/Context;)V

    .line 43
    sget v3, Lc3;->g:I

    .line 44
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_6
    invoke-virtual {v1, v13}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 46
    invoke-virtual {v1, v13, v4}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v2

    int-to-float v2, v2

    .line 47
    invoke-static {p0, v2}, Lc3;->w(Landroid/view/View;F)V

    .line 48
    :cond_7
    invoke-static {v8, v1, v4}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/16 v2, 0xa

    const/4 v3, -0x1

    .line 50
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/i0;->l(II)I

    move-result v2

    .line 51
    invoke-virtual {v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h()I

    move-result v5

    if-eq v5, v2, :cond_8

    .line 52
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->u(I)V

    .line 53
    invoke-virtual {v7, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c(Z)V

    :cond_8
    const/4 v2, 0x3

    .line 54
    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v2

    .line 55
    invoke-virtual {v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j()Z

    move-result v5

    if-eq v5, v2, :cond_9

    .line 56
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->p(Z)V

    .line 57
    invoke-virtual {v7, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c(Z)V

    .line 58
    :cond_9
    invoke-virtual {v1, v14, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v2

    const/16 v5, 0x15

    if-eqz v2, :cond_a

    .line 59
    invoke-virtual {v10, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->o(I)V

    goto :goto_1

    :cond_a
    const/4 v2, 0x6

    .line 60
    invoke-static {v8, v1, v2}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 61
    iget-object v6, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    if-ne v6, v2, :cond_b

    if-nez v2, :cond_e

    .line 62
    invoke-virtual {v10}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 63
    invoke-virtual {v10, v11}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 64
    :cond_b
    iput-object v2, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->e:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_c

    .line 65
    invoke-virtual {v10, v11}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 66
    :cond_c
    invoke-static {v2}, Ldy;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 67
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_d

    .line 68
    new-instance v6, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v6, v2, v11, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 69
    :cond_d
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v11, 0x3727c5ac    # 1.0E-5f

    .line 70
    invoke-virtual {v6, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 71
    invoke-static {v6}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 72
    invoke-static {v6, v2}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 73
    invoke-virtual {v10, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    :goto_1
    const/16 v2, 0xb

    .line 74
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 75
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v2

    .line 76
    invoke-virtual {v7, v13}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->m(Z)V

    .line 77
    iget-object v6, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    if-nez v6, :cond_f

    .line 78
    new-instance v6, Lp;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Lp;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    .line 79
    :cond_f
    iget-object v6, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->f:Landroid/view/MenuInflater;

    .line 80
    invoke-virtual {v6, v2, v9}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    invoke-virtual {v7, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->m(Z)V

    .line 82
    invoke-virtual {v7, v13}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c(Z)V

    .line 83
    :cond_10
    invoke-virtual {v1}, Landroidx/appcompat/widget/i0;->v()V

    .line 84
    invoke-virtual {p0, v10, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_11

    .line 86
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05006c

    .line 87
    invoke-static {v8, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 89
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    :cond_11
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-virtual {v9, v1}, Landroidx/appcompat/view/menu/g;->G(Landroidx/appcompat/view/menu/g$a;)V

    .line 94
    new-instance v1, Lcom/google/android/material/bottomnavigation/b;

    invoke-direct {v1, p0}, Lcom/google/android/material/bottomnavigation/b;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-static {p0, v1}, Lcom/google/android/material/internal/j;->a(Landroid/view/View;Lcom/google/android/material/internal/j$b;)V

    return-void

    :array_0
    .array-data 4
        0x8
        0x7
    .end array-data
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

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

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Landroidx/appcompat/view/menu/g;

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->D(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;->d:Landroid/os/Bundle;

    .line 4
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/g;->F(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setElevation(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

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
