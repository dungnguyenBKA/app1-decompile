.class public Lpo;
.super Lyn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyn<",
        "Lto;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lyn;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lpo;->d:Z

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageResultPresenter"

    return-object v0
.end method

.method public n(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$b0;Ljava/lang/String;)V
    .locals 12

    .line 1
    check-cast p2, Lcom/camerasideas/collagemaker/activity/adapter/n$a;

    .line 2
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->d()I

    move-result v0

    const-string v1, "EXTRA_KEY_IMAGE_FILE_PATH"

    const-string v2, "EXTRA_KEY_SHARE_SELF"

    const-string v3, ".fileprovider"

    const-string v4, "The selected file can\'t be shared: "

    const/16 v5, 0x17

    const-string v6, "android.intent.extra.STREAM"

    const-string v7, "android.intent.action.SEND"

    const-string v8, "File Selector"

    const-string v9, "image/*"

    const-string v10, "Share_To"

    const-string v11, "TesterLog-Result Page"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string p2, "\u70b9\u51fb\u5206\u4eabEmail\u6309\u94ae"

    .line 3
    invoke-static {v11, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Email"

    .line 4
    invoke-static {p1, v10, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5305\u540d"

    .line 7
    invoke-static {v7}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v5, :cond_1

    .line 9
    :try_start_0
    invoke-static {p3}, Lcm;->m(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 11
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lrq;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lcom/camerasideas/collagemaker/appdata/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    const/4 v5, 0x1

    .line 12
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p2, v3, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 15
    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v3}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x400000

    .line 18
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_1
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    sput-boolean v0, Lcom/camerasideas/collagemaker/appdata/e;->a:Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    :pswitch_1
    const-string p2, "\u70b9\u51fb\u5206\u4eabTwitter\u6309\u94ae"

    .line 24
    invoke-static {v11, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Twitter"

    .line 25
    invoke-static {p1, v10, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "com.twitter.android"

    .line 26
    invoke-static {p1, p2, p3, v9}, Lrq;->o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_2
    const-string p2, "\u70b9\u51fb\u5206\u4eabMessenger\u6309\u94ae"

    .line 27
    invoke-static {v11, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Messenger"

    .line 28
    invoke-static {p1, v10, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "com.facebook.orca"

    .line 29
    invoke-static {p1, p2, p3, v9}, Lrq;->o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_3
    const-string p2, "\u70b9\u51fb\u5206\u4eabFacebook\u6309\u94ae"

    .line 30
    invoke-static {v11, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Facebook"

    .line 31
    invoke-static {p1, v10, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "com.facebook.katana"

    .line 32
    invoke-static {p1, p2, p3, v9}, Lrq;->o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_4
    const-string p2, "\u70b9\u51fb\u5206\u6790WhatsApp\u6309\u94ae"

    .line 33
    invoke-static {v11, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "WhatsApp"

    .line 34
    invoke-static {p1, v10, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "com.whatsapp"

    .line 35
    invoke-static {p1, p2, p3, v9}, Lrq;->o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    const-string p2, "\u70b9\u51fb\u5206\u4eabInstagram\u6309\u94ae"

    .line 36
    invoke-static {v11, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Instagram"

    .line 37
    invoke-static {p1, v10, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "com.instagram.android"

    .line 38
    invoke-static {p1, p2, p3, v9}, Lrq;->o(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_6
    const-string p3, "\u70b9\u51fbSave\u6309\u94ae"

    .line 39
    invoke-static {v11, p3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    const v1, 0x7f0e0127

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)V

    .line 42
    sget-object v0, Ldq;->e:Ljava/lang/String;

    .line 43
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 44
    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/adapter/n$a;->c()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 46
    :cond_2
    iget-object p2, p0, Lyn;->c:Landroid/content/Context;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {p2, v2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 47
    aget v1, v1, v3

    div-int/2addr p2, v0

    sub-int/2addr v1, p2

    .line 48
    new-instance p2, Llq;

    invoke-direct {p2, p1, p3, v2, v1}, Llq;-><init>(Landroid/app/Activity;Ljava/lang/String;II)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p2, "Save"

    .line 49
    invoke-static {p1, v10, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_7
    const-string p2, "\u70b9\u51fb\u5206\u4eabOther\u6309\u94ae"

    .line 50
    invoke-static {v11, p2}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v5, :cond_4

    .line 54
    :try_start_2
    invoke-static {p3}, Lcm;->m(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 55
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    .line 56
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lrq;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lcom/camerasideas/collagemaker/appdata/FileProvider;->b(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 57
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The selected file shared: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 58
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p2, v3, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    invoke-static {}, Lrq;->l()Z

    move-result v3

    if-nez v3, :cond_5

    .line 62
    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p3

    .line 64
    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, p3}, Lem;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 65
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p2, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x400000

    .line 67
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_5
    :goto_3
    const/16 p3, 0xc

    .line 68
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p2, 0x1

    .line 69
    sput-boolean p2, Lcom/camerasideas/collagemaker/appdata/e;->a:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 70
    invoke-static {p2}, Lrq;->m(Ljava/lang/Throwable;)V

    .line 71
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    const-string p2, "Other"

    .line 72
    invoke-static {p1, v10, p2}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :goto_5
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lto;

    invoke-interface {p1}, Lto;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "mIsRunShowFullAd"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lpo;->d:Z

    const-string p1, "onRestoreBundleState, mIsRunShowFullAd="

    .line 2
    invoke-static {p1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lpo;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageResultPresenter"

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lpo;->d:Z

    const-string v1, "mIsRunShowFullAd"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSaveBundleState, mIsRunShowFullAd="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lpo;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageResultPresenter"

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public q(ZLandroid/app/Activity;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    const-string v1, "\u7ed3\u679c\u9875\u5c1d\u8bd5\u5c55\u793a\u5168\u5c4f"

    invoke-static {v0, v1}, Luq;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/camerasideas/collagemaker/appdata/f;->f(Landroid/content/Context;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lyn;->c:Landroid/content/Context;

    const-string v2, "showWelcomeSubCount"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcc0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 7
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 8
    :goto_2
    invoke-static {p2}, Lcom/camerasideas/collagemaker/appdata/f;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "EnableShowWelcomeSub"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 9
    invoke-static {p2}, Landroidx/core/app/b;->d0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    move-object v5, p2

    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    const-class v6, Lcom/camerasideas/collagemaker/activity/fragment/commonfragment/WelcomeSubFragment;

    const/4 v7, 0x0

    const v8, 0x7f080134

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Landroidx/core/app/b;->s(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Class;Landroid/os/Bundle;IZZ)Landroidx/fragment/app/Fragment;

    .line 11
    iget-object p2, p0, Lyn;->c:Landroid/content/Context;

    const-string v0, "\u7ed3\u679c\u9875\u5c1d\u8bd5\u5c55\u793a\u5168\u5c4f\u5931\u8d25\uff1a\u5c55\u793aPro"

    invoke-static {p2, v0}, Luq;->o(Landroid/content/Context;Ljava/lang/String;)V

    return p1

    :cond_4
    if-nez p1, :cond_5

    .line 12
    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Luq;->b(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 13
    iget-object p1, p0, Lyn;->c:Landroid/content/Context;

    const-string v0, "\u7ed3\u679c\u9875\u5c1d\u8bd5\u5c55\u793a\u5168\u5c4f\u5931\u8d25\uff1a\u5c55\u793a\u8bc4\u5206"

    invoke-static {p1, v0}, Luq;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lyn;->a:Ljava/lang/Object;

    check-cast p1, Lto;

    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v0}, Luq;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {p1, v0}, Lto;->h(Z)V

    const/4 p1, 0x1

    :cond_5
    if-nez v3, :cond_6

    .line 15
    iget-boolean v0, p0, Lpo;->d:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lyn;->c:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    sget-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    sget-object v1, Linshot/collage/adconfig/j;->b:Linshot/collage/adconfig/j;

    invoke-virtual {v0, p2, v1}, Linshot/collage/adconfig/l;->i(Landroid/app/Activity;Linshot/collage/adconfig/j;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 17
    iget-object p2, p0, Lyn;->c:Landroid/content/Context;

    const-string v0, "\u7ed3\u679c\u9875\u5c55\u793a\u5168\u5c4f\u6210\u529f\uff1aB"

    invoke-static {p2, v0}, Luq;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    :cond_6
    iput-boolean v4, p0, Lpo;->d:Z

    return p1
.end method
