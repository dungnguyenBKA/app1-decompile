.class public abstract Lcom/camerasideas/collagemaker/activity/BaseResultActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;
.source "SourceFile"

# interfaces
.implements Lto;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/camerasideas/collagemaker/activity/BaseMvpActivity<",
        "Lto;",
        "Lpo;",
        ">;",
        "Lto;"
    }
.end annotation


# instance fields
.field private e:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public h(Z)V
    .locals 2

    const-string v0, "TesterLog-Rate"

    const-string v1, "\u5f39\u51faEnjoyApp\u6253\u5206\u5bf9\u8bdd\u6846"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Luq;->h(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V

    goto :goto_0

    .line 3
    :cond_0
    const-class p1, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/m;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/fragment/app/Fragment;->Y(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lsm;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsm;->x1(Landroidx/fragment/app/g;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/app/b;->D(Landroidx/appcompat/app/AppCompatActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/CutoutResultActivity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    new-instance v0, Lcom/camerasideas/collagemaker/activity/c;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/c;-><init>(Lcom/camerasideas/collagemaker/activity/BaseResultActivity;)V

    invoke-virtual {p1, v0}, Linshot/collage/adconfig/h;->m(Linshot/collage/adconfig/h$c;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onDestroy()V

    .line 2
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/h;->m(Linshot/collage/adconfig/h$c;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onPause()V

    .line 2
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    sget-object v1, Linshot/collage/adconfig/i;->c:Linshot/collage/adconfig/i;

    invoke-virtual {v0, v1}, Linshot/collage/adconfig/h;->j(Linshot/collage/adconfig/i;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onPostCreate(Landroid/os/Bundle;)V

    const p1, 0x7f080069

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->e:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v0, Lpo;

    invoke-virtual {v0, p1}, Lpo;->o(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onResume()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/camerasideas/collagemaker/appdata/e;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/camerasideas/collagemaker/appdata/e;->a:Z

    .line 4
    invoke-static {p0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    sget-object v1, Linshot/collage/adconfig/i;->c:Linshot/collage/adconfig/i;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Linshot/collage/adconfig/h;->k(Linshot/collage/adconfig/i;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    check-cast v0, Lpo;

    invoke-virtual {v0, p1}, Lpo;->p(Landroid/os/Bundle;)V

    return-void
.end method

.method protected p()Lyn;
    .locals 1

    .line 1
    new-instance v0, Lpo;

    invoke-direct {v0}, Lpo;-><init>()V

    return-object v0
.end method

.method public synthetic s(Linshot/collage/adconfig/i;)V
    .locals 2

    .line 1
    sget-object v0, Linshot/collage/adconfig/i;->c:Linshot/collage/adconfig/i;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Linshot/collage/adconfig/h;->g:Linshot/collage/adconfig/h;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/BaseResultActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Linshot/collage/adconfig/h;->n(Landroid/widget/FrameLayout;Linshot/collage/adconfig/i;)Z

    :cond_0
    return-void
.end method
