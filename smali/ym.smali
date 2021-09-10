.class public Lym;
.super Lxm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lym$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxm$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lxm;-><init>(Landroid/content/Context;Lxm$a;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lxm;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0062

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    iget-object p3, p0, Lxm;->g:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxm$b;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_5

    .line 5
    new-instance v1, Lxm$b;

    invoke-direct {v1}, Lxm$b;-><init>()V

    const v3, 0x7f080139

    .line 6
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    iput-object v3, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    const v3, 0x7f08013b

    .line 7
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lxm$b;->b:Landroid/widget/ImageView;

    const v3, 0x7f080138

    .line 8
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lxm$b;->c:Landroid/widget/TextView;

    const v3, 0x7f08013a

    .line 9
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v1, Lxm$b;->d:Landroid/widget/ProgressBar;

    .line 10
    iget-object v3, p0, Lxm;->a:Landroid/content/Context;

    iget-object v4, v1, Lxm$b;->c:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    if-nez v4, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v3}, Luq;->a(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    :cond_4
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    :cond_5
    invoke-virtual {p0, p1}, Lxm;->g(I)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object p2

    const/16 v3, 0x8

    if-eqz p2, :cond_6

    .line 15
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result v4

    if-lez v4, :cond_6

    iget v4, p0, Lxm;->i:I

    .line 16
    invoke-static {v4}, Landroidx/core/app/b;->y(I)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/16 v4, 0x8

    .line 17
    :goto_2
    iget v5, p0, Lxm;->i:I

    and-int/lit8 v6, v5, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-eq v6, v8, :cond_8

    and-int/lit8 v6, v5, 0x2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v6, 0x1

    :goto_4
    const v9, 0x7f050133

    if-eqz v6, :cond_c

    const v6, 0x7f0700cb

    .line 18
    invoke-static {v5}, Landroidx/core/app/b;->y(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const v6, 0x7f0700dd

    .line 19
    :cond_9
    iget-object v5, v1, Lxm$b;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v5, v1, Lxm$b;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_a
    const-string v10, ""

    :goto_5
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v5, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->g()I

    move-result p2

    if-lez p2, :cond_b

    move v9, v6

    :cond_b
    invoke-virtual {v5, v9}, Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;->k(I)V

    goto :goto_6

    .line 22
    :cond_c
    iget-object p2, v1, Lxm$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p2, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    invoke-virtual {p2, v9}, Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;->k(I)V

    .line 24
    :goto_6
    iget-object p2, p0, Lxm;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    .line 25
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->k()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 26
    iget-object v5, v1, Lxm$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_7

    .line 27
    :cond_d
    iget-object v5, v1, Lxm$b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 28
    :goto_7
    iget v5, p0, Lxm;->i:I

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_e

    const/4 v0, 0x1

    :cond_e
    if-eqz v0, :cond_10

    .line 29
    iget-object v0, v1, Lxm$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v4, :cond_f

    .line 30
    iget-object v0, v1, Lxm$b;->b:Landroid/widget/ImageView;

    new-instance v2, Lym$a;

    iget-object v3, p0, Lxm;->e:Lxm$a;

    invoke-direct {v2, v3, p2, p1}, Lym$a;-><init>(Lxm$a;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 31
    :cond_f
    iget-object p1, v1, Lxm$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 32
    :cond_10
    iget-object p1, v1, Lxm$b;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    :goto_8
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 34
    iget-object p1, p0, Lxm;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object p1

    iget-object p2, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/i;->l(Landroid/view/View;)V

    .line 35
    iget-object p1, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    iget-object p1, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    const p2, 0x7f0700f5

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 37
    iget-object p1, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    const p2, 0x7f070073

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    goto :goto_9

    .line 38
    :cond_11
    iget-object p1, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    iget-object p1, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    const v0, 0x7f0500b4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 40
    iget-object p1, p0, Lxm;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/b;->O0(Landroid/content/Context;)Lcom/camerasideas/collagemaker/activity/w0;

    move-result-object p1

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;->e()Landroid/net/Uri;

    move-result-object p2

    .line 41
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/w0;->k()Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->g0(Landroid/net/Uri;)Lcom/bumptech/glide/h;

    .line 42
    check-cast p1, Lcom/camerasideas/collagemaker/activity/v0;

    .line 43
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/v0;->p0()Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object p1

    iget p2, p0, Lxm;->c:I

    iget v0, p0, Lxm;->d:I

    .line 44
    invoke-virtual {p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/v0;->r0(II)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object p1

    iget-object p2, v1, Lxm$b;->a:Lcom/camerasideas/collagemaker/activity/widget/RippleImageView;

    .line 45
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->e0(Landroid/widget/ImageView;)Lok;

    :goto_9
    return-object p3
.end method
