.class public Lcom/camerasideas/collagemaker/activity/adapter/i;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/adapter/i$c;,
        Lcom/camerasideas/collagemaker/activity/adapter/i$b;
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
.field private final c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lmn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public A(I)Lmn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmn;

    return-object p1
.end method

.method public B(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmn;

    .line 3
    invoke-virtual {v1}, Lmn;->e()Lhq;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmn;->e()Lhq;

    move-result-object v1

    iget-object v1, v1, Lfq;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public C(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmn;

    .line 3
    invoke-virtual {v1}, Lmn;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public D(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmn;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public E(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->d:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public F(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmn;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Ldq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object p2, Lcom/camerasideas/collagemaker/activity/adapter/a;->a:Lcom/camerasideas/collagemaker/activity/adapter/a;

    invoke-virtual {v0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    aget-object p2, p2, v0

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lmn;->l(Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Lc2;->n(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmn;->i(Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmn;

    invoke-virtual {p1}, Lmn;->b()I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    .line 2
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/i;->d(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/adapter/i$c;

    .line 4
    iget-object v4, v1, Lcom/camerasideas/collagemaker/activity/adapter/i$c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lmn;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 5
    iget-object v0, v1, Lcom/camerasideas/collagemaker/activity/adapter/i$c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Luq;->w(Landroid/widget/TextView;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/i;->d(I)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/i;->d(I)I

    move-result v1

    if-nez v1, :cond_7

    .line 7
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/camerasideas/collagemaker/activity/adapter/i$b;

    .line 8
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->a(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v4, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 9
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->b(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v4, v3}, Luq;->t(Landroid/view/View;Z)V

    .line 10
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->c(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v4

    invoke-virtual {v0}, Lmn;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->c:Landroid/content/Context;

    invoke-static {v5}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v4, v5}, Luq;->t(Landroid/view/View;Z)V

    .line 11
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->d(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b(D)V

    .line 12
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->c:Landroid/content/Context;

    invoke-static {v4}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v4

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->e(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/i;->l(Landroid/view/View;)V

    .line 13
    invoke-virtual {v0}, Lmn;->e()Lhq;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 14
    invoke-virtual {v0}, Lmn;->e()Lhq;

    move-result-object v4

    invoke-static {v4}, Lyp;->S(Lfq;)Z

    move-result v4

    .line 15
    invoke-static {}, Lyp;->F()Lyp;

    move-result-object v5

    invoke-virtual {v0}, Lmn;->e()Lhq;

    move-result-object v6

    iget-object v6, v6, Lfq;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lyp;->E(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 16
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 17
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->a(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v4, v2}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->d(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/camerasideas/collagemaker/activity/widget/squareprogressbar/SquareProgressView;->b(D)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 19
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->b(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v4, v3}, Luq;->t(Landroid/view/View;Z)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->b(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->c(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v5

    invoke-static {v5}, Luq;->g(Landroid/view/View;)Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-static {v4, v5}, Luq;->t(Landroid/view/View;Z)V

    .line 21
    :goto_1
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->e(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/c;->q(Landroid/view/View;)Lcom/bumptech/glide/i;

    move-result-object v4

    const-class v5, Landroid/graphics/drawable/PictureDrawable;

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;)Lcom/bumptech/glide/h;

    move-result-object v4

    new-instance v5, Ldr;

    invoke-direct {v5}, Ldr;-><init>()V

    .line 22
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/h;->f0(Lbk;)Lcom/bumptech/glide/h;

    move-result-object v4

    .line 23
    invoke-virtual {v0}, Lmn;->e()Lhq;

    move-result-object v0

    iget-object v0, v0, Lfq;->i:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/h;->j0(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->e(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    goto :goto_2

    .line 24
    :cond_6
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->e(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    move-result-object v4

    invoke-virtual {v0}, Lmn;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 25
    invoke-static {v1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;->e(Lcom/camerasideas/collagemaker/activity/adapter/i$b;)Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    move-result-object v0

    const/16 v1, 0xff

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 26
    :cond_7
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->d:I

    if-ne p2, v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/i$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0075

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/camerasideas/collagemaker/activity/adapter/i$c;-><init>(Landroid/view/View;Lcom/camerasideas/collagemaker/activity/adapter/i$a;)V

    return-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 2
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/i$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/i$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/i$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public z(I)Lmn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/i;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmn;

    return-object p1
.end method
