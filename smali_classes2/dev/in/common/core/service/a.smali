.class Ldev/in/common/core/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ldev/in/common/core/service/DownloadService;


# direct methods
.method constructor <init>(Ldev/in/common/core/service/DownloadService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/in/common/core/service/a;->c:Ldev/in/common/core/service/DownloadService;

    iput-object p2, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "extends_data"

    const-string v1, "self_spread"

    const-string v2, "update_interval"

    const-string v3, "version"

    const-string v4, ""

    const/4 v5, 0x0

    .line 1
    :try_start_0
    iget-object v6, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    invoke-static {v6}, Landroidx/core/app/b;->c0(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2
    iget-object v6, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    .line 3
    invoke-static {v6}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v9, "last_post_time"

    invoke-interface {v6, v9, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    new-instance v6, Lhc0;

    iget-object v7, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Lhc0;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v6}, Lhc0;->b()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "[]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 9
    iget-object v8, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    .line 10
    invoke-static {v8}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 11
    iget-object v0, p0, Ldev/in/common/core/service/a;->c:Ldev/in/common/core/service/DownloadService;

    invoke-static {v0}, Ldev/in/common/core/service/DownloadService;->a(Ldev/in/common/core/service/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 12
    :cond_1
    iget-object v6, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 13
    invoke-static {v6}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    iget-object v3, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-virtual {v7, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 15
    invoke-static {v3}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    iget-object v2, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    const-string v3, "textad"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 18
    invoke-static {v2}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "textadCode"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    :cond_2
    iget-object v2, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    const-string v3, "update"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 21
    invoke-static {v2}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "updateinfoCode"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    :cond_3
    iget-object v2, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    const-string v3, "exitad"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcc0;->z(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    const-string v3, "self_ads"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcc0;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    invoke-virtual {v7, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-static {v2}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    iget-object v1, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    iget-object v0, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcc0;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lic0;->c()Lic0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic0;->d(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 30
    iget-object v0, p0, Ldev/in/common/core/service/a;->c:Ldev/in/common/core/service/DownloadService;

    iget-object v1, p0, Ldev/in/common/core/service/a;->b:Landroid/content/Context;

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ldev/in/common/core/service/b;

    invoke-direct {v3, v0, v1}, Ldev/in/common/core/service/b;-><init>(Ldev/in/common/core/service/DownloadService;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 34
    :cond_4
    iget-object v0, p0, Ldev/in/common/core/service/a;->c:Ldev/in/common/core/service/DownloadService;

    invoke-static {v0}, Ldev/in/common/core/service/DownloadService;->a(Ldev/in/common/core/service/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 35
    :cond_5
    :goto_0
    iget-object v0, p0, Ldev/in/common/core/service/a;->c:Ldev/in/common/core/service/DownloadService;

    invoke-static {v0}, Ldev/in/common/core/service/DownloadService;->a(Ldev/in/common/core/service/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 36
    :cond_6
    iget-object v0, p0, Ldev/in/common/core/service/a;->c:Ldev/in/common/core/service/DownloadService;

    invoke-static {v0}, Ldev/in/common/core/service/DownloadService;->a(Ldev/in/common/core/service/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Ldev/in/common/core/service/a;->c:Ldev/in/common/core/service/DownloadService;

    invoke-static {v1}, Ldev/in/common/core/service/DownloadService;->a(Ldev/in/common/core/service/DownloadService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 39
    iget-object v1, p0, Ldev/in/common/core/service/a;->c:Ldev/in/common/core/service/DownloadService;

    invoke-static {v1}, Ldev/in/common/core/service/DownloadService;->a(Ldev/in/common/core/service/DownloadService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
