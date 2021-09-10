.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/FlowLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$c;,
        Lcom/google/android/material/chip/ChipGroup$b;,
        Lcom/google/android/material/chip/ChipGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lcom/google/android/material/chip/ChipGroup$b;

.field private i:Lcom/google/android/material/chip/ChipGroup$c;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030089

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$a;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$b;

    .line 4
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$c;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$c;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$a;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:Lcom/google/android/material/chip/ChipGroup$c;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->k:Z

    .line 7
    sget-object v4, Lcom/google/android/material/R$styleable;->h:[I

    new-array v7, v1, [I

    const v6, 0x7f0f027e

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 8
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    const/4 v2, 0x2

    .line 10
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 11
    iget v3, p0, Lcom/google/android/material/chip/ChipGroup;->e:I

    if-eq v3, v2, :cond_0

    .line 12
    iput v2, p0, Lcom/google/android/material/chip/ChipGroup;->e:I

    .line 13
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/FlowLayout;->b(I)V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    const/4 v2, 0x3

    .line 15
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 16
    iget v2, p0, Lcom/google/android/material/chip/ChipGroup;->f:I

    if-eq v2, p3, :cond_1

    .line 17
    iput p3, p0, Lcom/google/android/material/chip/ChipGroup;->f:I

    .line 18
    invoke-virtual {p0, p3}, Lcom/google/android/material/internal/FlowLayout;->c(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    const/4 p3, 0x4

    .line 20
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 21
    invoke-super {p0, p3}, Lcom/google/android/material/internal/FlowLayout;->d(Z)V

    const/4 p3, 0x5

    .line 22
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 23
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->g:Z

    if-eq v2, p3, :cond_4

    .line 24
    iput-boolean p3, p0, Lcom/google/android/material/chip/ChipGroup;->g:Z

    .line 25
    iput-boolean p2, p0, Lcom/google/android/material/chip/ChipGroup;->k:Z

    const/4 p2, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 27
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 28
    instance-of v2, p3, Lcom/google/android/material/chip/Chip;

    if-eqz v2, :cond_2

    .line 29
    check-cast p3, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p3, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 30
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->k:Z

    .line 31
    iput v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    .line 32
    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_5

    .line 33
    iput p2, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    .line 34
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->i:Lcom/google/android/material/chip/ChipGroup$c;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->k:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->g:Z

    return p0
.end method

.method static synthetic h(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->k(IZ)V

    return-void
.end method

.method static i(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    return-void
.end method

.method static synthetic j(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$b;

    return-object p0
.end method

.method private k(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->k:Z

    .line 4
    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->k:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->a()Z

    move-result v0

    return v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 3
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->g:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->k(IZ)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v0

    .line 7
    iput v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    .line 8
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->k(IZ)V

    .line 4
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    .line 5
    iput v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:I

    :cond_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:Lcom/google/android/material/chip/ChipGroup$c;

    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$c;->a(Lcom/google/android/material/chip/ChipGroup$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
