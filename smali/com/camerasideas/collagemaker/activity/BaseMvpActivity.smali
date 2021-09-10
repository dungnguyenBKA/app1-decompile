.class public abstract Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;
.super Lcom/camerasideas/collagemaker/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Lyn<",
        "TV;>;>",
        "Lcom/camerasideas/collagemaker/activity/BaseActivity;"
    }
.end annotation


# instance fields
.field protected b:Lyn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:Z

.field private d:Landroid/os/MessageQueue$IdleHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->c:Z

    return-void
.end method


# virtual methods
.method public synthetic o()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->d:Landroid/os/MessageQueue$IdleHandler;

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    instance-of v0, p0, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    const-string v1, "BaseMvpActivity"

    if-eqz v0, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    .line 3
    invoke-static {v0}, Lfn;->a(F)V

    const-string v0, "set memory cache size: 0.25"

    .line 4
    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lql$a;->h:Z

    .line 6
    invoke-static {}, Lam;->a()Lam;

    move-result-object v0

    invoke-virtual {v0, p0}, Lam;->c(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->p()Lyn;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    .line 8
    invoke-virtual {v0, p0}, Lyn;->d(Ljava/lang/Object;)V

    const/high16 v0, -0x1000000

    const/16 v2, 0x15

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->q()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    sget v3, Lbutterknife/ButterKnife;->b:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 12
    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v2, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v0}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/c;->b()V

    .line 18
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->removeAd()V

    .line 19
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 20
    :try_start_1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->q()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 21
    sget v3, Lbutterknife/ButterKnife;->b:I

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 23
    invoke-static {p0, v3}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v2, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    invoke-static {v0}, Lrq;->m(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->c:Z

    const-string v0, "mIsLoadXmlError=true"

    .line 30
    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lvq;

    invoke-direct {v0, p0}, Lvq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lvq;->b()V

    .line 32
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lyn;->g(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    .line 33
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->r()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    invoke-virtual {v0}, Lyn;->j()Z

    return-void
.end method

.method public onEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
    .end annotation

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0800e1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/baseutils/widget/AnimCircleView;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "mode"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/camerasideas/collagemaker/appdata/e;->e(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    invoke-virtual {v0, p1}, Lyn;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/camerasideas/collagemaker/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    invoke-virtual {v0, p0}, Lyn;->d(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    invoke-virtual {v0}, Lyn;->k()Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/camerasideas/collagemaker/appdata/e;->a()I

    move-result v0

    const-string v1, "mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->b:Lyn;

    invoke-virtual {v0, p1}, Lyn;->i(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract p()Lyn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract q()I
.end method

.method protected r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->d:Landroid/os/MessageQueue$IdleHandler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/camerasideas/collagemaker/activity/b;

    invoke-direct {v0, p0}, Lcom/camerasideas/collagemaker/activity/b;-><init>(Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->d:Landroid/os/MessageQueue$IdleHandler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/BaseMvpActivity;->d:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method
