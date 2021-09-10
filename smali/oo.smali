.class public Loo;
.super Lyn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyn<",
        "Lso;",
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

    const-string v0, "ImageMainPresenter"

    return-object v0
.end method

.method public synthetic n(Landroid/app/Activity;Lud0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Lso;

    invoke-interface {v0}, Lso;->m()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_KEY_LIST_PATHS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "file not found exception"

    if-nez v1, :cond_0

    .line 4
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lud0;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {p2}, Lud0;->a()V

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x12

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "ImageMainPresenter"

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-static {v4}, Lcm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :try_start_0
    const-string v6, "photoeditor.cutout.backgrounderaser"

    const/4 v7, 0x1

    .line 9
    invoke-virtual {p1, v6, v4, v7}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-static {v4}, Lcm;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 12
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v4}, Lrq;->f(Landroid/net/Uri;)Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    :cond_2
    const-string p1, "share path="

    .line 15
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    .line 17
    invoke-static {v5, v2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lud0;->b(Ljava/lang/Throwable;)V

    .line 19
    invoke-interface {p2}, Lud0;->a()V

    goto :goto_1

    .line 20
    :cond_3
    invoke-interface {p2, v0}, Lud0;->c(Ljava/lang/Object;)V

    .line 21
    invoke-interface {p2}, Lud0;->a()V

    :goto_1
    return-void
.end method

.method public o(Landroid/app/Activity;ILjava/util/ArrayList;)V
    .locals 2

    const-string v0, "TesterLog-Select Media"

    const-string v1, "\u4ece\u5206\u4eab\u5165\u53e3\u8fdb\u5165\u56fe\u7247\u7f16\u8f91\u9875\u9762"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lcom/camerasideas/collagemaker/appdata/e;->a:Z

    .line 3
    iget-object v0, p0, Lyn;->a:Ljava/lang/Object;

    check-cast v0, Lso;

    invoke-interface {v0}, Lso;->c()V

    .line 4
    invoke-virtual {p0, p1, p3, p2}, Lyn;->m(Landroid/app/Activity;Ljava/util/ArrayList;I)Z

    return-void
.end method

.method public p(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lyn;->c:Landroid/content/Context;

    const v0, 0x7f0e00cf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lmr;->d(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lso;

    invoke-interface {p1}, Lso;->c()V

    return-void
.end method

.method public q(Lcom/camerasideas/collagemaker/activity/BaseActivity;Z)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ImageMainPresenter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "processShareImageEdit failed: activity == null || activity.getIntent() == null"

    .line 2
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v0}, Lhm;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "processShareImageEdit failed: Storage permission has NOT been granted. Requesting permission."

    .line 4
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_KEY_FROM_SHARE_ACTIVITY"

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "EXTRA_KEY_URI_SUPPORTED"

    .line 7
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "EXTRA_KEY_REPORT_MSG"

    .line 8
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "EXTRA_KEY_SUBJECT_MSG"

    .line 9
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-nez v3, :cond_2

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_5

    .line 11
    invoke-static {p1, v4, v5}, Lrq;->n(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    const-string p2, "EXTRA_KEY_MODE"

    .line 12
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v2, "EXTRA_KEY_LIST_PATHS"

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    new-instance v0, Lio;

    invoke-direct {v0, p0, p1}, Lio;-><init>(Loo;Landroid/app/Activity;)V

    .line 16
    new-instance v1, Lve0;

    invoke-direct {v1, v0}, Lve0;-><init>(Lvd0;)V

    .line 17
    invoke-static {}, Lnf0;->a()Lxd0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltd0;->e(Lxd0;)Ltd0;

    move-result-object v0

    .line 18
    invoke-static {}, Lyd0;->a()Lxd0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltd0;->a(Lxd0;)Ltd0;

    move-result-object v0

    new-instance v1, Llo;

    invoke-direct {v1, p0, p1, p2}, Llo;-><init>(Loo;Landroid/app/Activity;I)V

    new-instance p1, Lko;

    invoke-direct {p1, p0}, Lko;-><init>(Loo;)V

    sget-object p2, Ljo;->a:Ljo;

    .line 19
    invoke-static {}, Loe0;->a()Lje0;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Ltd0;->b(Lje0;Lje0;Lie0;Lje0;)Lbe0;

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const-string p1, "fileUris is null or size is 0"

    .line 20
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    return v2
.end method

.method public r(Lcom/camerasideas/collagemaker/activity/BaseActivity;I)V
    .locals 5

    const-string v0, "ImageMainPresenter"

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_KEY_LIST_PATHS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 3
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4
    const-class v4, Lcom/camerasideas/collagemaker/activity/ImageSelectorActivity;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    .line 5
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 8
    :cond_1
    invoke-static {p2}, Lcom/camerasideas/collagemaker/appdata/e;->e(I)V

    .line 9
    sget-object p2, Lcom/camerasideas/collagemaker/appdata/g;->c:Lcom/camerasideas/collagemaker/appdata/g;

    invoke-static {p1, p2}, Luq;->m(Landroid/content/Context;Lcom/camerasideas/collagemaker/appdata/g;)V

    .line 10
    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "showImageSelectorActivity occur exception"

    .line 13
    invoke-static {v0, p2, p1}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "showImageSelectorActivity failed: activity = null || activity.getIntent() = null"

    .line 14
    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
