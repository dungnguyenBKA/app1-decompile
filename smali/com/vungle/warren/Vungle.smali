.class public Lcom/vungle/warren/Vungle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/Vungle$Consent;
    }
.end annotation


# static fields
.field private static final COM_VUNGLE_SDK:Ljava/lang/String; = "com.vungle.sdk"

.field private static final TAG:Ljava/lang/String;

.field static final _instance:Lcom/vungle/warren/Vungle;

.field private static cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

.field private static isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile isInitialized:Z

.field private static isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private volatile appID:Ljava/lang/String;

.field private final ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/vungle/warren/Vungle$Consent;",
            ">;"
        }
    .end annotation
.end field

.field private final consent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/vungle/warren/Vungle$Consent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile consentVersion:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private gson:Lj60;

.field private hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private playOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/warren/Vungle;

    invoke-direct {v0}, Lcom/vungle/warren/Vungle;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    .line 2
    const-class v0, Lcom/vungle/warren/Vungle;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/vungle/warren/Vungle$16;

    invoke-direct {v0}, Lcom/vungle/warren/Vungle$16;-><init>()V

    sput-object v0, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    .line 5
    new-instance v0, Lk60;

    invoke-direct {v0}, Lk60;-><init>()V

    invoke-virtual {v0}, Lk60;->a()Lj60;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->gson:Lj60;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/warren/Vungle;->hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$002(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/Vungle;->updateCCPAStatus(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->getCCPAStatus(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;Z)V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->hbpOrdinalViewCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/vungle/warren/Vungle;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1800(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

.method static synthetic access$1900(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/vungle/warren/Vungle;->renderAd(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method

.method static synthetic access$2000()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->stopPlaying()V

    return-void
.end method

.method static synthetic access$300()Lcom/vungle/warren/persistence/CacheManager$Listener;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vungle/warren/Vungle;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$402(Lcom/vungle/warren/Vungle;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vungle/warren/Vungle;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/vungle/warren/Vungle;->saveGDPRConsent(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->getConsent(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/vungle/warren/Vungle;->getConsentMessageVersion(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static appContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z
    .locals 2

    .line 9
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader;

    .line 11
    invoke-virtual {v0, p0}, Lcom/vungle/warren/AdLoader;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p0

    return p0
.end method

.method public static canPlayAd(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Context is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 4
    const-class v2, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    .line 5
    const-class v3, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 6
    new-instance v3, Lcom/vungle/warren/persistence/FutureResult;

    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lcom/vungle/warren/Vungle$8;

    invoke-direct {v4, v0, p0}, Lcom/vungle/warren/Vungle$8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 8
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v2}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static clearAdvertisements()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 4
    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/Vungle$12;

    invoke-direct {v2, v0}, Lcom/vungle/warren/Vungle$12;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static clearCache()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 4
    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/Vungle$11;

    invoke-direct {v2, v0}, Lcom/vungle/warren/Vungle$11;-><init>(Lcom/vungle/warren/ServiceLocator;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private configure(Lcom/vungle/warren/InitCallback;Z)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "session"

    .line 1
    const-class v3, Lcom/vungle/warren/log/LogManager;

    const-string v4, "crash_report"

    const-class v5, Lcom/vungle/warren/model/Cookie;

    const-string v6, "consentIsImportantToVungle"

    const-string v7, "logging"

    const-string v8, "gdpr"

    const-string v9, "clever_cache"

    const-string v10, "button_deny"

    const-string v11, "button_accept"

    const-string v12, "consent_message_version"

    const-string v13, "consent_message"

    const-string v14, "consent_title"

    const-string v15, "is_country_data_protected"

    move-object/from16 v16, v4

    :try_start_0
    iget-object v4, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-eqz v4, :cond_27

    .line 2
    invoke-static {v4}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v4

    move-object/from16 v17, v0

    .line 3
    const-class v0, Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v4, v0}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleApiClient;

    move-object/from16 v18, v3

    .line 4
    iget-object v3, v1, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/vungle/warren/VungleApiClient;->setAppId(Ljava/lang/String;)V

    .line 5
    const-class v3, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v4, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/persistence/Repository;

    move-object/from16 v19, v7

    .line 6
    const-class v7, Lcom/vungle/warren/tasks/JobRunner;

    invoke-virtual {v4, v7}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/warren/tasks/JobRunner;

    move-object/from16 v20, v10

    .line 7
    invoke-virtual {v0}, Lcom/vungle/warren/VungleApiClient;->config()Lcom/vungle/warren/network/Response;

    move-result-object v10

    if-nez v10, :cond_0

    .line 8
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 9
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {v10}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v21

    const-wide/16 v22, 0x0

    if-nez v21, :cond_2

    .line 11
    invoke-virtual {v0, v10}, Lcom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J

    move-result-wide v3

    cmp-long v0, v3, v22

    if-lez v0, :cond_1

    .line 12
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/warren/tasks/ReconfigJob;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 13
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 14
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 16
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    move-object/from16 v21, v7

    .line 17
    iget-object v7, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    move-object/from16 v24, v11

    const-string v11, "com.vungle.sdk"

    move-object/from16 v25, v12

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v11, "reported"

    .line 18
    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_3

    .line 19
    invoke-virtual {v0}, Lcom/vungle/warren/VungleApiClient;->reportNew()Lcom/vungle/warren/network/Call;

    move-result-object v0

    new-instance v11, Lcom/vungle/warren/Vungle$3;

    invoke-direct {v11, v1, v7}, Lcom/vungle/warren/Vungle$3;-><init>(Lcom/vungle/warren/Vungle;Landroid/content/SharedPreferences;)V

    invoke-interface {v0, v11}, Lcom/vungle/warren/network/Call;->enqueue(Lcom/vungle/warren/network/Callback;)V

    .line 20
    :cond_3
    invoke-virtual {v10}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls60;

    const-string v10, "placements"

    .line 21
    invoke-virtual {v0, v10}, Ls60;->o(Ljava/lang/String;)Lm60;

    move-result-object v10

    if-nez v10, :cond_4

    .line 22
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 23
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 24
    :cond_4
    invoke-static {v0}, Lcom/vungle/warren/CleverCacheSettings;->fromJson(Ls60;)Lcom/vungle/warren/CleverCacheSettings;

    move-result-object v11

    .line 25
    const-class v12, Lcom/vungle/warren/downloader/Downloader;

    invoke-virtual {v4, v12}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vungle/warren/downloader/Downloader;

    if-eqz v11, :cond_9

    const/4 v2, 0x0

    .line 26
    invoke-interface {v7, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 27
    invoke-static/range {v26 .. v26}, Lcom/vungle/warren/CleverCacheSettings;->deserializeFromString(Ljava/lang/String;)Lcom/vungle/warren/CleverCacheSettings;

    move-result-object v26

    if-eqz v26, :cond_6

    .line 28
    invoke-virtual/range {v26 .. v26}, Lcom/vungle/warren/CleverCacheSettings;->getTimestamp()J

    move-result-wide v27

    invoke-virtual {v11}, Lcom/vungle/warren/CleverCacheSettings;->getTimestamp()J

    move-result-wide v29

    cmp-long v26, v27, v29

    if-eqz v26, :cond_5

    goto :goto_0

    :cond_5
    const/16 v26, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/16 v26, 0x1

    .line 29
    :goto_1
    invoke-virtual {v11}, Lcom/vungle/warren/CleverCacheSettings;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_7

    if-eqz v26, :cond_8

    .line 30
    :cond_7
    invoke-interface {v12}, Lcom/vungle/warren/downloader/Downloader;->clearCache()V

    .line 31
    :cond_8
    invoke-virtual {v11}, Lcom/vungle/warren/CleverCacheSettings;->isEnabled()Z

    move-result v2

    invoke-interface {v12, v2}, Lcom/vungle/warren/downloader/Downloader;->setCacheEnabled(Z)V

    .line 32
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 33
    invoke-virtual {v11}, Lcom/vungle/warren/CleverCacheSettings;->serializeToString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 34
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_9
    const/4 v2, 0x1

    .line 35
    invoke-interface {v12, v2}, Lcom/vungle/warren/downloader/Downloader;->setCacheEnabled(Z)V

    .line 36
    :goto_2
    const-class v2, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v4, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/AdLoader;

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v10}, Lm60;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp60;

    .line 39
    new-instance v11, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v10}, Lp60;->e()Ls60;

    move-result-object v10

    invoke-direct {v11, v10}, Lcom/vungle/warren/model/Placement;-><init>(Ls60;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_a
    invoke-virtual {v3, v7}, Lcom/vungle/warren/persistence/Repository;->setValidPlacements(Ljava/util/List;)V

    .line 41
    invoke-virtual {v0, v8}, Ls60;->q(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 42
    invoke-virtual {v3, v6, v5}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/warren/model/Cookie;

    if-nez v7, :cond_b

    .line 43
    new-instance v7, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v7, v6}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    const-string v6, "consent_status"

    const-string v9, "unknown"

    .line 44
    invoke-virtual {v7, v6, v9}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "consent_source"

    const-string v9, "no_interaction"

    .line 45
    invoke-virtual {v7, v6, v9}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "timestamp"

    .line 46
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :cond_b
    invoke-virtual {v0, v8}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v6

    .line 48
    invoke-static {v6, v15}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v6, v15}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v8

    invoke-virtual {v8}, Lp60;->a()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    .line 49
    :goto_4
    invoke-static {v6, v14}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, ""

    if-eqz v9, :cond_d

    :try_start_1
    invoke-virtual {v6, v14}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v9

    invoke-virtual {v9}, Lp60;->h()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_d
    move-object v9, v10

    .line 50
    :goto_5
    invoke-static {v6, v13}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v6, v13}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v11

    invoke-virtual {v11}, Lp60;->h()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_e
    move-object v11, v10

    :goto_6
    move-object/from16 v12, v25

    .line 51
    invoke-static {v6, v12}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-virtual {v6, v12}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lp60;->h()Ljava/lang/String;

    move-result-object v22

    goto :goto_7

    :cond_f
    move-object/from16 v22, v10

    :goto_7
    move-object/from16 v23, v10

    move-object/from16 v10, v24

    .line 52
    invoke-static {v6, v10}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-virtual {v6, v10}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lp60;->h()Ljava/lang/String;

    move-result-object v24

    goto :goto_8

    :cond_10
    move-object/from16 v24, v23

    :goto_8
    move-object/from16 v25, v2

    move-object/from16 v2, v20

    .line 53
    invoke-static {v6, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual {v6, v2}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v6

    invoke-virtual {v6}, Lp60;->h()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_11
    move-object/from16 v6, v23

    .line 54
    :goto_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v15, v8}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v9, "Targeted Ads"

    :cond_12
    invoke-virtual {v7, v14, v9}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v11, "To receive more relevant ad content based on your interactions with our ads, click \"I Consent\" below. Either way, you will see the same amount of ads."

    :cond_13
    invoke-virtual {v7, v13, v11}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "consent_source"

    .line 57
    invoke-virtual {v7, v8}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "publisher"

    .line 58
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 59
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    move-object/from16 v8, v23

    goto :goto_a

    :cond_14
    move-object/from16 v8, v22

    :goto_a
    invoke-virtual {v7, v12, v8}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_15
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string v24, "I Consent"

    :cond_16
    move-object/from16 v8, v24

    invoke-virtual {v7, v10, v8}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v6, "I Do Not Consent"

    :cond_17
    invoke-virtual {v7, v2, v6}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v3, v7}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    goto :goto_b

    :cond_18
    move-object/from16 v25, v2

    :goto_b
    move-object/from16 v2, v19

    .line 63
    invoke-virtual {v0, v2}, Ls60;->q(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "enabled"

    if-eqz v6, :cond_1a

    move-object/from16 v6, v18

    .line 64
    :try_start_2
    invoke-virtual {v4, v6}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vungle/warren/log/LogManager;

    .line 65
    invoke-virtual {v0, v2}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v2

    .line 66
    invoke-static {v2, v7}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual {v2, v7}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    invoke-virtual {v2}, Lp60;->a()Z

    move-result v2

    goto :goto_c

    :cond_19
    const/4 v2, 0x0

    .line 67
    :goto_c
    invoke-virtual {v8, v2}, Lcom/vungle/warren/log/LogManager;->setLoggingEnabled(Z)V

    goto :goto_d

    :cond_1a
    move-object/from16 v6, v18

    :goto_d
    move-object/from16 v2, v16

    .line 68
    invoke-virtual {v0, v2}, Ls60;->q(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 69
    invoke-virtual {v4, v6}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/log/LogManager;

    .line 70
    invoke-virtual {v0, v2}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v2

    .line 71
    invoke-static {v2, v7}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual {v2, v7}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v8

    invoke-virtual {v8}, Lp60;->a()Z

    move-result v8

    goto :goto_e

    :cond_1b
    const/4 v8, 0x0

    :goto_e
    const-string v9, "collect_filter"

    .line 72
    invoke-static {v2, v9}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const-string v9, "collect_filter"

    invoke-virtual {v2, v9}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v9

    invoke-virtual {v9}, Lp60;->h()Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    :cond_1c
    sget-object v9, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    :goto_f
    const-string v10, "max_send_amount"

    .line 73
    invoke-static {v2, v10}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    const-string v10, "max_send_amount"

    invoke-virtual {v2, v10}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    invoke-virtual {v2}, Lp60;->d()I

    move-result v2

    goto :goto_10

    :cond_1d
    const/4 v2, 0x5

    .line 74
    :goto_10
    invoke-virtual {v6, v8, v9, v2}, Lcom/vungle/warren/log/LogManager;->updateCrashReportConfig(ZLjava/lang/String;I)V

    :cond_1e
    const/16 v2, 0x384

    move-object/from16 v6, v17

    .line 75
    invoke-virtual {v0, v6}, Ls60;->q(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 76
    invoke-virtual {v0, v6}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v6

    const-string v8, "timeout"

    .line 77
    invoke-virtual {v6, v8}, Ls60;->q(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const-string v2, "timeout"

    .line 78
    invoke-virtual {v6, v2}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    invoke-virtual {v2}, Lp60;->d()I

    move-result v2

    :cond_1f
    const-string v6, "ri"

    .line 79
    invoke-virtual {v0, v6}, Ls60;->q(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "configSettings"

    .line 80
    invoke-virtual {v3, v6, v5}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Cookie;

    if-nez v5, :cond_20

    .line 81
    new-instance v5, Lcom/vungle/warren/model/Cookie;

    const-string v6, "configSettings"

    invoke-direct {v5, v6}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    :cond_20
    const-string v6, "ri"

    .line 82
    invoke-virtual {v0, v6}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v6

    invoke-virtual {v6, v7}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v6

    invoke-virtual {v6}, Lp60;->a()Z

    move-result v6

    const-string v7, "isReportIncentivizedEnabled"

    .line 83
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v3, v5}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    :cond_21
    const-string v5, "config"

    .line 85
    invoke-virtual {v0, v5}, Ls60;->q(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "config"

    .line 86
    invoke-virtual {v0, v5}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v5

    const-string v6, "refresh_time"

    invoke-virtual {v5, v6}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v5

    invoke-virtual {v5}, Lp60;->g()J

    move-result-wide v5

    .line 87
    iget-object v7, v1, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    invoke-static {v7}, Lcom/vungle/warren/tasks/ReconfigJob;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v5

    move-object/from16 v7, v21

    invoke-interface {v7, v5}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_11

    :cond_22
    move-object/from16 v7, v21

    .line 88
    :goto_11
    :try_start_3
    const-class v5, Lcom/vungle/warren/VisionController;

    invoke-virtual {v4, v5}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/VisionController;

    const-string v6, "vision"

    invoke-static {v0, v6}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, v1, Lcom/vungle/warren/Vungle;->gson:Lj60;

    const-string v8, "vision"

    .line 89
    invoke-virtual {v0, v8}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v0

    const-class v8, Lcom/vungle/warren/vision/VisionConfig;

    .line 90
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_12

    .line 91
    :cond_23
    new-instance v9, Li80;

    invoke-direct {v9, v0}, Li80;-><init>(Lp60;)V

    invoke-virtual {v6, v9, v8}, Lj60;->b(La90;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :goto_12
    invoke-static {v8}, Landroidx/core/app/b;->P0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Lcom/vungle/warren/vision/VisionConfig;

    goto :goto_13

    :cond_24
    new-instance v0, Lcom/vungle/warren/vision/VisionConfig;

    invoke-direct {v0}, Lcom/vungle/warren/vision/VisionConfig;-><init>()V

    .line 94
    :goto_13
    invoke-virtual {v5, v0}, Lcom/vungle/warren/VisionController;->setConfig(Lcom/vungle/warren/vision/VisionConfig;)V
    :try_end_3
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_14

    .line 95
    :catch_0
    :try_start_4
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v5, "not able to apply vision data config"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    const/4 v0, 0x1

    .line 96
    sput-boolean v0, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/vungle/warren/InitCallback;->onSuccess()V

    const-string v5, "Vungle#init"

    const-string v6, "onSuccess"

    .line 98
    invoke-static {v5, v6}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v5, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    new-instance v5, Lcom/vungle/warren/SessionData;

    invoke-direct {v5}, Lcom/vungle/warren/SessionData;-><init>()V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/vungle/warren/SessionData;->setInitTimeStamp(J)V

    int-to-long v8, v2

    .line 102
    invoke-virtual {v5, v8, v9}, Lcom/vungle/warren/SessionData;->setTimeout(J)V

    .line 103
    iget-object v2, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v2

    const-class v6, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v2, v6}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/RuntimeValues;

    iget-object v2, v2, Lcom/vungle/warren/RuntimeValues;->sessionData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    iget-object v2, v1, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v2

    const-class v6, Lcom/vungle/warren/utility/AppSession;

    invoke-virtual {v2, v6}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/AppSession;

    invoke-virtual {v2, v5}, Lcom/vungle/warren/utility/AppSession;->setSessionData(Lcom/vungle/warren/SessionData;)Lcom/vungle/warren/utility/AppSession;

    move-result-object v2

    new-instance v5, Lcom/vungle/warren/Vungle$4;

    invoke-direct {v5, v1}, Lcom/vungle/warren/Vungle$4;-><init>(Lcom/vungle/warren/Vungle;)V

    .line 105
    invoke-virtual {v2, v5}, Lcom/vungle/warren/utility/AppSession;->setSessionCallback(Lcom/vungle/warren/utility/AppSession$SessionCallback;)Lcom/vungle/warren/utility/AppSession;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/vungle/warren/utility/AppSession;->observe()V

    .line 107
    invoke-virtual {v3}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 108
    invoke-static {}, Lcom/vungle/warren/tasks/CleanupJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    invoke-interface {v7, v3}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    if-eqz v2, :cond_25

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    new-instance v2, Lcom/vungle/warren/Vungle$5;

    invoke-direct {v2, v1}, Lcom/vungle/warren/Vungle$5;-><init>(Lcom/vungle/warren/Vungle;)V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    const-class v2, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v4, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 112
    new-instance v4, Lcom/vungle/warren/Vungle$6;

    move-object/from16 v5, v25

    invoke-direct {v4, v1, v3, v5}, Lcom/vungle/warren/Vungle$6;-><init>(Lcom/vungle/warren/Vungle;Ljava/util/List;Lcom/vungle/warren/AdLoader;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_25
    if-nez p2, :cond_26

    const/4 v3, 0x1

    goto :goto_15

    :cond_26
    const/4 v3, 0x0

    .line 113
    :goto_15
    invoke-static {v3}, Lcom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    .line 114
    invoke-static {}, Lcom/vungle/warren/tasks/SendLogsJob;->makeJobInfo()Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    goto :goto_17

    .line 115
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    .line 116
    sput-boolean v2, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 117
    sget-object v3, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    sget-object v2, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    instance-of v2, v0, Lcom/vungle/warren/network/HttpException;

    if-eqz v2, :cond_28

    .line 120
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_17

    :cond_28
    move-object/from16 v2, p1

    .line 121
    instance-of v3, v0, Lcom/vungle/warren/persistence/DatabaseHelper$DBException;

    if-eqz v3, :cond_29

    .line 122
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1a

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_17

    .line 123
    :cond_29
    instance-of v3, v0, Ljava/net/UnknownHostException;

    if-nez v3, :cond_2b

    instance-of v0, v0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_2a

    goto :goto_16

    .line 124
    :cond_2a
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_17

    .line 125
    :cond_2b
    :goto_16
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x21

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    :goto_17
    return-void
.end method

.method protected static deInit()V
    .locals 6

    .line 1
    const-class v0, Lcom/vungle/warren/AdLoader;

    const-class v1, Lcom/vungle/warren/downloader/Downloader;

    const-class v2, Lcom/vungle/warren/persistence/CacheManager;

    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v4, v3, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 2
    invoke-static {v4}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v2}, Lcom/vungle/warren/ServiceLocator;->isCreated(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v4, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/persistence/CacheManager;

    sget-object v5, Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;

    invoke-virtual {v2, v5}, Lcom/vungle/warren/persistence/CacheManager;->removeListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 5
    :cond_0
    invoke-virtual {v4, v1}, Lcom/vungle/warren/ServiceLocator;->isCreated(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v4, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v1}, Lcom/vungle/warren/downloader/Downloader;->cancelAll()V

    .line 7
    :cond_1
    invoke-virtual {v4, v0}, Lcom/vungle/warren/ServiceLocator;->isCreated(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v4, v0}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lcom/vungle/warren/AdLoader;->clear()V

    .line 9
    :cond_2
    iget-object v0, v3, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    :cond_3
    invoke-static {}, Lcom/vungle/warren/ServiceLocator;->deInit()V

    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/vungle/warren/Vungle;->isInitialized:Z

    .line 12
    sget-object v1, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    sget-object v1, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getAvailableBidTokens(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 3
    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/Executors;

    .line 4
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 5
    new-instance v2, Lcom/vungle/warren/persistence/FutureResult;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getApiExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v3, Lcom/vungle/warren/Vungle$15;

    invoke-direct {v3, p0, p1}, Lcom/vungle/warren/Vungle$15;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/vungle/warren/persistence/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    .line 7
    invoke-interface {v0}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1, v0}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCCPAStatus()Lcom/vungle/warren/Vungle$Consent;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/Vungle$Consent;

    return-object v0
.end method

.method private static getCCPAStatus(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ccpa_status"

    .line 2
    invoke-virtual {p0, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "opted_out"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    :goto_0
    return-object p0
.end method

.method private static getConsent(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "consent_status"

    .line 1
    invoke-virtual {p0, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "opted_in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    :goto_0
    return-object p0
.end method

.method public static getConsentMessageVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getConsentMessageVersion(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "consent_message_version"

    .line 2
    invoke-virtual {p0, v0}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConsentStatus()Lcom/vungle/warren/Vungle$Consent;
    .locals 5

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 3
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 4
    const-class v3, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    const-class v3, Lcom/vungle/warren/model/Cookie;

    const-string v4, "consentIsImportantToVungle"

    .line 5
    invoke-virtual {v1, v4, v3}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-interface {v2}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "consent_status"

    .line 6
    invoke-virtual {v1, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "opted_out"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "opted_out_by_timeout"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "opted_in"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-object v2

    .line 8
    :pswitch_0
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v1

    .line 9
    :pswitch_1
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_4
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/Vungle$Consent;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f34a0e -> :sswitch_2
        0x495b4057 -> :sswitch_1
        0x668a2021 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNativeAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/VungleNativeAd;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/vungle/warren/Vungle;->getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Please use Banners.getBanner(... ) to retrieve Banner Ad"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x1d

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0, p1}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static getNativeAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)Lcom/vungle/warren/ui/view/VungleNativeView;
    .locals 15

    move-object v10, p0

    move-object/from16 v3, p2

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized, returned VungleNativeAd = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    .line 3
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v3, p0, v0}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_0
    return-object v2

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 5
    const-class v4, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v1, v4}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vungle/warren/AdLoader;

    .line 6
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v5, p0}, Lcom/vungle/warren/AdLoader;->isLoading(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v11, Lcom/vungle/warren/ui/view/VungleNativeView;

    iget-object v2, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-class v2, Lcom/vungle/warren/PresentationFactory;

    .line 9
    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/vungle/warren/PresentationFactory;

    new-instance v14, Lcom/vungle/warren/AdEventListener;

    iget-object v2, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    const-class v0, Lcom/vungle/warren/persistence/Repository;

    .line 10
    invoke-virtual {v1, v0}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vungle/warren/persistence/Repository;

    const-class v0, Lcom/vungle/warren/tasks/JobRunner;

    .line 11
    invoke-virtual {v1, v0}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vungle/warren/tasks/JobRunner;

    const-class v0, Lcom/vungle/warren/VisionController;

    .line 12
    invoke-virtual {v1, v0}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vungle/warren/VisionController;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/vungle/warren/AdEventListener;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    move-object v0, v11

    move-object v1, v12

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/ui/view/VungleNativeView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PresentationFactory;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    return-object v11

    .line 13
    :cond_3
    :goto_0
    sget-object v1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v4, "Playing or Loading operation ongoing. Playing "

    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    .line 14
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Loading: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v5, p0}, Lcom/vungle/warren/AdLoader;->isLoading(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    .line 17
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v3, p0, v0}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_4
    return-object v2
.end method

.method static getValidPlacementModels()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized return empty placements list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    .line 6
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 7
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-interface {v0}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getValidPlacements()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v1, "Vungle is not initialized return empty placements list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/persistence/Repository;

    .line 6
    const-class v2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/TimeoutProvider;

    .line 7
    invoke-virtual {v1}, Lcom/vungle/warren/persistence/Repository;->getValidPlacementIds()Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-interface {v0}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/vungle/warren/VungleSettings$Builder;

    invoke-direct {v0}, Lcom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings$Builder;->build()Lcom/vungle/warren/VungleSettings;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V

    return-void
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V
    .locals 6

    const-string v0, "Vungle#init"

    const-string v1, "init request"

    .line 3
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    const/4 v1, 0x6

    if-nez p1, :cond_0

    .line 4
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v2

    const-class v3, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/RuntimeValues;

    .line 6
    iget-object v3, v2, Lcom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object p3

    .line 8
    const-class v3, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {p3, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/utility/Executors;

    .line 9
    instance-of v4, p2, Lcom/vungle/warren/InitCallbackWrapper;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/vungle/warren/InitCallbackWrapper;

    .line 10
    invoke-interface {v3}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lcom/vungle/warren/InitCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/InitCallback;)V

    move-object p2, v4

    :goto_0
    if-eqz p0, :cond_8

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    instance-of v1, p1, Landroid/app/Application;

    if-nez v1, :cond_3

    .line 13
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 14
    :cond_3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {p2}, Lcom/vungle/warren/InitCallback;->onSuccess()V

    const-string p0, "init already complete"

    .line 16
    invoke-static {v0, p0}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_4
    sget-object v0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p2, p0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    return-void

    :cond_5
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 19
    invoke-static {p1, v0}, Landroidx/core/app/b;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.permission.INTERNET"

    .line 20
    invoke-static {p1, v0}, Landroidx/core/app/b;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 21
    :cond_6
    iget-object v0, v2, Lcom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    invoke-interface {v3}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/Vungle$1;

    invoke-direct {v0, p0, v2, p3, p1}, Lcom/vungle/warren/Vungle$1;-><init>(Ljava/lang/String;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/ServiceLocator;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 23
    :cond_7
    :goto_1
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Network permissions not granted"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    const/16 p1, 0x22

    invoke-direct {p0, p1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p2, p0}, Lcom/vungle/warren/Vungle;->onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 25
    sget-object p0, Lcom/vungle/warren/Vungle;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 26
    :cond_8
    :goto_2
    new-instance p0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {p2, p0}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 27
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A valid InitCallback required to ensure API calls are being made after initialize is successful"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Ljava/util/Collection;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/vungle/warren/InitCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Lcom/vungle/warren/VungleSettings$Builder;

    invoke-direct {p0}, Lcom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/warren/VungleSettings$Builder;->build()Lcom/vungle/warren/VungleSettings;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/vungle/warren/Vungle;->isInitialized:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .locals 2

    const-string v0, "Vungle#loadAd"

    const-string v1, "loadAd API call invoked"

    .line 2
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Vungle is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/error/VungleException;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 7
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p2, v0}, Lcom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 8
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/vungle/warren/Vungle;->loadAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method public static loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lcom/vungle/warren/AdConfig;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method static loadAdInternal(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Vungle is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Vungle;->onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/error/VungleException;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/vungle/warren/LoadAdCallbackWrapper;

    const-class v2, Lcom/vungle/warren/utility/Executors;

    .line 6
    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    .line 7
    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/vungle/warren/LoadAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/LoadAdCallback;)V

    .line 8
    const-class p2, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, p2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/warren/AdLoader;

    if-nez p1, :cond_2

    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    :cond_2
    invoke-virtual {p2, p0, p1, v1}, Lcom/vungle/warren/AdLoader;->load(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V

    return-void
.end method

.method private static onInitError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0, p1}, Lcom/vungle/warren/InitCallback;->onError(Lcom/vungle/warren/error/VungleException;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "Vungle#init"

    .line 4
    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static onLoadError(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "Vungle#loadAd"

    .line 4
    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "Vungle#playAd"

    .line 4
    invoke-static {p1, p0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V
    .locals 10

    const-string v0, "Vungle#playAd"

    const-string v1, "playAd call invoked"

    .line 1
    invoke-static {v0, v1}, Lcom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object p1, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Locator is not initialized"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {p0, p2, p1}, Lcom/vungle/warren/Vungle;->onPlayError(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/error/VungleException;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 6
    const-class v1, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vungle/warren/utility/Executors;

    .line 7
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vungle/warren/persistence/Repository;

    .line 8
    const-class v1, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vungle/warren/AdLoader;

    .line 9
    const-class v1, Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vungle/warren/VungleApiClient;

    .line 10
    new-instance v5, Lcom/vungle/warren/PlayAdCallbackWrapper;

    invoke-interface {v9}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v5, v0, p2}, Lcom/vungle/warren/PlayAdCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/PlayAdCallback;)V

    .line 11
    invoke-interface {v9}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/Vungle$9;

    move-object v2, v0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/vungle/warren/Vungle$9;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/utility/Executors;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static reConfigure()V
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v1}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 3
    const-class v2, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/Executors;

    .line 4
    const-class v3, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v1, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/RuntimeValues;

    .line 5
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v2}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/vungle/warren/Vungle$2;

    invoke-direct {v2, v1}, Lcom/vungle/warren/Vungle$2;-><init>(Lcom/vungle/warren/RuntimeValues;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/InitCallback;

    invoke-static {v2, v0, v1}, Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;)V

    :goto_0
    return-void
.end method

.method private static declared-synchronized renderAd(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    .locals 14

    const-class v1, Lcom/vungle/warren/Vungle;

    monitor-enter v1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v2, "Sdk is not initilized"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v1

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v2, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v2

    .line 5
    new-instance v13, Lcom/vungle/warren/Vungle$10;

    iget-object v5, v0, Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;

    const-class v3, Lcom/vungle/warren/persistence/Repository;

    .line 6
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/vungle/warren/persistence/Repository;

    const-class v3, Lcom/vungle/warren/AdLoader;

    .line 7
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/vungle/warren/AdLoader;

    const-class v3, Lcom/vungle/warren/tasks/JobRunner;

    .line 8
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/vungle/warren/tasks/JobRunner;

    const-class v3, Lcom/vungle/warren/VisionController;

    .line 9
    invoke-virtual {v2, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vungle/warren/VisionController;

    move-object v3, v13

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lcom/vungle/warren/Vungle$10;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/tasks/JobRunner;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    .line 10
    invoke-static {v13}, Lcom/vungle/warren/AdActivity;->setEventListener(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 11
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    const-class v4, Lcom/vungle/warren/ui/VungleActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "placement"

    move-object v4, p0

    .line 13
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    .line 15
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/vungle/warren/utility/ActivityManager;->startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Lcom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static saveGDPRConsent(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lcom/vungle/warren/model/Cookie;

    new-instance v1, Lcom/vungle/warren/Vungle$13;

    invoke-direct {v1, p1, p2, p0}, Lcom/vungle/warren/Vungle$13;-><init>(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;Lcom/vungle/warren/persistence/Repository;)V

    const-string p1, "consentIsImportantToVungle"

    invoke-virtual {p0, p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    return-void
.end method

.method public static setHeaderBiddingCallback(Lcom/vungle/warren/HeaderBiddingCallback;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 3
    const-class v1, Lcom/vungle/warren/RuntimeValues;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/RuntimeValues;

    .line 4
    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->headerBiddingCallback:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;

    const-class v3, Lcom/vungle/warren/utility/Executors;

    .line 5
    invoke-virtual {v0, v3}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Lcom/vungle/warren/HeaderBiddingCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/HeaderBiddingCallback;)V

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static setIncentivizedFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Vungle is not initialized, context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v1

    .line 4
    const-class v0, Lcom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/vungle/warren/Vungle$7;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/Vungle$7;-><init>(Lcom/vungle/warren/ServiceLocator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static stopPlaying()V
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "AdvertisementBus"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "command"

    const-string v3, "stopAll"

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lc4;->b(Landroid/content/Context;)Lc4;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc4;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public static updateCCPAStatus(Lcom/vungle/warren/Vungle$Consent;)V
    .locals 2

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Unable to update CCPA status, Invalid input parameter."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->ccpaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 5
    const-class v1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 6
    invoke-static {v0, p0}, Lcom/vungle/warren/Vungle;->updateCCPAStatus(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V

    return-void

    .line 7
    :cond_2
    :goto_0
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string v0, "Vungle is not initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static updateCCPAStatus(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V
    .locals 2

    .line 8
    const-class v0, Lcom/vungle/warren/model/Cookie;

    new-instance v1, Lcom/vungle/warren/Vungle$14;

    invoke-direct {v1, p1, p0}, Lcom/vungle/warren/Vungle$14;-><init>(Lcom/vungle/warren/Vungle$Consent;Lcom/vungle/warren/persistence/Repository;)V

    const-string p1, "ccpaIsImportantToVungle"

    invoke-virtual {p0, p1, v0, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/vungle/warren/persistence/Repository$LoadCallback;)V

    return-void
.end method

.method public static updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Cannot set consent with a null consent, please check your code"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iput-object p1, v0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    iget-object p0, v0, Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object p0

    .line 6
    const-class p1, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/persistence/Repository;

    .line 7
    iget-object p1, v0, Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/Vungle$Consent;

    iget-object v0, v0, Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/vungle/warren/Vungle;->saveGDPRConsent(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;

    const-string p1, "Vungle is not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
