.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$d;,
        Landroidx/appcompat/widget/Toolbar$SavedState;,
        Landroidx/appcompat/widget/Toolbar$LayoutParams;,
        Landroidx/appcompat/widget/Toolbar$e;
    }
.end annotation


# instance fields
.field private A:Landroid/content/res/ColorStateList;

.field private B:Landroid/content/res/ColorStateList;

.field private C:Z

.field private D:Z

.field private final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final G:[I

.field H:Landroidx/appcompat/widget/Toolbar$e;

.field private final I:Landroidx/appcompat/widget/ActionMenuView$d;

.field private J:Landroidx/appcompat/widget/k0;

.field private K:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private L:Landroidx/appcompat/widget/Toolbar$d;

.field private M:Landroidx/appcompat/view/menu/m$a;

.field private N:Landroidx/appcompat/view/menu/g$a;

.field private O:Z

.field private final P:Ljava/lang/Runnable;

.field private b:Landroidx/appcompat/widget/ActionMenuView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Ljava/lang/CharSequence;

.field i:Landroid/widget/ImageButton;

.field j:Landroid/view/View;

.field private k:Landroid/content/Context;

.field private l:I

.field private m:I

.field private n:I

.field o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroidx/appcompat/widget/x;

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/CharSequence;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f03030c

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x800013

    .line 3
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->G:[I

    .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/ActionMenuView$d;

    .line 8
    new-instance v0, Landroidx/appcompat/widget/Toolbar$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->P:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->z:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object p2

    const/16 p3, 0x1c

    .line 10
    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    const/16 p3, 0x13

    .line 11
    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    .line 12
    iget p3, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    invoke-virtual {p2, v2, p3}, Landroidx/appcompat/widget/i0;->l(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    const/16 p3, 0x30

    .line 13
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->l(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    const/16 p1, 0x16

    .line 14
    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    const/16 p3, 0x1b

    .line 15
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    .line 17
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    const/16 p1, 0x19

    const/4 p3, -0x1

    .line 18
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 19
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    :cond_1
    const/16 p1, 0x18

    .line 20
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    if-ltz p1, :cond_2

    .line 21
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    :cond_2
    const/16 p1, 0x1a

    .line 22
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    if-ltz p1, :cond_3

    .line 23
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    :cond_3
    const/16 p1, 0x17

    .line 24
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    if-ltz p1, :cond_4

    .line 25
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    :cond_4
    const/16 p1, 0xd

    .line 26
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    const/16 p1, 0x9

    const/high16 p3, -0x80000000

    .line 27
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    const/4 v0, 0x5

    .line 28
    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result v0

    const/4 v1, 0x7

    .line 29
    invoke-virtual {p2, v1, v2}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v1

    const/16 v3, 0x8

    .line 30
    invoke-virtual {p2, v3, v2}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v3

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->i()V

    .line 32
    iget-object v4, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/widget/x;->c(II)V

    if-ne p1, p3, :cond_5

    if-eq v0, p3, :cond_6

    .line 33
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/widget/x;->e(II)V

    :cond_6
    const/16 p1, 0xa

    .line 34
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    const/4 p1, 0x6

    .line 35
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    const/4 p1, 0x4

    .line 36
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x3

    .line 37
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->h:Ljava/lang/CharSequence;

    const/16 p1, 0x15

    .line 38
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->Z(Ljava/lang/CharSequence;)V

    :cond_7
    const/16 p1, 0x12

    .line 41
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->X(Ljava/lang/CharSequence;)V

    .line 44
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;

    const/16 p1, 0x11

    .line 45
    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->W(I)V

    const/16 p1, 0x10

    .line 46
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->T(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    const/16 p1, 0xf

    .line 48
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->S(Ljava/lang/CharSequence;)V

    :cond_a
    const/16 p1, 0xb

    .line 51
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->P(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    const/16 p1, 0xc

    .line 53
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 56
    iget-object p3, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-nez p3, :cond_c

    .line 57
    new-instance p3, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p3, v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object p3, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    .line 60
    :cond_c
    iget-object p3, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz p3, :cond_d

    .line 61
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    const/16 p1, 0x1d

    .line 62
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 63
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 64
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;

    .line 65
    iget-object p3, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz p3, :cond_e

    .line 66
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    const/16 p1, 0x14

    .line 67
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 68
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 69
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->B:Landroid/content/res/ColorStateList;

    .line 70
    iget-object p3, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz p3, :cond_f

    .line 71
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f
    const/16 p1, 0xe

    .line 72
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 73
    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p1

    .line 74
    new-instance p3, Lp;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lp;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->s()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lp;->inflate(ILandroid/view/Menu;)V

    .line 76
    :cond_10
    invoke-virtual {p2}, Landroidx/appcompat/widget/i0;->v()V

    return-void
.end method

.method private B(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method private F(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method private I(Landroid/view/View;I[II)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, p2

    neg-int p2, v1

    .line 4
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p3, v2

    .line 5
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;I)I

    move-result p2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int p4, v3, p3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v3, p2, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 8
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p1

    add-int/2addr p3, v3

    return p3
.end method

.method private J(Landroid/view/View;I[II)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 3
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 4
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 5
    invoke-direct {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->o(Landroid/view/View;I)I

    move-result p3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 8
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method

.method private K(Landroid/view/View;IIII[I)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 4
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v5

    neg-int v1, v1

    .line 6
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 7
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, p6

    add-int/2addr v1, v6

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 9
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p6

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p6, p3

    add-int/2addr p6, p5

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    invoke-static {p4, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v6

    return p1
.end method

.method private L(Landroid/view/View;IIIII)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 3
    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p3

    add-int/2addr v1, p5

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    invoke-static {p4, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 6
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 p5, 0x40000000    # 2.0f

    if-eq p4, p5, :cond_1

    if-ltz p6, :cond_1

    if-eqz p4, :cond_0

    .line 7
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 8
    :cond_0
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 9
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private b0(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

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

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    .line 5
    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    .line 7
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 9
    iget v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    .line 10
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/Toolbar;->n(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 14
    iget v4, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    .line 15
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/Toolbar;->n(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private d(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->l()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    .line 6
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/x;

    invoke-direct {v0}, Landroidx/appcompat/widget/x;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    .line 5
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->L(I)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->I:Landroidx/appcompat/widget/ActionMenuView$d;

    .line 7
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/widget/ActionMenuView$d;

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/m$a;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/view/menu/g$a;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->J(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->l()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800005

    .line 10
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f03030b

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->l()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 4
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private n(I)I
    .locals 4

    .line 1
    sget v0, Lc3;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x5

    :cond_0
    return v2

    :cond_1
    return p1
.end method

.method private o(Landroid/view/View;I)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    .line 3
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iget v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x10

    const/16 v4, 0x50

    const/16 v5, 0x30

    if-eq v2, v3, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    .line 5
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->x:I

    and-int/lit8 v2, v2, 0x70

    :cond_1
    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    .line 9
    div-int/lit8 v4, v4, 0x2

    .line 10
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v4, v5, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    .line 11
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_3

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    .line 12
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3
    :goto_1
    add-int/2addr p2, v4

    return p2

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method private r(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    return v0
.end method

.method public C()Landroidx/appcompat/widget/n;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/k0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/k0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/k0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/k0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/k0;

    return-object v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method M()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 4
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public N(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->O:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public O(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->i()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/x;->e(II)V

    return-void
.end method

.method public P(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public Q(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->j()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->H()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->B(Landroidx/appcompat/view/menu/m;)V

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->B(Landroidx/appcompat/view/menu/m;)V

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    :cond_3
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->B(Z)V

    if-eqz p1, :cond_4

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->h(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    .line 13
    iget-object v2, p1, Landroidx/appcompat/widget/Toolbar$d;->b:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_5

    iget-object v3, p1, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;

    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/g;->f(Landroidx/appcompat/view/menu/i;)Z

    .line 15
    :cond_5
    iput-object v1, p1, Landroidx/appcompat/widget/Toolbar$d;->b:Landroidx/appcompat/view/menu/g;

    .line 16
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->c(Z)V

    .line 17
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar$d;->c(Z)V

    .line 18
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->L(I)V

    .line 19
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->M(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 20
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/ActionMenuPresenter;

    return-void
.end method

.method public R(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/m$a;

    .line 2
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->N:Landroidx/appcompat/view/menu/g$a;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->J(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    :cond_0
    return-void
.end method

.method public S(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public T(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->k()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public U(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->k()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public V(Landroidx/appcompat/widget/Toolbar$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->H:Landroidx/appcompat/widget/Toolbar$e;

    return-void
.end method

.method public W(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public X(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 9
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    if-eqz v1, :cond_0

    .line 10
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->B:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;Z)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->z:Ljava/lang/CharSequence;

    return-void
.end method

.method public Y(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public Z(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 9
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    if-eqz v1, :cond_0

    .line 10
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->A:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->F(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;Z)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/Toolbar;->F(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;

    return-void
.end method

.method public a0(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public c0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->x()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->l()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method h()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f03030b

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->l()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 6
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    const/4 v1, 0x2

    .line 7
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$c;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected l()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected m(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 5
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->D:Z

    .line 3
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->D:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->D:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->D:Z

    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget v1, Lc3;->g:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 9
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->G:[I

    .line 10
    aput v3, v11, v2

    aput v3, v11, v3

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    .line 12
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 13
    :goto_1
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {v0, v13}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    .line 14
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    .line 15
    :cond_2
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {v0, v13, v6, v11, v12}, Landroidx/appcompat/widget/Toolbar;->I(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    move v14, v10

    .line 16
    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    .line 17
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    .line 18
    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->I(Landroid/view/View;I[II)I

    move-result v13

    .line 19
    :cond_5
    :goto_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    .line 20
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->I(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 21
    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;I[II)I

    move-result v14

    .line 22
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    if-ne v15, v2, :cond_8

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->p()I

    move-result v15

    goto :goto_6

    .line 24
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->q()I

    move-result v15

    .line 25
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->q()I

    move-result v3

    goto :goto_7

    .line 27
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->p()I

    move-result v3

    :goto_7
    sub-int v2, v15, v13

    move/from16 p4, v7

    const/4 v7, 0x0

    .line 28
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v7

    sub-int v2, v10, v14

    sub-int v2, v3, v2

    .line 29
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x1

    aput v2, v11, v7

    .line 30
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v10, v3

    .line 31
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 32
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v1, :cond_a

    .line 33
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    invoke-direct {v0, v7, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_8

    .line 34
    :cond_a
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    invoke-direct {v0, v7, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->I(Landroid/view/View;I[II)I

    move-result v2

    .line 35
    :cond_b
    :goto_8
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v1, :cond_c

    .line 36
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {v0, v7, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_9

    .line 37
    :cond_c
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {v0, v7, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->I(Landroid/view/View;I[II)I

    move-result v2

    .line 38
    :cond_d
    :goto_9
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v7

    .line 39
    iget-object v10, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {v0, v10}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v10

    if-eqz v7, :cond_e

    .line 40
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 41
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v13

    const/4 v13, 0x0

    add-int/lit8 v14, v15, 0x0

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    :goto_a
    if-eqz v10, :cond_f

    .line 42
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 43
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v13

    add-int/2addr v14, v4

    goto :goto_b

    :cond_f
    move/from16 v16, v4

    :goto_b
    if-nez v7, :cond_11

    if-eqz v10, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v17, v6

    move/from16 p3, v12

    goto/16 :goto_18

    :cond_11
    :goto_c
    if-eqz v7, :cond_12

    .line 44
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    goto :goto_d

    :cond_12
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    :goto_d
    if-eqz v10, :cond_13

    .line 45
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    goto :goto_e

    :cond_13
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 46
    :goto_e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v7, :cond_14

    .line 48
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_15

    :cond_14
    if-eqz v10, :cond_16

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_16

    :cond_15
    move/from16 v17, v6

    const/4 v15, 0x1

    goto :goto_f

    :cond_16
    move/from16 v17, v6

    const/4 v15, 0x0

    .line 50
    :goto_f
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->x:I

    and-int/lit8 v6, v6, 0x70

    move/from16 p3, v12

    const/16 v12, 0x30

    if-eq v6, v12, :cond_1a

    const/16 v12, 0x50

    if-eq v6, v12, :cond_19

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v14

    .line 51
    div-int/lit8 v6, v6, 0x2

    .line 52
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p5, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    move/from16 v18, v10

    add-int v10, v12, v2

    if-ge v6, v10, :cond_17

    add-int v6, v12, v2

    goto :goto_10

    :cond_17
    sub-int/2addr v5, v9

    sub-int/2addr v5, v14

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    .line 53
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->t:I

    add-int/2addr v2, v4

    if-ge v5, v2, :cond_18

    .line 54
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v5

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_18
    :goto_10
    add-int/2addr v8, v6

    goto :goto_11

    :cond_19
    move/from16 p5, v2

    move/from16 v18, v10

    sub-int/2addr v5, v9

    .line 55
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->t:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v14

    goto :goto_11

    :cond_1a
    move/from16 p5, v2

    move/from16 v18, v10

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    add-int v8, v2, v4

    :goto_11
    if-eqz v1, :cond_1f

    if-eqz v15, :cond_1b

    .line 57
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    goto :goto_12

    :cond_1b
    const/4 v1, 0x0

    :goto_12
    const/4 v2, 0x1

    aget v4, v11, v2

    sub-int/2addr v1, v4

    const/4 v4, 0x0

    .line 58
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v3, v5

    neg-int v1, v1

    .line 59
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v7, :cond_1c

    .line 60
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 61
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v3, v2

    .line 62
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 63
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 64
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    sub-int/2addr v2, v5

    .line 65
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v4, v1

    goto :goto_13

    :cond_1c
    move v2, v3

    :goto_13
    if-eqz v18, :cond_1d

    .line 66
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 67
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    .line 68
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v3, v1

    .line 69
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 70
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 71
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    sub-int v1, v3, v1

    goto :goto_14

    :cond_1d
    move v1, v3

    :goto_14
    if-eqz v15, :cond_1e

    .line 72
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v1

    :cond_1e
    move/from16 v2, p5

    goto :goto_18

    :cond_1f
    if-eqz v15, :cond_20

    .line 73
    iget v1, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    goto :goto_15

    :cond_20
    const/4 v1, 0x0

    :goto_15
    const/4 v2, 0x0

    aget v4, v11, v2

    sub-int/2addr v1, v4

    .line 74
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v4, v4, p5

    neg-int v1, v1

    .line 75
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v7, :cond_21

    .line 76
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 77
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v4

    .line 78
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 79
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v8, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 80
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    add-int/2addr v2, v6

    .line 81
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    goto :goto_16

    :cond_21
    move v2, v4

    :goto_16
    if-eqz v18, :cond_22

    .line 82
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 83
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    .line 84
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 85
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 86
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v8, v1, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 87
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    add-int/2addr v1, v5

    goto :goto_17

    :cond_22
    move v1, v4

    :goto_17
    if-eqz v15, :cond_23

    .line 88
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_18

    :cond_23
    move v2, v4

    .line 89
    :goto_18
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4}, Landroidx/appcompat/widget/Toolbar;->c(Ljava/util/List;I)V

    .line 90
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v2

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_24

    .line 91
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v12, p3

    invoke-direct {v0, v5, v4, v11, v12}, Landroidx/appcompat/widget/Toolbar;->I(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_24
    move/from16 v12, p3

    .line 92
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->c(Ljava/util/List;I)V

    .line 93
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_25

    .line 94
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {v0, v5, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->J(Landroid/view/View;I[II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 95
    :cond_25
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->c(Ljava/util/List;I)V

    .line 96
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 97
    aget v6, v11, v5

    .line 98
    aget v2, v11, v2

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1b
    if-ge v7, v5, :cond_26

    .line 100
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 101
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 102
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v13, v6

    .line 103
    iget v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    .line 104
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 105
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    neg-int v13, v13

    .line 106
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    neg-int v6, v6

    .line 107
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 108
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    add-int/2addr v9, v14

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    move v2, v6

    move v6, v13

    goto :goto_1b

    :cond_26
    const/4 v2, 0x0

    sub-int v1, v16, v17

    sub-int v1, v1, p4

    .line 109
    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v17

    .line 110
    div-int/lit8 v5, v8, 0x2

    sub-int/2addr v1, v5

    add-int/2addr v8, v1

    if-ge v1, v4, :cond_27

    goto :goto_1c

    :cond_27
    if-le v8, v3, :cond_28

    sub-int/2addr v8, v3

    sub-int v4, v1, v8

    goto :goto_1c

    :cond_28
    move v4, v1

    .line 111
    :goto_1c
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_29

    .line 112
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {v0, v2, v4, v11, v12}, Landroidx/appcompat/widget/Toolbar;->I(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 113
    :cond_29
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Landroidx/appcompat/widget/Toolbar;->G:[I

    .line 2
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/p0;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3
    :goto_0
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->p:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->L(Landroid/view/View;IIIII)V

    .line 5
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    .line 7
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 8
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    .line 10
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    .line 11
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v13, v1

    move v14, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 12
    :goto_1
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->p:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->L(Landroid/view/View;IIIII)V

    .line 14
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    .line 15
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    .line 17
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 18
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 19
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/widget/ImageButton;

    .line 20
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 21
    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    .line 22
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->q()I

    move-result v1

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v15, v2, 0x0

    sub-int/2addr v1, v0

    .line 24
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v11

    .line 25
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->p:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->L(Landroid/view/View;IIIII)V

    .line 27
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    .line 29
    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 30
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 31
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    .line 32
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredState()I

    move-result v1

    .line 33
    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 34
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->p()I

    move-result v1

    .line 35
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v11, v2, v15

    sub-int/2addr v1, v0

    .line 36
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v12

    .line 37
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->K(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    .line 39
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 40
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 42
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->j:Landroid/view/View;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 44
    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    .line 45
    :cond_4
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->K(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    .line 47
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    .line 48
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 50
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->f:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 52
    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    .line 53
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v12, :cond_8

    .line 54
    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 55
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 56
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v0, :cond_7

    invoke-direct {v7, v6}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v8

    .line 57
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->K(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    .line 58
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v16

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v13, v0

    move v14, v1

    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 60
    :cond_8
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->s:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->t:I

    add-int v12, v0, v1

    .line 61
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->q:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->r:I

    add-int v15, v0, v1

    .line 62
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    add-int v3, v11, v15

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v12

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->K(Landroid/view/View;IIII[I)I

    .line 64
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 66
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    invoke-static {v14, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    move/from16 v16, v1

    move v6, v14

    move v14, v0

    goto :goto_5

    :cond_9
    move v6, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 67
    :goto_5
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    add-int v3, v11, v15

    add-int v5, v16, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v12, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->K(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 69
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    .line 70
    invoke-direct {v7, v1}, Landroidx/appcompat/widget/Toolbar;->B(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v16, v0, v16

    .line 71
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 73
    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_6

    :cond_a
    move v12, v6

    :goto_6
    move/from16 v0, v16

    add-int/2addr v11, v14

    .line 74
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v11

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v6

    move/from16 v2, p1

    .line 78
    invoke-static {v0, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    .line 80
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 81
    iget-boolean v2, v7, Landroidx/appcompat/widget/Toolbar;->O:Z

    if-nez v2, :cond_b

    :goto_7
    const/4 v9, 0x0

    goto :goto_9

    .line 82
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_d

    .line 83
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 84
    invoke-direct {v7, v4}, Landroidx/appcompat/widget/Toolbar;->b0(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_c

    .line 85
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    if-eqz v9, :cond_e

    goto :goto_a

    :cond_e
    move v10, v1

    .line 86
    :goto_a
    invoke-virtual {v7, v0, v10}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->H()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->d:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 9
    :cond_2
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->e:Z

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->i()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/x;->d(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$d;->c:Landroidx/appcompat/view/menu/i;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->d:I

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionMenuView;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->e:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    .line 3
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    :cond_3
    return v3
.end method

.method public p()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->H()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_1
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()I

    move-result v1

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public q()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->u:Landroidx/appcompat/widget/x;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->b()I

    move-result v1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public s()Landroid/view/Menu;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/Toolbar;->j()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->H()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->A()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/g;

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->I(Z)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->k:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->A()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public u()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public v()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->z:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public w()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->t:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    return v0
.end method
