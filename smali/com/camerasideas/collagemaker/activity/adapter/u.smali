.class public Lcom/camerasideas/collagemaker/activity/adapter/u;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/adapter/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->d:I

    .line 3
    invoke-static {p1}, Lvn;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwn;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    return-object v0
.end method

.method public B(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwn;

    .line 4
    iget-object v1, v1, Lwn;->c:Liq;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lfq;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->d:I

    return v0
.end method

.method public D(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lwn;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public E(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->d:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->d:I

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwn;

    iget-object v1, v1, Lwn;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->d:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    .line 4
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->d:I

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->g(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    .line 2
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;

    .line 3
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 4
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->d:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f08012c

    invoke-virtual {v1, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b(D)V

    .line 6
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->f:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 7
    iget-object v1, v0, Lwn;->c:Liq;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 8
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 9
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->d:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 10
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 11
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->f:Landroid/widget/ImageView;

    iget-object v4, v0, Lwn;->c:Liq;

    iget v4, v4, Lfq;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->c:Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v1, v4}, Luq;->t(Landroid/view/View;Z)V

    .line 12
    iget-object v1, v0, Lwn;->c:Liq;

    invoke-static {v1}, Lyp;->S(Lfq;)Z

    move-result v1

    .line 13
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v4

    iget-object v5, v0, Lwn;->c:Liq;

    iget-object v5, v5, Lfq;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lyp;->E(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 15
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    const v4, 0x7f07011f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 18
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->c:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b(D)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 19
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    const v4, 0x7f07011e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->f:Landroid/widget/ImageView;

    invoke-static {v4}, Luq;->g(Landroid/view/View;)Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-static {v1, v4}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->b:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 22
    :goto_1
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v1

    iget-object v0, v0, Lwn;->c:Liq;

    iget-object v0, v0, Liq;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/w0;->u(Ljava/lang/String;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    sget-object v1, Lvd;->a:Lvd;

    .line 23
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/v0;->o0(Lvd;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    new-instance v1, Lbi;

    invoke-direct {v1}, Lbi;-><init>()V

    .line 24
    new-instance v4, Lpk$a;

    invoke-direct {v4}, Lpk$a;-><init>()V

    .line 25
    invoke-virtual {v4}, Lpk$a;->a()Lpk;

    move-result-object v4

    .line 26
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/j;->c(Ltk;)Lcom/bumptech/glide/j;

    .line 27
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->l0(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/h;

    .line 28
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xa0a0b

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/v0;->s0(Landroid/graphics/drawable/Drawable;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->d:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    .line 31
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->e:Landroid/view/View;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->d:I

    if-ne v0, p2, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 32
    :cond_5
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->d:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 33
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->a:Landroid/widget/TextView;

    invoke-static {v1, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 34
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lwn;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->c:Landroid/content/Context;

    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 36
    iget-object v1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    :cond_6
    iget-object p1, p1, Lcom/camerasideas/collagemaker/activity/adapter/u$a;->a:Landroid/widget/TextView;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->d:I

    if-ne v0, p2, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/u$a;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/u$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public z(I)Lwn;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/u;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwn;

    return-object p1
.end method
