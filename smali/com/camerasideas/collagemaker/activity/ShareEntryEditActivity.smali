.class public Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic n(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;->p(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private o(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity$1;-><init>(Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;Landroid/net/Uri;)V

    const-string v1, "showOpenFailDialog-Uri="

    .line 2
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ShareEntryEditActivity"

    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0, p2, p3, v0}, Landroidx/core/app/b;->H0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;ILcom/camerasideas/collagemaker/activity/fragment/utils/FragmentFactory$AbsViewClickWrapper;)V

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    :cond_1
    return-void
.end method

.method private p(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/camerasideas/collagemaker/activity/DummyActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_KEY_FROM_SHARE_ACTIVITY"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_KEY_LIST_PATHS"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "EXTRA_KEY_URI_SUPPORTED"

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "EXTRA_KEY_REPORT_MSG"

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXTRA_KEY_SUBJECT_MSG"

    .line 9
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXTRA_KEY_MODE"

    const/4 p3, 0x4

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "ShareEntryEditActivity"

    const-string p3, "\u5206\u4eab\u9ed8\u8ba4\u524d\u7f6e\u8bbe\u7f6e\u6a21\u677f\uff0c\u89c4\u907f\u540e\u9762\u7684\u56e0\u672a\u6b63\u786e\u8bbe\u7f6e\u6a21\u677f\u5bfc\u81f4\u7684\u5d29\u6e83\u95ee\u9898"

    .line 11
    invoke-static {p2, p3}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PV"

    const-string v1, "SharePage"

    .line 2
    invoke-static {p0, v0, v1}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", savedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShareEntryEditActivity"

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v1, "action = "

    .line 6
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "EXTRA_KEY_IMAGE_FILE_PATH"

    const-string v3, "EXTRA_KEY_SHARE_SELF"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 10
    :cond_0
    invoke-static {p1}, Lcm;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "android.intent.extra.STREAM"

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 15
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    move-object v1, p1

    move-object p1, v4

    :goto_0
    const/4 v2, 0x1

    goto :goto_5

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v4

    goto :goto_4

    .line 18
    :cond_6
    :goto_1
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto :goto_3

    .line 20
    :cond_7
    invoke-static {p1}, Lcm;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    .line 21
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_2
    move-object v4, p1

    const/4 p1, 0x1

    const/4 v2, 0x1

    :goto_3
    if-eqz v4, :cond_d

    .line 22
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    :goto_4
    const/4 v2, 0x0

    :cond_9
    move-object v1, p1

    move-object p1, v4

    :goto_5
    if-eqz v2, :cond_c

    const-string v2, "Share_Entry"

    const-string v3, "Edit"

    .line 23
    invoke-static {p0, v2, v3}, Luq;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x300

    const v3, 0x7f0e006d

    if-nez p1, :cond_a

    .line 24
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 25
    :cond_a
    invoke-static {p0, p1}, Lc2;->k(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    if-eqz v4, :cond_b

    .line 26
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_6
    invoke-direct {p0, p1, v3, v2}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;->o(Landroid/net/Uri;Ljava/lang/String;I)V

    const/4 v5, 0x0

    .line 28
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUriSupported="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_f

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, ""

    .line 30
    invoke-direct {p0, v1, v5, p1, p1}, Lcom/camerasideas/collagemaker/activity/ShareEntryEditActivity;->p(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_0
    move-exception p1

    .line 31
    throw p1

    .line 32
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_7

    .line 33
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 34
    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_f
    :goto_7
    return-void
.end method
