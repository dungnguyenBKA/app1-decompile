.class public Lcom/google/android/material/internal/NavigationMenuItemView;
.super Lcom/google/android/material/internal/ForegroundLinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# static fields
.field private static final G:[I


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Landroidx/appcompat/view/menu/i;

.field private C:Landroid/content/res/ColorStateList;

.field private D:Z

.field private E:Landroid/graphics/drawable/Drawable;

.field private final F:Ln2;

.field private w:I

.field private x:Z

.field y:Z

.field private final z:Landroid/widget/CheckedTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->G:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuItemView$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/NavigationMenuItemView$a;-><init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V

    iput-object p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->F:Ln2;

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;->w(I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0b0040

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060203

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 7
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->w:I

    const p1, 0x7f080105

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 10
    invoke-static {p1, p2}, Lc3;->u(Landroid/view/View;Ln2;)V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->w:I

    return-void
.end method

.method B(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->C:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->D:Z

    .line 3
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->y(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public C(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z

    return-void
.end method

.method public E(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-static {v0, p1}, Landroidx/core/widget/c;->h(Landroid/widget/TextView;I)V

    return-void
.end method

.method public F(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public c()Landroidx/appcompat/view/menu/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroidx/appcompat/view/menu/i;I)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 4
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0300b0

    .line 7
    invoke-virtual {v3, v4, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 9
    sget-object v4, Lcom/google/android/material/internal/NavigationMenuItemView;->G:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-direct {v5, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 10
    sget-object p2, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, p2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 11
    :goto_1
    sget p2, Lc3;->g:I

    .line 12
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result p2

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 15
    iget-boolean v3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->y:Z

    if-eq v3, p2, :cond_3

    .line 16
    iput-boolean p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->y:Z

    .line 17
    iget-object p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->F:Ln2;

    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    const/16 v4, 0x800

    invoke-virtual {p2, v3, v4}, Ln2;->i(Landroid/view/View;I)V

    .line 18
    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result p2

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 20
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 22
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    .line 23
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuItemView;->y(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 26
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    if-nez v3, :cond_4

    const v3, 0x7f080104

    .line 27
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    .line 28
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 29
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 30
    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/l0;->b(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;

    .line 33
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;

    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    .line 35
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    .line 37
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 p2, -0x1

    .line 38
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 39
    iget-object p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 40
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    .line 42
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 p2, -0x2

    .line 43
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 44
    iget-object p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->G:[I

    invoke-static {p1, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public y(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->D:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->C:Landroid/content/res/ColorStateList;

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->w:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->x:Z

    if-eqz v1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07018c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 9
    invoke-static {p1, v1, v2}, Lc1;->c(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 10
    iget v1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->w:I

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->E:Landroid/graphics/drawable/Drawable;

    .line 12
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    return-void
.end method
