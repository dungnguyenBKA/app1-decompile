.class public abstract Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field protected U:Landroid/content/Context;

.field protected V:Lbutterknife/Unbinder;

.field protected W:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->U:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f0(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->f0(Landroid/app/Activity;)V

    .line 2
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->W:Landroidx/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->l1()Ljava/lang/String;

    move-result-object p1

    const-string v0, "attach to activity"

    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract l1()Ljava/lang/String;
.end method

.method public m0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->m1()I

    move-result v1

    invoke-virtual {p1, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->V:Lbutterknife/Unbinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->m1()I

    move-result v1

    invoke-virtual {p1, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->V:Lbutterknife/Unbinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-string p2, "onCreateView error: "

    .line 7
    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CommonFragment"

    invoke-static {p3, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected abstract m1()I
.end method

.method public n0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->n0()V

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->l1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public o0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->o0()V

    .line 2
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/h;->l1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->p0()V

    return-void
.end method
