.class Landroidx/appcompat/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/k$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/g0;

.field private c:Landroidx/appcompat/widget/g0;

.field private d:Landroidx/appcompat/widget/g0;

.field private e:Landroidx/appcompat/widget/g0;

.field private f:Landroidx/appcompat/widget/g0;

.field private g:Landroidx/appcompat/widget/g0;

.field private h:Landroidx/appcompat/widget/g0;

.field private final i:Landroidx/appcompat/widget/l;

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/k;->j:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/k;->k:I

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    .line 5
    new-instance v0, Landroidx/appcompat/widget/l;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/l;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    .line 2
    sget v1, Landroidx/appcompat/widget/e;->d:I

    .line 3
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/v;->o(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;[I)V

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/g0;
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/e;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p1, Landroidx/appcompat/widget/g0;

    invoke-direct {p1}, Landroidx/appcompat/widget/g0;-><init>()V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Landroidx/appcompat/widget/g0;->d:Z

    .line 4
    iput-object p0, p1, Landroidx/appcompat/widget/g0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private v(Landroid/content/Context;Landroidx/appcompat/widget/i0;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/k;->j:I

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/k;->j:I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    const/4 v4, -0x1

    if-lt v0, v3, :cond_0

    const/16 v5, 0xb

    .line 3
    invoke-virtual {p2, v5, v4}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/k;->k:I

    if-eq v5, v4, :cond_0

    .line 4
    iget v5, p0, Landroidx/appcompat/widget/k;->j:I

    and-int/2addr v5, v1

    or-int/2addr v5, v2

    iput v5, p0, Landroidx/appcompat/widget/k;->j:I

    :cond_0
    const/16 v5, 0xa

    .line 5
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v6

    const/16 v7, 0xc

    const/4 v8, 0x1

    if-nez v6, :cond_6

    .line 6
    invoke-virtual {p2, v7}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2, v8}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    iput-boolean v2, p0, Landroidx/appcompat/widget/k;->m:Z

    .line 9
    invoke-virtual {p2, v8, v8}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result p1

    if-eq p1, v8, :cond_4

    if-eq p1, v1, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 11
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 12
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 13
    iput-object v6, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    .line 14
    invoke-virtual {p2, v7}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v5, 0xc

    .line 15
    :cond_7
    iget v6, p0, Landroidx/appcompat/widget/k;->k:I

    .line 16
    iget v7, p0, Landroidx/appcompat/widget/k;->j:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    .line 18
    new-instance p1, Landroidx/appcompat/widget/k$a;

    invoke-direct {p1, p0, v6, v7}, Landroidx/appcompat/widget/k$a;-><init>(Landroidx/appcompat/widget/k;II)V

    .line 19
    :try_start_0
    iget v6, p0, Landroidx/appcompat/widget/k;->j:I

    invoke-virtual {p2, v5, v6, p1}, Landroidx/appcompat/widget/i0;->j(IILj1;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v3, :cond_9

    .line 20
    iget v0, p0, Landroidx/appcompat/widget/k;->k:I

    if-eq v0, v4, :cond_9

    .line 21
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/widget/k;->k:I

    iget v6, p0, Landroidx/appcompat/widget/k;->j:I

    and-int/2addr v6, v1

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    .line 22
    :goto_2
    invoke-static {p1, v0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    goto :goto_3

    .line 23
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    .line 24
    :cond_a
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/k;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    .line 25
    :cond_c
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    .line 26
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 27
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_e

    iget p2, p0, Landroidx/appcompat/widget/k;->k:I

    if-eq p2, v4, :cond_e

    .line 28
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/k;->k:I

    iget v0, p0, Landroidx/appcompat/widget/k;->j:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    .line 29
    :cond_d
    invoke-static {p1, p2, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    goto :goto_6

    .line 30
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/k;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Landroidx/appcompat/widget/g0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Landroidx/appcompat/widget/g0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/g0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/g0;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/k;->b:Landroidx/appcompat/widget/g0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;)V

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/k;->c:Landroidx/appcompat/widget/g0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;)V

    .line 5
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/g0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;)V

    const/4 v3, 0x3

    .line 6
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/g0;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;)V

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/g0;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/g0;

    if-eqz v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/g0;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;)V

    .line 10
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/g0;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/k;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;)V

    :cond_3
    return-void
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->a()V

    return-void
.end method

.method e()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->d()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->e()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->f()I

    move-result v0

    return v0
.end method

