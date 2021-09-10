.class Landroidx/appcompat/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroidx/appcompat/widget/e;

.field private c:I

.field private d:Landroidx/appcompat/widget/g0;

.field private e:Landroidx/appcompat/widget/g0;

.field private f:Landroidx/appcompat/widget/g0;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/c;->c:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    .line 4
    invoke-static {}, Landroidx/appcompat/widget/e;->b()Landroidx/appcompat/widget/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/c;->b:Landroidx/appcompat/widget/e;

    return-void
.end method


# virtual methods
.method a()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    .line 3
    iget-object v5, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/g0;

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_0

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_9

    .line 4
    iget-object v5, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/widget/g0;

    if-nez v5, :cond_2

    .line 5
    new-instance v5, Landroidx/appcompat/widget/g0;

    invoke-direct {v5}, Landroidx/appcompat/widget/g0;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/widget/g0;

    .line 6
    :cond_2
    iget-object v5, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/widget/g0;

    const/4 v6, 0x0

    .line 7
    iput-object v6, v5, Landroidx/appcompat/widget/g0;->a:Landroid/content/res/ColorStateList;

    .line 8
    iput-boolean v4, v5, Landroidx/appcompat/widget/g0;->d:Z

    .line 9
    iput-object v6, v5, Landroidx/appcompat/widget/g0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 10
    iput-boolean v4, v5, Landroidx/appcompat/widget/g0;->c:Z

    .line 11
    iget-object v7, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    invoke-static {v7}, Lc3;->h(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 12
    iput-boolean v3, v5, Landroidx/appcompat/widget/g0;->d:Z

    .line 13
    iput-object v7, v5, Landroidx/appcompat/widget/g0;->a:Landroid/content/res/ColorStateList;

    .line 14
    :cond_3
    iget-object v7, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    if-lt v1, v2, :cond_4

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    goto :goto_2

    .line 16
    :cond_4
    instance-of v1, v7, Lb3;

    if-eqz v1, :cond_5

    check-cast v7, Lb3;

    .line 17
    invoke-interface {v7}, Lb3;->g()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 18
    iput-boolean v3, v5, Landroidx/appcompat/widget/g0;->c:Z

    .line 19
    iput-object v6, v5, Landroidx/appcompat/widget/g0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 20
    :cond_6
    iget-boolean v1, v5, Landroidx/appcompat/widget/g0;->d:Z

    if-nez v1, :cond_8

    iget-boolean v1, v5, Landroidx/appcompat/widget/g0;->c:Z

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    .line 21
    :cond_8
    :goto_3
    iget-object v1, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 22
    sget v2, Landroidx/appcompat/widget/e;->d:I

    .line 23
    invoke-static {v0, v5, v1}, Landroidx/appcompat/widget/v;->o(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;[I)V

    :goto_4
    if-eqz v3, :cond_9

    return-void

    .line 24
    :cond_9
    iget-object v1, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    if-eqz v1, :cond_a

    .line 25
    iget-object v2, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 27
    sget v3, Landroidx/appcompat/widget/e;->d:I

    .line 28
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/v;->o(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;[I)V

    goto :goto_5

    .line 29
    :cond_a
    iget-object v1, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/g0;

    if-eqz v1, :cond_b

    .line 30
    iget-object v2, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 32
    sget v3, Landroidx/appcompat/widget/e;->d:I

    .line 33
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/v;->o(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/g0;[I)V

    :cond_b
    :goto_5
    return-void
.end method

.method b()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/g0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/g0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method d(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->B:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/i0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/i0;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/c;->c:I

    .line 4
    iget-object p2, p0, Landroidx/appcompat/widget/c;->b:Landroidx/appcompat/widget/e;

    iget-object v1, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Landroidx/appcompat/widget/c;->c:I

    invoke-virtual {p2, v1, v3}, Landroidx/appcompat/widget/e;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/c;->g(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v1

    const/16 v3, 0x15

    if-eqz v1, :cond_5

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    .line 9
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 10
    sget v5, Lc3;->g:I

    .line 11
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_4

    .line 12
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    if-ne v5, v3, :cond_5

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_2

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 16
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 18
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 19
    :cond_4
    instance-of v5, v1, Lb3;

    if-eqz v5, :cond_5

    .line 20
    check-cast v1, Lb3;

    invoke-interface {v1, v4}, Lb3;->h(Landroid/content/res/ColorStateList;)V

    :cond_5
    :goto_2
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 22
    iget-object v4, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    .line 23
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v0

    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Landroidx/appcompat/widget/o;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 25
    sget v1, Lc3;->g:I

    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_9

    .line 27
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    if-ne v1, v3, :cond_a

    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_6

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 31
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 33
    :cond_8
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 34
    :cond_9
    instance-of p2, v4, Lb3;

    if-eqz p2, :cond_a

    .line 35
    check-cast v4, Lb3;

    invoke-interface {v4, v0}, Lb3;->j(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_a
    :goto_3
    invoke-virtual {p1}, Landroidx/appcompat/widget/i0;->v()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroidx/appcompat/widget/i0;->v()V

    .line 37
    throw p2
.end method

.method e()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/c;->c:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/c;->g(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->a()V

    return-void
.end method

.method f(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/c;->c:I

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/c;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/c;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/e;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/c;->g(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->a()V

    return-void
.end method

.method g(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/g0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/g0;

    invoke-direct {v0}, Landroidx/appcompat/widget/g0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/g0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/g0;

    iput-object p1, v0, Landroidx/appcompat/widget/g0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/g0;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/c;->d:Landroidx/appcompat/widget/g0;

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->a()V

    return-void
.end method

.method h(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/g0;

    invoke-direct {v0}, Landroidx/appcompat/widget/g0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    iput-object p1, v0, Landroidx/appcompat/widget/g0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/g0;->d:Z

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->a()V

    return-void
.end method

.method i(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/g0;

    invoke-direct {v0}, Landroidx/appcompat/widget/g0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c;->e:Landroidx/appcompat/widget/g0;

    iput-object p1, v0, Landroidx/appcompat/widget/g0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/widget/g0;->c:Z

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->a()V

    return-void
.end method
