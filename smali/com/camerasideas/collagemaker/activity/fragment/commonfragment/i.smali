.class public abstract Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;
.super Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;
.source "SourceFile"

# interfaces
.implements Lfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lfo;",
        "P:",
        "Lyn<",
        "TV;>;>",
        "Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;",
        "Lfo<",
        "TP;>;"
    }
.end annotation


# instance fields
.field protected X:Lyn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;-><init>()V

    return-void
.end method


# virtual methods
.method public A0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->l1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lyn;->i(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public B0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->B0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public C0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->C0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public D0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->n1(Lfo;)Lyn;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    .line 2
    invoke-virtual {p1, p0}, Lyn;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public E0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->E0(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->l1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewStateRestored"

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lyn;->h(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public d0(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->d0(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->A()Landroid/os/Bundle;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lyn;->g(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    :cond_1
    return-void
.end method

.method public f0(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->f0(Landroid/app/Activity;)V

    return-void
.end method

.method public g0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->g0(Landroid/content/Context;)V

    return-void
.end method

.method public j0(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lam;->a()Lam;

    move-result-object p1

    invoke-virtual {p1, p0}, Lam;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public n0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->n0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lyn;->j()Z

    :cond_0
    return-void
.end method

.method protected abstract n1(Lfo;)Lyn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TP;"
        }
    .end annotation
.end method

.method public o0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->o0()V

    .line 2
    invoke-static {}, Lam;->a()Lam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lam;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
    .end annotation

    return-void
.end method

.method public p0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->p0()V

    return-void
.end method

.method public v0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->v0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public z0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->z0()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/i;->X:Lyn;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lyn;->k()Z

    :cond_0
    return-void
.end method
