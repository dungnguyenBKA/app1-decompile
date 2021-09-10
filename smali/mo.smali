.class public Lmo;
.super Lyn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyn<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyn;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageCutoutEditPresenter"

    return-object v0
.end method

.method public n(Lcom/camerasideas/collagemaker/activity/BaseActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ImageCutoutEditPresenter"

    if-nez v0, :cond_0

    const-string p1, "showImageSelectorActivity failed: activity = null || activity.getIntent() = null"

    .line 2
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-class v2, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x4

    .line 6
    invoke-static {v2}, Lcom/camerasideas/collagemaker/appdata/e;->e(I)V

    .line 7
    sget-object v2, Lcom/camerasideas/collagemaker/appdata/g;->c:Lcom/camerasideas/collagemaker/appdata/g;

    invoke-static {p1, v2}, Luq;->m(Landroid/content/Context;Lcom/camerasideas/collagemaker/appdata/g;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "showImageSelectorActivity occur exception"

    .line 11
    invoke-static {v1, v0, p1}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
