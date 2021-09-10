.class public Lcom/zjsoft/fan/b;
.super Lvb0;
.source "SourceFile"


# instance fields
.field b:Lcom/facebook/ads/AdView;

.field c:Ljb0;

.field d:Ljava/lang/String;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvb0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/zjsoft/fan/b;->b:Lcom/facebook/ads/AdView;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/fan/b;->b:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zjsoft/fan/b;->b:Lcom/facebook/ads/AdView;

    .line 4
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    const-string v1, "FanBanner:destroy"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "FanBanner@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/fan/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lub0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/app/Activity;Llb0;Lub0$a;)V
    .locals 4

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    const-string v1, "FanBanner:load"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 2
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/zjsoft/fan/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "FanBanner:Facebook client not install."

    .line 4
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/fan/b;->c:Ljb0;

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljb0;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/fan/b;->d:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/zjsoft/fan/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/zjsoft/fan/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ad_for_child"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/fan/b;->e:Z

    if-eqz p2, :cond_2

    .line 9
    new-instance p2, Lkb0;

    const-string v0, "FanBanner:Facebook only serve users at least 13 years old."

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    return-void

    .line 10
    :cond_2
    new-instance p2, Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/fan/b;->c:Ljb0;

    invoke-virtual {v1}, Ljb0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_1

    .line 13
    :cond_4
    :goto_0
    sget-object v2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    .line 14
    :goto_1
    invoke-direct {p2, v0, v1, v2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object p2, p0, Lcom/zjsoft/fan/b;->b:Lcom/facebook/ads/AdView;

    .line 15
    new-instance v0, Lcom/zjsoft/fan/b$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/zjsoft/fan/b$a;-><init>(Lcom/zjsoft/fan/b;Landroid/app/Activity;Lub0$a;)V

    .line 16
    invoke-virtual {p2}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 20
    new-instance v0, Lkb0;

    const-string v1, "FanBanner:load exception, please check log"

    invoke-direct {v0, v1}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, v0}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 21
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    const-string p2, "FanBanner:Please check params is right."

    .line 22
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FanBanner:Please check MediationListener is right."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
