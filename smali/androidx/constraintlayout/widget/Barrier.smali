.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "SourceFile"


# instance fields
.field private g:I

.field private h:I

.field private i:Lo0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected b(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->b(Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Lo0;

    invoke-direct {v0}, Lo0;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->i:Lo0;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->a:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 6
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->k(I)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 7
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->i:Lo0;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Lo0;->q0(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->i:Lo0;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:Lv0;

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->h()V

    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->g:I

    return v0
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->i:Lo0;

    invoke-virtual {v0, p1}, Lo0;->q0(Z)V

    return-void
.end method

.method public k(I)V
    .locals 4

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->g:I

    .line 2
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz p1, :cond_2

    .line 5
    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->g:I

    if-ne p1, v3, :cond_1

    .line 6
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_4

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    goto :goto_1

    .line 8
    :cond_2
    iget p1, p0, Landroidx/constraintlayout/widget/Barrier;->g:I

    if-ne p1, v3, :cond_3

    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    .line 10
    iput v1, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    .line 11
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->i:Lo0;

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->h:I

    invoke-virtual {p1, v0}, Lo0;->r0(I)V

    return-void
.end method
