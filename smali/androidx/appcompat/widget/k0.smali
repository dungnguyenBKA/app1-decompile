.class public Landroidx/appcompat/widget/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/n;


# instance fields
.field a:Landroidx/appcompat/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field l:Landroid/view/Window$Callback;

.field m:Z

.field private n:Landroidx/appcompat/widget/ActionMenuPresenter;

.field private o:I

.field private p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/k0;->o:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->w()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->i:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->v()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->j:Ljava/lang/CharSequence;

    .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/k0;->h:Z

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/k0;->g:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/appcompat/R$styleable;->a:[I

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v3, v0}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object p1

    const/16 v1, 0xf

    .line 9
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/k0;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    const/16 p2, 0x1b

    .line 10
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iput-boolean v2, p0, Landroidx/appcompat/widget/k0;->h:Z

    .line 13
    iput-object p2, p0, Landroidx/appcompat/widget/k0;->i:Ljava/lang/CharSequence;

    .line 14
    iget v1, p0, Landroidx/appcompat/widget/k0;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/Toolbar;->Z(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 p2, 0x19

    .line 16
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    iput-object p2, p0, Landroidx/appcompat/widget/k0;->j:Ljava/lang/CharSequence;

    .line 19
    iget v1, p0, Landroidx/appcompat/widget/k0;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 20
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/Toolbar;->X(Ljava/lang/CharSequence;)V

    :cond_2
    const/16 p2, 0x14

    .line 21
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 22
    iput-object p2, p0, Landroidx/appcompat/widget/k0;->f:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/widget/k0;->A()V

    :cond_3
    const/16 p2, 0x11

    .line 24
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 25
    iput-object p2, p0, Landroidx/appcompat/widget/k0;->e:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/widget/k0;->A()V

    .line 27
    :cond_4
    iget-object p2, p0, Landroidx/appcompat/widget/k0;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Landroidx/appcompat/widget/k0;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 28
    iput-object p2, p0, Landroidx/appcompat/widget/k0;->g:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/widget/k0;->z()V

    :cond_5
    const/16 p2, 0xa

    .line 30
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/k0;->n(I)V

    const/16 p2, 0x9

    .line 31
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    if-eqz p2, :cond_8

    .line 32
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p2, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->d:Landroid/view/View;

    if-eqz v1, :cond_6

    iget v2, p0, Landroidx/appcompat/widget/k0;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 34
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    :cond_6
    iput-object p2, p0, Landroidx/appcompat/widget/k0;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 36
    iget v1, p0, Landroidx/appcompat/widget/k0;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    .line 37
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    :cond_7
    iget p2, p0, Landroidx/appcompat/widget/k0;->b:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/k0;->n(I)V

    :cond_8
    const/16 p2, 0xd

    .line 39
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/i0;->m(II)I

    move-result p2

    if-lez p2, :cond_9

    .line 40
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 41
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    iget-object p2, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const/4 p2, 0x7

    const/4 v1, -0x1

    .line 43
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result p2

    const/4 v2, 0x3

    .line 44
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result v1

    if-gez p2, :cond_a

    if-ltz v1, :cond_b

    .line 45
    :cond_a
    iget-object v2, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 46
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 47
    invoke-virtual {v2, p2, v1}, Landroidx/appcompat/widget/Toolbar;->O(II)V

    :cond_b
    const/16 p2, 0x1c

    .line 48
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    if-eqz p2, :cond_c

    .line 49
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroidx/appcompat/widget/Toolbar;->a0(Landroid/content/Context;I)V

    :cond_c
    const/16 p2, 0x1a

    .line 50
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    if-eqz p2, :cond_d

    .line 51
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroidx/appcompat/widget/Toolbar;->Y(Landroid/content/Context;I)V

    :cond_d
    const/16 p2, 0x16

    .line 52
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    if-eqz p2, :cond_10

    .line 53
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->W(I)V

    goto :goto_2

    .line 54
    :cond_e
    iget-object p2, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->u()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 55
    iget-object p2, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->u()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/k0;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_f
    const/16 v1, 0xb

    .line 56
    :goto_1
    iput v1, p0, Landroidx/appcompat/widget/k0;->b:I

    .line 57
    :cond_10
    :goto_2
    invoke-virtual {p1}, Landroidx/appcompat/widget/i0;->v()V

    .line 58
    iget p1, p0, Landroidx/appcompat/widget/k0;->o:I

    const p2, 0x7f0e0002

    if-ne p2, p1, :cond_11

    goto :goto_4

    .line 59
    :cond_11
    iput p2, p0, Landroidx/appcompat/widget/k0;->o:I

    .line 60
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->t()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 61
    iget p1, p0, Landroidx/appcompat/widget/k0;->o:I

    if-nez p1, :cond_12

    goto :goto_3

    .line 62
    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/widget/k0;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    :goto_3
    iput-object v4, p0, Landroidx/appcompat/widget/k0;->k:Ljava/lang/CharSequence;

    .line 64
    invoke-direct {p0}, Landroidx/appcompat/widget/k0;->y()V

    .line 65
    :cond_13
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->t()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/k0;->k:Ljava/lang/CharSequence;

    .line 66
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, Landroidx/appcompat/widget/j0;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/j0;-><init>(Landroidx/appcompat/widget/k0;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->U(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/k0;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->P(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/k0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/k0;->o:I

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->S(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/k0;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->S(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/k0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Landroidx/appcompat/widget/k0;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->p:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->T(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->T(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    const v1, 0x7f08003e

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/b;->p(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/b;->g(Landroidx/appcompat/view/menu/m$a;)V

    .line 5
    iget-object p2, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->n:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/Toolbar;->Q(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/widget/ActionMenuPresenter;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/k0;->h:Z

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->i:Ljava/lang/CharSequence;

    .line 3
    iget v0, p0, Landroidx/appcompat/widget/k0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->Z(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->H()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->f()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/k0;->m:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public f(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->l:Landroid/view/Window$Callback;

    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 2
    sget v1, Lc3;->g:I

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->G()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->E()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->c0()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->g()V

    return-void
.end method

.method public l(Landroidx/appcompat/widget/y;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/k0;->c:Landroid/view/View;

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->D()Z

    move-result v0

    return v0
.end method

.method public n(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/k0;->b:I

    xor-int/2addr v0, p1

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/k0;->b:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/k0;->y()V

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/k0;->z()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/widget/k0;->A()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->Z(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Landroidx/appcompat/widget/k0;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->X(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->Z(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->X(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->d:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 12
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public o()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->s()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(IJ)Lh3;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lc3;->a(Landroid/view/View;)Lh3;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Lh3;->a(F)Lh3;

    .line 3
    invoke-virtual {v0, p2, p3}, Lh3;->d(J)Lh3;

    new-instance p2, Landroidx/appcompat/widget/k0$a;

    invoke-direct {p2, p0, p1}, Landroidx/appcompat/widget/k0$a;-><init>(Landroidx/appcompat/widget/k0;I)V

    .line 4
    invoke-virtual {v0, p2}, Lh3;->f(Li3;)Lh3;

    return-object v0
.end method

.method public r(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/Toolbar;->R(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    return-void
.end method

.method public s()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/k0;->b:I

    return v0
.end method

.method public v()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public x(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->N(Z)V

    return-void
.end method
