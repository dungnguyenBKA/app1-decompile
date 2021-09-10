.class public Lcom/zjsoft/fan/e;
.super Lxb0;
.source "SourceFile"


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field e:Ljb0;

.field f:Lcom/facebook/ads/NativeAd;

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lxb0;-><init>()V

    const v0, 0x3f05f92c

    .line 2
    iput v0, p0, Lcom/zjsoft/fan/e;->b:F

    const/high16 v0, 0x42400000    # 48.0f

    .line 3
    iput v0, p0, Lcom/zjsoft/fan/e;->d:F

    const v0, 0x7f0b0029

    .line 4
    iput v0, p0, Lcom/zjsoft/fan/e;->g:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "FanNativeCard@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/fan/e;->i:Ljava/lang/String;

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

    const-string v1, "FanNativeCard:load"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/zjsoft/fan/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p2, "FanNativeCard:Facebook client not install."

    .line 4
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/zjsoft/fan/e;->c:F

    .line 6
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/fan/e;->e:Ljb0;

    .line 7
    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/zjsoft/fan/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "layout_id"

    const v1, 0x7f0b0029

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zjsoft/fan/e;->g:I

    .line 9
    iget-object p2, p0, Lcom/zjsoft/fan/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "cover_width"

    iget v1, p0, Lcom/zjsoft/fan/e;->c:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/zjsoft/fan/e;->c:F

    .line 10
    iget-object p2, p0, Lcom/zjsoft/fan/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "icon_size"

    iget v1, p0, Lcom/zjsoft/fan/e;->d:F

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/zjsoft/fan/e;->d:F

    .line 11
    iget-object p2, p0, Lcom/zjsoft/fan/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "no_click_area"

    const-string v1, "[\"title\",\"des\",\"icon\",\"cover\"]"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/fan/e;->h:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/zjsoft/fan/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ad_for_child"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/fan/e;->j:Z

    if-eqz p2, :cond_2

    .line 13
    new-instance p2, Lkb0;

    const-string v0, "FanNativeCard:Facebook only serve users at least 13 years old."

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    return-void

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/zjsoft/fan/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/fan/e;->i:Ljava/lang/String;

    .line 15
    new-instance p2, Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/fan/e;->e:Ljb0;

    invoke-virtual {v1}, Ljb0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zjsoft/fan/e;->f:Lcom/facebook/ads/NativeAd;

    .line 16
    new-instance v0, Lcom/zjsoft/fan/e$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/zjsoft/fan/e$a;-><init>(Lcom/zjsoft/fan/e;Landroid/app/Activity;Lub0$a;)V

    .line 17
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p3

    .line 18
    invoke-interface {p3, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p3

    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 19
    invoke-interface {p3, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p3

    .line 20
    invoke-interface {p3}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p3

    .line 21
    invoke-virtual {p2, p3}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 22
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    const-string p2, "FanNativeCard:Please check params is right."

    .line 23
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FanNativeCard:Please check MediationListener is right."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
