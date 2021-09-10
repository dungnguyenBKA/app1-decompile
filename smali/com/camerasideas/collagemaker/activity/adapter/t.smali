.class public Lcom/camerasideas/collagemaker/activity/adapter/t;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/adapter/t$a;,
        Lcom/camerasideas/collagemaker/activity/adapter/t$c;,
        Lcom/camerasideas/collagemaker/activity/adapter/t$b;
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
            "Lun;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private final j:Lrh;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lun;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->e:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->f:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->g:Ljava/util/List;

    .line 6
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->h:I

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->c:Landroid/content/Context;

    const/high16 p1, 0x41200000    # 10.0f

    .line 9
    invoke-static {p2, p1}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->i:I

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun;

    invoke-virtual {v1}, Lun;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 13
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->h:I

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 17
    :goto_2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 18
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun;

    invoke-virtual {v1}, Lun;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 19
    sget-object v1, Lcom/camerasideas/collagemaker/appdata/b;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lun;

    invoke-virtual {v2}, Lun;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lun;

    invoke-virtual {v3}, Lun;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    :cond_2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lun;

    invoke-virtual {v2}, Lun;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    .line 22
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun;

    invoke-virtual {v1}, Lun;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/camerasideas/collagemaker/appdata/b;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 24
    :cond_6
    new-instance p1, Lrh;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060259

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-direct {p1, p2}, Lrh;-><init>(I)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->j:Lrh;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->e:I

    return v0
.end method

.method public B(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->e:I

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun;

    invoke-virtual {v1}, Lun;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun;

    invoke-virtual {v1}, Lun;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    if-eq v1, p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun;

    invoke-virtual {v1}, Lun;->d()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 5
    :cond_1
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->e:I

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public C(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->e:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lun;

    invoke-virtual {p1}, Lun;->a()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun;

    .line 2
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/t$c;

    .line 4
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->e:I

    if-ne p2, v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$c;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$c;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->c:Landroid/content/Context;

    const v0, 0x7f070098

    invoke-static {p2, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$c;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$c;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->c:Landroid/content/Context;

    const v0, 0x7f070097

    invoke-static {p2, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4

    .line 8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 9
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->h:I

    if-ne p2, v1, :cond_2

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->i:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/t;->z(I)I

    move-result v0

    .line 11
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/t$a;

    .line 12
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 13
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->c:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/activity/w0;->t(Ljava/lang/Integer;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->j:Lrh;

    .line 14
    invoke-static {v1}, Lck;->Y(Lcom/bumptech/glide/load/m;)Lck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/camerasideas/collagemaker/activity/v0;->m0(Lyj;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object v0

    .line 15
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$a;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    .line 16
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$a;->b(Lcom/camerasideas/collagemaker/activity/adapter/t$a;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->e:I

    if-ne v0, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_6

    .line 17
    :cond_4
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 18
    check-cast p1, Lcom/camerasideas/collagemaker/activity/adapter/t$b;

    .line 19
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 20
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->i:I

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz v0, :cond_9

    .line 21
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->c:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object v1

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$b;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/i;->l(Landroid/view/View;)V

    .line 22
    invoke-virtual {v0}, Lun;->c()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 23
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$b;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v1

    invoke-virtual {v0}, Lun;->c()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 24
    :cond_6
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$b;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Lun;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :goto_3
    invoke-virtual {v0}, Lun;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FFFFFF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$b;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->c:Landroid/content/Context;

    const v5, 0x7f07022a

    invoke-static {v2, v5}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 27
    :cond_7
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;->a(Lcom/camerasideas/collagemaker/activity/adapter/t$b;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :goto_4
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;->b(Lcom/camerasideas/collagemaker/activity/adapter/t$b;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    invoke-static {v1, v4}, Luq;->t(Landroid/view/View;Z)V

    .line 29
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;->c(Lcom/camerasideas/collagemaker/activity/adapter/t$b;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Luq;->t(Landroid/view/View;Z)V

    .line 30
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->e:I

    if-ne v2, p2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 31
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/t$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0071

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/t$c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 3
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/t$a;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0067

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 4
    :cond_2
    new-instance p2, Lcom/camerasideas/collagemaker/activity/adapter/t$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/adapter/t$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public z(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lun;

    invoke-virtual {v2}, Lun;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/adapter/t;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lun;

    invoke-virtual {v2}, Lun;->d()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    const p1, -0x444445

    return p1

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/adapter/t;->d(I)I

    move-result p1

    if-ne p1, v0, :cond_3

    const p1, 0x7f0701a6

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method
