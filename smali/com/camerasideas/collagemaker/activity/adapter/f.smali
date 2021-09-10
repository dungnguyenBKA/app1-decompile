.class public Lcom/camerasideas/collagemaker/activity/adapter/f;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/adapter/f$a;
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

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljn;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lin;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->d:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->c:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06026f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->d:Ljava/util/List;

    invoke-virtual {p2}, Lin;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljn;

    .line 2
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;

    .line 3
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 4
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 5
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljn;->h()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->c:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 6
    invoke-virtual {p2}, Ljn;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljn;->p(Z)V

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Ljn;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 8
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b(D)V

    .line 9
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/f$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v0

    invoke-virtual {p2}, Ljn;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/w0;->u(Ljava/lang/String;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    sget-object v2, Lvd;->a:Lvd;

    .line 11
    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/v0;->o0(Lvd;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    new-instance v2, Lbi;

    invoke-direct {v2}, Lbi;-><init>()V

    .line 12
    new-instance v4, Lpk$a;

    invoke-direct {v4}, Lpk$a;-><init>()V

    .line 13
    invoke-virtual {v4}, Lpk$a;->a()Lpk;

    move-result-object v4

    .line 14
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/j;->c(Ltk;)Lcom/bumptech/glide/j;

    .line 15
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->l0(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/h;

    .line 16
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x141415

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    invoke-virtual {v0, v2}, Lcom/camerasideas/collagemaker/activity/v0;->s0(Landroid/graphics/drawable/Drawable;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/f$a;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    .line 19
    invoke-virtual {p2}, Ljn;->f()Lgq;

    move-result-object v0

    invoke-static {v0}, Lyp;->S(Lfq;)Z

    move-result v0

    .line 20
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v2

    invoke-virtual {p2}, Ljn;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lyp;->E(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 22
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->d:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->b:Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b(D)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->c:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->e:Landroid/widget/ImageView;

    invoke-static {v2}, Luq;->g(Landroid/view/View;)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {v0, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 26
    :goto_1
    invoke-virtual {p2}, Ljn;->f()Lgq;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljn;->f()Lgq;

    move-result-object v0

    invoke-virtual {v0}, Lgq;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljn;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->f:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_2

    .line 28
    :cond_4
    iget-object v0, p1, Lcom/camerasideas/collagemaker/activity/adapter/f$a;->f:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Luq;->t(Landroid/view/View;Z)V

    .line 29
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/f$a;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/f$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/f;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method
