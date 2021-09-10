.class public final Lcom/vungle/warren/Banners;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Banners"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static canPlayAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    const-string p1, "Invalid Ad Size. Cannot check loaded status of non banner size placements."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/vungle/warren/Vungle;->appContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 6
    const-class v2, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    .line 7
    const-class v3, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 8
    new-instance v3, Lcom/vungle/warren/persistence/FutureResult;

    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lcom/vungle/warren/Banners$1;

    invoke-direct {v4, v0, p0, p1}, Lcom/vungle/warren/Banners$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 9
    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, p1}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleBanner;
    .locals 8

    const-string v0, "VungleBanner#getBanner"

    const-string v1, "getBanner call invoked"

    .line 1
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/vungle/warren/Vungle;->appContext()Landroid/content/Context;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_6

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {v3}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 5
    const-class v2, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    .line 6
    invoke-static {v3}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v2

    const-class v4, Lcom/vungle/warren/RuntimeValues;

    .line 7
    invoke-virtual {v2, v4}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/RuntimeValues;

    iget-object v2, v2, Lcom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/VungleSettings;

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0xd

    if-eqz v4, :cond_1

    .line 10
    invoke-static {p0, p2, v5}, Lcom/vungle/warren/Banners;->onPlaybackError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    return-object v0

    .line 11
    :cond_1
    const-class v4, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v1, p0, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Placement;

    if-nez v1, :cond_2

    .line 12
    invoke-static {p0, p2, v5}, Lcom/vungle/warren/Banners;->onPlaybackError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    return-object v0

    .line 13
    :cond_2
    invoke-static {p1}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 p1, 0x1e

    .line 14
    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Banners;->onPlaybackError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    return-object v0

    .line 15
    :cond_3
    invoke-static {p0, p1}, Lcom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 p1, 0xa

    .line 16
    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Banners;->onPlaybackError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    return-object v0

    :cond_4
    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {v2}, Lcom/vungle/warren/VungleSettings;->getBannerRefreshDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v0, Lcom/vungle/warren/VungleBanner;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/vungle/warren/VungleBanner;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/PlayAdCallback;)V

    return-object v0

    .line 19
    :cond_5
    new-instance v0, Lcom/vungle/warren/VungleBanner;

    .line 20
    invoke-virtual {v1}, Lcom/vungle/warren/model/Placement;->getAdRefreshDuration()I

    move-result v5

    move-object v2, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/vungle/warren/VungleBanner;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/PlayAdCallback;)V

    return-object v0

    .line 21
    :cond_6
    :goto_0
    sget-object p1, Lcom/vungle/warren/Banners;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized, returned VungleNativeAd = null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x9

    .line 22
    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Banners;->onPlaybackError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V

    return-object v0
.end method

.method public static loadBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/LoadAdCallback;)V
    .locals 2

    const-string v0, "Banners#loadBanner"

    const-string v1, "loadBanner API call invoked"

    .line 1
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/vungle/warren/Vungle;->appContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x1c

    .line 4
    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Banners;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/vungle/warren/AdConfig;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    .line 7
    invoke-virtual {v0}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x1e

    .line 8
    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Banners;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;I)V

    .line 9
    :cond_2
    invoke-static {p0, v0, p2}, Lcom/vungle/warren/Vungle;->loadAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void

    :cond_3
    :goto_0
    const/16 p1, 0x9

    .line 10
    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Banners;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;I)V

    return-void
.end method

.method private static onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;I)V
    .locals 1
    .param p2    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, v0}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Banners#onPlaybackError"

    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static onPlaybackError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;I)V
    .locals 1
    .param p2    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, v0}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Banners#onPlaybackError"

    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