.method h()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->g()[I

    move-result-object v0

    return-object v0
.end method

.method i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->h()I

    move-result v0

    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->k()Z

    move-result v0

    return v0
.end method

.method k(Landroid/util/AttributeSet;I)V
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    invoke-static {}, Landroidx/appcompat/widget/e;->b()Landroidx/appcompat/widget/e;

    move-result-object v4

    .line 3
    sget-object v5, Landroidx/appcompat/R$styleable;->i:[I

    const/4 v6, 0x0

    invoke-static {v3, v1, v5, v2, v6}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object v5

    const/4 v7, -0x1

    .line 4
    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v8

    const/4 v9, 0x3

    .line 5
    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6
    invoke-virtual {v5, v9, v6}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v10

    .line 7
    invoke-static {v3, v4, v10}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/g0;

    move-result-object v10

    iput-object v10, v0, Landroidx/appcompat/widget/k;->b:Landroidx/appcompat/widget/g0;

    :cond_0
    const/4 v10, 0x1

    .line 8
    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 9
    invoke-virtual {v5, v10, v6}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v11

    .line 10
    invoke-static {v3, v4, v11}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/g0;

    move-result-object v11

    iput-object v11, v0, Landroidx/appcompat/widget/k;->c:Landroidx/appcompat/widget/g0;

    :cond_1
    const/4 v11, 0x4

    .line 11
    invoke-virtual {v5, v11}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 12
    invoke-virtual {v5, v11, v6}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v12

    .line 13
    invoke-static {v3, v4, v12}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/g0;

    move-result-object v12

    iput-object v12, v0, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/g0;

    :cond_2
    const/4 v12, 0x2

    .line 14
    invoke-virtual {v5, v12}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 15
    invoke-virtual {v5, v12, v6}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v13

    .line 16
    invoke-static {v3, v4, v13}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/g0;

    move-result-object v13

    iput-object v13, v0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/g0;

    .line 17
    :cond_3
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v14, 0x5

    .line 18
    invoke-virtual {v5, v14}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 19
    invoke-virtual {v5, v14, v6}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v15

    .line 20
    invoke-static {v3, v4, v15}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/g0;

    move-result-object v15

    iput-object v15, v0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/g0;

    :cond_4
    const/4 v15, 0x6

    .line 21
    invoke-virtual {v5, v15}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 22
    invoke-virtual {v5, v15, v6}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v10

    .line 23
    invoke-static {v3, v4, v10}, Landroidx/appcompat/widget/k;->d(Landroid/content/Context;Landroidx/appcompat/widget/e;I)Landroidx/appcompat/widget/g0;

    move-result-object v10

    iput-object v10, v0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/g0;

    .line 24
    :cond_5
    invoke-virtual {v5}, Landroidx/appcompat/widget/i0;->v()V

    .line 25
    iget-object v5, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v5}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v5

    instance-of v5, v5, Landroid/text/method/PasswordTransformationMethod;

    const/16 v15, 0xe

    const/16 v10, 0x17

    if-eq v8, v7, :cond_d

    .line 27
    sget-object v12, Landroidx/appcompat/R$styleable;->y:[I

    invoke-static {v3, v8, v12}, Landroidx/appcompat/widget/i0;->s(Landroid/content/Context;I[I)Landroidx/appcompat/widget/i0;

    move-result-object v8

    if-nez v5, :cond_6

    .line 28
    invoke-virtual {v8, v15}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 29
    invoke-virtual {v8, v15, v6}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v12

    const/16 v19, 0x1

    goto :goto_0

    :cond_6
    const/4 v12, 0x0

    const/16 v19, 0x0

    .line 30
    :goto_0
    invoke-direct {v0, v3, v8}, Landroidx/appcompat/widget/k;->v(Landroid/content/Context;Landroidx/appcompat/widget/i0;)V

    if-ge v13, v10, :cond_9

    .line 31
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 32
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    goto :goto_1

    :cond_7
    const/16 v20, 0x0

    .line 33
    :goto_1
    invoke-virtual {v8, v11}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 34
    invoke-virtual {v8, v11}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    goto :goto_2

    :cond_8
    const/16 v21, 0x0

    .line 35
    :goto_2
    invoke-virtual {v8, v14}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 36
    invoke-virtual {v8, v14}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    const/16 v7, 0xf

    goto :goto_3

    :cond_9
    const/16 v20, 0x0

    const/16 v21, 0x0

    :cond_a
    const/16 v7, 0xf

    const/16 v22, 0x0

    .line 37
    :goto_3
    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 38
    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v23

    const/16 v7, 0x1a

    goto :goto_4

    :cond_b
    const/16 v7, 0x1a

    const/16 v23, 0x0

    :goto_4
    if-lt v13, v7, :cond_c

    const/16 v7, 0xd

    .line 39
    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 40
    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_5

    :cond_c
    const/16 v24, 0x0

    .line 41
    :goto_5
    invoke-virtual {v8}, Landroidx/appcompat/widget/i0;->v()V

    goto :goto_6

    :cond_d
    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 42
    :goto_6
    sget-object v7, Landroidx/appcompat/R$styleable;->y:[I

    invoke-static {v3, v1, v7, v2, v6}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object v7

    if-nez v5, :cond_e

    .line 43
    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 44
    invoke-virtual {v7, v15, v6}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v12

    const/16 v19, 0x1

    :cond_e
    if-ge v13, v10, :cond_11

    .line 45
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 46
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    .line 47
    :cond_f
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 48
    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    .line 49
    :cond_10
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 50
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    :cond_11
    move-object/from16 v8, v20

    move-object/from16 v11, v21

    move-object/from16 v14, v22

    const/16 v15, 0xf

    .line 51
    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 52
    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v23

    :cond_12
    move-object/from16 v15, v23

    const/16 v10, 0x1a

    if-lt v13, v10, :cond_13

    const/16 v10, 0xd

    .line 53
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 54
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object v24

    :cond_13
    move-object/from16 v10, v24

    const/16 v9, 0x1c

    if-lt v13, v9, :cond_14

    .line 55
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, -0x1

    .line 56
    invoke-virtual {v7, v6, v9}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v21

    if-nez v21, :cond_14

    .line 57
    iget-object v9, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    move-object/from16 v21, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_7

    :cond_14
    move-object/from16 v21, v4

    .line 58
    :goto_7
    invoke-direct {v0, v3, v7}, Landroidx/appcompat/widget/k;->v(Landroid/content/Context;Landroidx/appcompat/widget/i0;)V

    .line 59
    invoke-virtual {v7}, Landroidx/appcompat/widget/i0;->v()V

    if-eqz v8, :cond_15

    .line 60
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_15
    if-eqz v11, :cond_16

    .line 61
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    if-eqz v14, :cond_17

    .line 62
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17
    if-nez v5, :cond_18

    if-eqz v19, :cond_18

    .line 63
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 64
    :cond_18
    iget-object v4, v0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    if-eqz v4, :cond_1a

    .line 65
    iget v5, v0, Landroidx/appcompat/widget/k;->k:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_19

    .line 66
    iget-object v5, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    iget v7, v0, Landroidx/appcompat/widget/k;->j:I

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_8

    .line 67
    :cond_19
    iget-object v5, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1a
    :goto_8
    if-eqz v10, :cond_1b

    .line 68
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_1b
    if-eqz v15, :cond_1d

    const/16 v4, 0x18

    if-lt v13, v4, :cond_1c

    .line 69
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-static {v15}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_9

    :cond_1c
    const/16 v4, 0x15

    if-lt v13, v4, :cond_1d

    const/16 v4, 0x2c

    .line 70
    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v15, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v5, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 72
    :cond_1d
    :goto_9
    iget-object v4, v0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v4, v1, v2}, Landroidx/appcompat/widget/l;->l(Landroid/util/AttributeSet;I)V

    .line 73
    sget-boolean v2, Landroidx/core/widget/b;->a:Z

    if-eqz v2, :cond_1f

    .line 74
    iget-object v2, v0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v2}, Landroidx/appcompat/widget/l;->h()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 75
    iget-object v2, v0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    .line 76
    invoke-virtual {v2}, Landroidx/appcompat/widget/l;->g()[I

    move-result-object v2

    .line 77
    array-length v4, v2

    if-lez v4, :cond_1f

    .line 78
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1e

    .line 79
    iget-object v2, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    iget-object v4, v0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    .line 80
    invoke-virtual {v4}, Landroidx/appcompat/widget/l;->e()I

    move-result v4

    iget-object v5, v0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    .line 81
    invoke-virtual {v5}, Landroidx/appcompat/widget/l;->d()I

    move-result v5

    iget-object v7, v0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    .line 82
    invoke-virtual {v7}, Landroidx/appcompat/widget/l;->f()I

    move-result v7

    .line 83
    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_a

    .line 84
    :cond_1e
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 85
    :cond_1f
    :goto_a
    sget-object v2, Landroidx/appcompat/R$styleable;->j:[I

    invoke-static {v3, v1, v2}, Landroidx/appcompat/widget/i0;->t(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/i0;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v4, -0x1

    .line 86
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v2

    if-eq v2, v4, :cond_20

    move-object/from16 v5, v21

    .line 87
    invoke-virtual {v5, v3, v2}, Landroidx/appcompat/widget/e;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_b

    :cond_20
    move-object/from16 v5, v21

    const/4 v2, 0x0

    :goto_b
    const/16 v7, 0xd

    .line 88
    invoke-virtual {v1, v7, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v7

    if-eq v7, v4, :cond_21

    .line 89
    invoke-virtual {v5, v3, v7}, Landroidx/appcompat/widget/e;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_c

    :cond_21
    const/4 v7, 0x0

    :goto_c
    const/16 v8, 0x9

    .line 90
    invoke-virtual {v1, v8, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v8

    if-eq v8, v4, :cond_22

    .line 91
    invoke-virtual {v5, v3, v8}, Landroidx/appcompat/widget/e;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_d

    :cond_22
    const/4 v8, 0x0

    :goto_d
    const/4 v9, 0x6

    .line 92
    invoke-virtual {v1, v9, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v9

    if-eq v9, v4, :cond_23

    .line 93
    invoke-virtual {v5, v3, v9}, Landroidx/appcompat/widget/e;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_e

    :cond_23
    const/4 v9, 0x0

    :goto_e
    const/16 v10, 0xa

    .line 94
    invoke-virtual {v1, v10, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v10

    if-eq v10, v4, :cond_24

    .line 95
    invoke-virtual {v5, v3, v10}, Landroidx/appcompat/widget/e;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_f

    :cond_24
    const/4 v10, 0x0

    :goto_f
    const/4 v11, 0x7

    .line 96
    invoke-virtual {v1, v11, v4}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v11

    if-eq v11, v4, :cond_25

    .line 97
    invoke-virtual {v5, v3, v11}, Landroidx/appcompat/widget/e;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_10

    :cond_25
    const/4 v3, 0x0

    :goto_10
    if-nez v10, :cond_30

    if-eqz v3, :cond_26

    goto :goto_18

    :cond_26
    if-nez v2, :cond_27

    if-nez v7, :cond_27

    if-nez v8, :cond_27

    if-eqz v9, :cond_35

    .line 98
    :cond_27
    iget-object v3, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 99
    aget-object v4, v3, v6

    if-nez v4, :cond_2d

    const/4 v4, 0x2

    aget-object v5, v3, v4

    if-eqz v5, :cond_28

    goto :goto_15

    .line 100
    :cond_28
    iget-object v3, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 101
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_29

    goto :goto_11

    :cond_29
    aget-object v2, v3, v6

    :goto_11
    if-eqz v7, :cond_2a

    goto :goto_12

    :cond_2a
    const/4 v5, 0x1

    aget-object v7, v3, v5

    :goto_12
    if-eqz v8, :cond_2b

    goto :goto_13

    :cond_2b
    const/4 v5, 0x2

    aget-object v8, v3, v5

    :goto_13
    if-eqz v9, :cond_2c

    goto :goto_14

    :cond_2c
    const/4 v5, 0x3

    aget-object v9, v3, v5

    :goto_14
    invoke-virtual {v4, v2, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 102
    :cond_2d
    :goto_15
    iget-object v2, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    aget-object v4, v3, v6

    if-eqz v7, :cond_2e

    goto :goto_16

    :cond_2e
    const/4 v5, 0x1

    aget-object v7, v3, v5

    :goto_16
    const/4 v5, 0x2

    aget-object v5, v3, v5

    if-eqz v9, :cond_2f

    goto :goto_17

    :cond_2f
    const/4 v6, 0x3

    aget-object v9, v3, v6

    :goto_17
    invoke-virtual {v2, v4, v7, v5, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 103
    :cond_30
    :goto_18
    iget-object v2, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 104
    iget-object v4, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    if-eqz v10, :cond_31

    goto :goto_19

    :cond_31
    aget-object v10, v2, v6

    :goto_19
    if-eqz v7, :cond_32

    goto :goto_1a

    :cond_32
    const/4 v5, 0x1

    aget-object v7, v2, v5

    :goto_1a
    if-eqz v3, :cond_33

    goto :goto_1b

    :cond_33
    const/4 v3, 0x2

    aget-object v3, v2, v3

    :goto_1b
    if-eqz v9, :cond_34

    goto :goto_1c

    :cond_34
    const/4 v5, 0x3

    aget-object v9, v2, v5

    :goto_1c
    invoke-virtual {v4, v10, v7, v3, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_35
    :goto_1d
    const/16 v2, 0xb

    .line 105
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 106
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 107
    iget-object v3, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    .line 108
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x17

    if-lt v13, v4, :cond_36

    .line 109
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1e

    .line 110
    :cond_36
    instance-of v4, v3, Landroidx/core/widget/g;

    if-eqz v4, :cond_37

    .line 111
    check-cast v3, Landroidx/core/widget/g;

    invoke-interface {v3, v2}, Landroidx/core/widget/g;->i(Landroid/content/res/ColorStateList;)V

    :cond_37
    :goto_1e
    const/16 v2, 0xc

    .line 112
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, -0x1

    .line 113
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    const/4 v3, 0x0

    .line 114
    invoke-static {v2, v3}, Landroidx/appcompat/widget/o;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 115
    iget-object v3, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    .line 116
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x17

    if-lt v13, v4, :cond_38

    .line 117
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1f

    .line 118
    :cond_38
    instance-of v4, v3, Landroidx/core/widget/g;

    if-eqz v4, :cond_39

    .line 119
    check-cast v3, Landroidx/core/widget/g;

    invoke-interface {v3, v2}, Landroidx/core/widget/g;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_39
    :goto_1f
    const/16 v2, 0xe

    const/4 v3, -0x1

    .line 120
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v2

    const/16 v4, 0x11

    .line 121
    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v4

    const/16 v5, 0x12

    .line 122
    invoke-virtual {v1, v5, v3}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v5

    .line 123
    invoke-virtual {v1}, Landroidx/appcompat/widget/i0;->v()V

    if-eq v2, v3, :cond_3a

    .line 124
    iget-object v1, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroidx/core/widget/c;->d(Landroid/widget/TextView;I)V

    :cond_3a
    if-eq v4, v3, :cond_3b

    .line 125
    iget-object v1, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroidx/core/widget/c;->e(Landroid/widget/TextView;I)V

    :cond_3b
    if-eq v5, v3, :cond_3c

    .line 126
    iget-object v1, v0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroidx/core/widget/c;->f(Landroid/widget/TextView;I)V

    :cond_3c
    return-void
.end method

.method l()V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0}, Landroidx/appcompat/widget/l;->a()V

    :cond_0
    return-void
.end method

.method m(Landroid/content/Context;I)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->y:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/i0;->s(Landroid/content/Context;I[I)Landroidx/appcompat/widget/i0;

    move-result-object p2

    const/16 v0, 0xe

    .line 2
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v0

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v3, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9
    :cond_1
    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    .line 10
    invoke-virtual {p2, v2, v1}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v1

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/k;->v(Landroid/content/Context;Landroidx/appcompat/widget/i0;)V

    const/16 p1, 0x1a

    if-lt v0, p1, :cond_3

    const/16 p1, 0xd

    .line 13
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/i0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 16
    :cond_3
    invoke-virtual {p2}, Landroidx/appcompat/widget/i0;->v()V

    .line 17
    iget-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_4

    .line 18
    iget-object p2, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/k;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4
    return-void
.end method

.method public n(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method o(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/l;->m(IIII)V

    return-void
.end method

.method p([II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/l;->n([II)V

    return-void
.end method

.method q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/l;->o(I)V

    return-void
.end method

.method r(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/g0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/g0;

    invoke-direct {v0}, Landroidx/appcompat/widget/g0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/g0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/g0;

    iput-object p1, v0, Landroidx/appcompat/widget/g0;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/g0;->d:Z

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/k;->b:Landroidx/appcompat/widget/g0;

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/k;->c:Landroidx/appcompat/widget/g0;

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/g0;

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/g0;

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/g0;

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/g0;

    return-void
.end method

.method s(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/g0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/g0;

    invoke-direct {v0}, Landroidx/appcompat/widget/g0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/g0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->h:Landroidx/appcompat/widget/g0;

    iput-object p1, v0, Landroidx/appcompat/widget/g0;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/g0;->c:Z

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/k;->b:Landroidx/appcompat/widget/g0;

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/k;->c:Landroidx/appcompat/widget/g0;

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/g0;

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/g0;

    .line 9
    iput-object v0, p0, Landroidx/appcompat/widget/k;->f:Landroidx/appcompat/widget/g0;

    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/k;->g:Landroidx/appcompat/widget/g0;

    return-void
.end method

.method t(IF)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/k;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/k;->i:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/l;->p(IF)V

    :cond_0
    return-void
.end method

.method public u(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/k;->m:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/k;->l:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method
