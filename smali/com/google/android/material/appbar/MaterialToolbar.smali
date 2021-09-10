.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f03030c

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f0f02b0

    .line 2
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    instance-of p3, p2, Landroid/graphics/drawable/ColorDrawable;

    if-nez p3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance p3, Lmy;

    invoke-direct {p3}, Lmy;-><init>()V

    if-eqz p2, :cond_1

    .line 7
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    .line 8
    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 10
    invoke-virtual {p3, p1}, Lmy;->A(Landroid/content/Context;)V

    .line 11
    invoke-static {p0}, Lc3;->i(Landroid/view/View;)F

    move-result p1

    invoke-virtual {p3, p1}, Lmy;->E(F)V

    .line 12
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

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

.method public setElevation(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

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
