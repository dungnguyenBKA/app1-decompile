.class public Lcom/zjsoft/baseadlib/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zjsoft/baseadlib/b$c;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:I = 0x0

.field private static c:Lbc0; = null

.field private static d:I = -0x1


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Lcom/zjsoft/baseadlib/b;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 2
    invoke-static {p0}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object p0

    sget-object v0, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput p0, Lcom/zjsoft/baseadlib/b;->d:I

    .line 3
    :cond_1
    sget p0, Lcom/zjsoft/baseadlib/b;->d:I

    if-ne p0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static b(Landroid/app/Activity;Lcom/zjsoft/baseadlib/b$c;)V
    .locals 13

    const-string v0, "app_version_code"

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    .line 2
    sput-boolean v1, Lcom/zjsoft/baseadlib/b;->a:Z

    .line 3
    sget-object v2, Lcom/zjsoft/baseadlib/b;->c:Lbc0;

    .line 4
    iget v2, p1, Lcom/zjsoft/baseadlib/b$c;->b:I

    sput v2, Lcom/zjsoft/baseadlib/b;->b:I

    .line 5
    iget-object v2, p1, Lcom/zjsoft/baseadlib/b$c;->a:Ljava/lang/String;

    const-string v3, ""

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {p0}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "server_url"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v2, 0x2

    .line 8
    invoke-static {p0}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "request_version"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x0

    .line 9
    invoke-static {p0}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "extends_request_data"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x1

    .line 10
    :try_start_0
    invoke-static {p0}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 11
    sget v4, Lcom/zjsoft/baseadlib/b;->b:I

    if-eq v3, v4, :cond_1

    .line 12
    invoke-static {p0}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 15
    invoke-static {p0}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "last_post_time"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 16
    invoke-static {p0}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const/4 v10, 0x5

    const-string v11, "update_interval"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    int-to-long v9, v9

    const-wide/32 v11, 0x5265c00

    mul-long v9, v9, v11

    add-long/2addr v9, v5

    sub-long/2addr v3, v9

    cmp-long v5, v3, v7

    if-gtz v5, :cond_2

    if-eqz v0, :cond_3

    .line 17
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v3, Ldev/in/common/core/service/DownloadService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/zjsoft/baseadlib/b$c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    iget-object p1, p1, Lcom/zjsoft/baseadlib/b$c;->c:Ljava/lang/String;

    .line 22
    :try_start_2
    invoke-static {p0}, Lcc0;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    const-string v3, "Consent:request"

    invoke-virtual {v0, p0, v3}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lcom/google/ads/consent/ConsentInformation;->getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    .line 25
    new-instance p1, Lcom/zjsoft/baseadlib/a;

    invoke-direct {p1, p0}, Lcom/zjsoft/baseadlib/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, p1}, Lcom/google/ads/consent/ConsentInformation;->requestConsentInfoUpdate([Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 26
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    .line 27
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please set main admob_pub_id in PromoterParams."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lbc0$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lbc0;->c(Lbc0$a;)Lbc0;

    move-result-object p0

    sput-object p0, Lcom/zjsoft/baseadlib/b;->c:Lbc0;

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcc0;->f(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object v1

    sget-object v2, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    if-ne v1, v2, :cond_1

    .line 2
    new-instance v1, Landroidx/appcompat/app/g$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/g$a;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1}, Landroidx/appcompat/app/g$a;->a()Landroidx/appcompat/app/g;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    if-eqz p2, :cond_0

    const p2, 0x7f0b0023

    goto :goto_0

    :cond_0
    const p2, 0x7f0b0022

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 6
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 7
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f05001c

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v2, 0x7f08004d

    .line 8
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e001e

    .line 9
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x2

    const/high16 v4, 0x41600000    # 14.0f

    div-float/2addr v4, p1

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, 0x7f08004c

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 13
    new-instance p2, Lcom/zjsoft/baseadlib/b$a;

    invoke-direct {p2, p0, v1}, Lcom/zjsoft/baseadlib/b$a;-><init>(Landroid/content/Context;Landroidx/appcompat/app/g;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/zjsoft/baseadlib/b$b;

    invoke-direct {p1, p0}, Lcom/zjsoft/baseadlib/b$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 16
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p2

    const-string v1, "Consent:show dialog"

    invoke-virtual {p2, p0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 19
    :cond_1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    const-string p2, "Consent: Do not show dialog"

    invoke-virtual {p1, p0, p2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return v0
.end method
