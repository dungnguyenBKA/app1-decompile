.class public abstract Lyn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Landroid/os/Handler;

.field protected c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lyn;->b:Landroid/os/Handler;

    .line 3
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lyn;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lyn;->a:Ljava/lang/Object;

    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public g(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyn;->e()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "savedInstanceState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lyn;->h(Landroid/os/Bundle;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyn;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRestoreInstanceState"

    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyn;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSaveInstanceState"

    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/app/Activity;Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;I)Z
    .locals 1

    if-nez p2, :cond_0

    const-string p1, "BasePresenter"

    const-string p2, "showImageEditActivity failed, activity == null || filePath == null"

    .line 1
    invoke-static {p1, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p1, v0, p3}, Lyn;->m(Landroid/app/Activity;Ljava/util/ArrayList;I)Z

    move-result p1

    return p1
.end method

.method public m(Landroid/app/Activity;Ljava/util/ArrayList;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, Lcom/camerasideas/collagemaker/appdata/g;->d:Lcom/camerasideas/collagemaker/appdata/g;

    invoke-static {p1, v1}, Luq;->m(Landroid/content/Context;Lcom/camerasideas/collagemaker/appdata/g;)V

    .line 2
    invoke-static {p3}, Lcom/camerasideas/collagemaker/appdata/e;->e(I)V

    .line 3
    invoke-static {p2}, Lrq;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 5
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v1, "EXTRA_KEY_LIST_PATHS"

    .line 6
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "EXTRA_KEY_FROM_SHARE_ACTIVITY"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 8
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    const-class p2, Lcom/camerasideas/collagemaker/activity/ImageCutoutActivity;

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const p2, 0x7f0e00cf

    .line 12
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    return v0

    :cond_2
    :goto_0
    const-string p1, "BasePresenter"

    const-string p2, "showImageEditActivity failed, activity == null || filePaths == null"

    .line 14
    invoke-static {p1, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
