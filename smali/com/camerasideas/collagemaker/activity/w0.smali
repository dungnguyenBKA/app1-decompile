.class public Lcom/camerasideas/collagemaker/activity/w0;
.super Lcom/bumptech/glide/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Lfj;Lkj;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/i;-><init>(Lcom/bumptech/glide/c;Lfj;Lkj;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Class;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/w0;->s(Ljava/lang/Class;)Lcom/camerasideas/collagemaker/activity/v0;

    move-result-object p1

    return-object p1
.end method

.method public j()Lcom/bumptech/glide/h;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/i;->j()Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/v0;

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/h;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/i;->k()Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/v0;

    return-object v0
.end method

.method protected p(Lck;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/camerasideas/collagemaker/activity/u0;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/i;->p(Lck;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/camerasideas/collagemaker/activity/u0;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/activity/u0;-><init>()V

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/u0;->Z(Lyj;)Lcom/camerasideas/collagemaker/activity/u0;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/i;->p(Lck;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/lang/Class;)Lcom/camerasideas/collagemaker/activity/v0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/camerasideas/collagemaker/activity/v0<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/activity/v0;

    iget-object v1, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/i;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/camerasideas/collagemaker/activity/v0;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public t(Ljava/lang/Integer;)Lcom/camerasideas/collagemaker/activity/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/camerasideas/collagemaker/activity/v0<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/w0;->k()Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->h0(Ljava/lang/Integer;)Lcom/bumptech/glide/h;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/camerasideas/collagemaker/activity/v0;

    return-object p1
.end method

.method public u(Ljava/lang/String;)Lcom/camerasideas/collagemaker/activity/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/camerasideas/collagemaker/activity/v0<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/w0;->k()Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->j0(Ljava/lang/String;)Lcom/bumptech/glide/h;

    .line 2
    check-cast v0, Lcom/camerasideas/collagemaker/activity/v0;

    return-object v0
.end method
