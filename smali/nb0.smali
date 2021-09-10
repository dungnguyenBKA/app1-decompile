.class public Lnb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnb0;->a:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lnb0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnb0;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "have_click_ad_times"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-static {p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected b(Landroid/content/Context;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lnb0;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "last_start_click_ad_time"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/32 v2, 0x5265c00

    const-string v0, "have_click_ad_times"

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    .line 4
    invoke-static {p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    invoke-static {p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    .line 6
    :cond_1
    invoke-static {p1}, Lcc0;->t(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7
    iget-object v2, p0, Lnb0;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x5

    const-string v4, "ad_click_times"

    if-nez v2, :cond_2

    .line 8
    iget-object v2, p0, Lnb0;->b:Ljava/lang/String;

    invoke-static {p1, v2, v4, v3}, Lcc0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p1, v4, v3}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-lt v0, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
