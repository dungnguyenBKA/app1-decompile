.class public Lcom/zjsoft/fan/c;
.super Lwb0;
.source "SourceFile"


# instance fields
.field c:Lcom/facebook/ads/InterstitialAd;

.field d:Ljb0;

.field e:Ljava/lang/String;

.field f:Ldc0;

.field g:Ljava/lang/String;

.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lwb0;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/zjsoft/fan/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zjsoft/fan/c;->f:Ldc0;

    return-void
.end method

.method static synthetic m(Lcom/zjsoft/fan/c;Lwb0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zjsoft/fan/c;->p(Lwb0$a;)V

    return-void
.end method

.method static synthetic n(Lcom/zjsoft/fan/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zjsoft/fan/c;->o()V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/fan/c;->f:Ldc0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zjsoft/fan/c;->f:Ldc0;

    invoke-virtual {v0}, Ldc0;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private p(Lwb0$a;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/zjsoft/fan/c;->c:Lcom/facebook/ads/InterstitialAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/zjsoft/fan/c;->c:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->show()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    invoke-direct {p0}, Lcom/zjsoft/fan/c;->o()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lwb0$a;->a(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/fan/c;->c:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zjsoft/fan/c;->c:Lcom/facebook/ads/InterstitialAd;

    .line 4
    iput-object v0, p0, Lcom/zjsoft/fan/c;->f:Ldc0;

    .line 5
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    const-string v1, "FanInterstitial:destroy"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "FanInterstitial@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/fan/c;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lub0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/app/Activity;Llb0;Lub0$a;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    const-string v1, "FanInterstitial:load"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/zjsoft/fan/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "FanInterstitial:Facebook client not install."

    .line 4
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/fan/c;->d:Ljb0;

    .line 6
    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/zjsoft/fan/c;->d:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ad_position_key"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/fan/c;->e:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/zjsoft/fan/c;->d:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ad_for_child"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/fan/c;->h:Z

    if-eqz p2, :cond_2

    const-string p2, "FanInterstitial:Facebook only serve users at least 13 years old."

    .line 9
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 10
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/zjsoft/fan/c;->d:Ljb0;

    invoke-virtual {p2}, Ljb0;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/fan/c;->g:Ljava/lang/String;

    .line 11
    new-instance p2, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/fan/c;->d:Ljb0;

    invoke-virtual {v1}, Ljb0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zjsoft/fan/c;->c:Lcom/facebook/ads/InterstitialAd;

    .line 12
    new-instance v0, Lcom/zjsoft/fan/c$b;

    invoke-direct {v0, p0, p1, p3}, Lcom/zjsoft/fan/c$b;-><init>(Lcom/zjsoft/fan/c;Landroid/app/Activity;Lub0$a;)V

    .line 13
    invoke-virtual {p2}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p3

    .line 14
    invoke-interface {p3, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object p3

    .line 15
    invoke-interface {p3}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object p3

    .line 16
    invoke-virtual {p2, p3}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 17
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    const-string p2, "FanInterstitial:Please check params is right."

    .line 18
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FanInterstitial:Please check MediationListener is right."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zjsoft/fan/c;->c:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/app/Activity;Lwb0$a;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/fan/c;->e:Ljava/lang/String;

    const-string v1, "fan_i_loading_time"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lwb0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldc0;

    move-result-object p1

    iput-object p1, p0, Lcom/zjsoft/fan/c;->f:Ldc0;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/zjsoft/fan/c$a;

    invoke-direct {v0, p0, p2}, Lcom/zjsoft/fan/c$a;-><init>(Lcom/zjsoft/fan/c;Lwb0$a;)V

    invoke-virtual {p1, v0}, Ldc0;->b(Ldc0$b;)V

    .line 3
    iget-object p1, p0, Lcom/zjsoft/fan/c;->f:Ldc0;

    invoke-virtual {p1}, Ldc0;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/zjsoft/fan/c;->p(Lwb0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    invoke-direct {p0}, Lcom/zjsoft/fan/c;->o()V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-interface {p2, p1}, Lwb0$a;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
