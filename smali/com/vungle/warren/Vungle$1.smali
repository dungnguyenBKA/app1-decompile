.class final Lcom/vungle/warren/Vungle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

.field final synthetic val$serviceLocator:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/ServiceLocator;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$1;->val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    const-class v0, Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    sget-object v2, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vungle/warren/Vungle;->access$002(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lcom/vungle/warren/Vungle$1;->val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object v3, v3, Lcom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/InitCallback;

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    const/16 v5, 0x1a

    if-nez v4, :cond_6

    .line 4
    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v6, Lcom/vungle/warren/log/LogManager;

    invoke-virtual {v4, v6}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/log/LogManager;

    .line 5
    sget-object v6, Lcom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const/16 v7, 0x64

    invoke-static {v4, v6, v7}, Lcom/vungle/warren/VungleLogger;->setupLoggerWithLogLevel(Lcom/vungle/warren/log/LogManager;Lcom/vungle/warren/VungleLogger$LoggerLevel;I)V

    .line 6
    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v6, Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v4, v6}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/persistence/CacheManager;

    .line 7
    iget-object v6, p0, Lcom/vungle/warren/Vungle$1;->val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object v6, v6, Lcom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/VungleSettings;

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForInit()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-gez v11, :cond_0

    .line 9
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v3, v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 10
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$300()Lcom/vungle/warren/persistence/CacheManager$Listener;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/vungle/warren/persistence/CacheManager;->addListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 12
    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/vungle/warren/Vungle;->access$402(Lcom/vungle/warren/Vungle;Landroid/content/Context;)Landroid/content/Context;

    .line 13
    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    invoke-virtual {v4, v0}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/persistence/Repository;

    .line 14
    :try_start_0
    invoke-virtual {v4}, Lcom/vungle/warren/persistence/Repository;->init()V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v7, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v8, Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v7, v8}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/warren/VungleApiClient;

    .line 16
    invoke-virtual {v7}, Lcom/vungle/warren/VungleApiClient;->init()V

    .line 17
    invoke-virtual {v7}, Lcom/vungle/warren/VungleApiClient;->platformIsNotSupported()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 18
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v3, v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 19
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    :cond_1
    if-eqz v6, :cond_2

    .line 20
    invoke-virtual {v6}, Lcom/vungle/warren/VungleSettings;->getAndroidIdOptOut()Z

    move-result v6

    invoke-virtual {v7, v6}, Lcom/vungle/warren/VungleApiClient;->setDefaultIdFallbackDisabled(Z)V

    .line 21
    :cond_2
    iget-object v6, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v7, Lcom/vungle/warren/tasks/JobRunner;

    invoke-virtual {v6, v7}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/tasks/JobRunner;

    .line 22
    iget-object v7, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v8, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v7, v8}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/warren/AdLoader;

    .line 23
    invoke-virtual {v7, v6}, Lcom/vungle/warren/AdLoader;->init(Lcom/vungle/warren/tasks/JobRunner;)V

    .line 24
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 25
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/Vungle$Consent;

    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$600(Lcom/vungle/warren/Vungle;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/vungle/warren/Vungle;->access$700(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v6, "consentIsImportantToVungle"

    .line 26
    invoke-virtual {v4, v6, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/model/Cookie;

    if-nez v6, :cond_4

    .line 27
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    invoke-static {v2, v7}, Lcom/vungle/warren/Vungle;->access$602(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_4
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-static {v6}, Lcom/vungle/warren/Vungle;->access$800(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 30
    invoke-static {v6}, Lcom/vungle/warren/Vungle;->access$900(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vungle/warren/Vungle;->access$602(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    :goto_0
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 32
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/Vungle$Consent;

    invoke-static {v4, v6}, Lcom/vungle/warren/Vungle;->access$1100(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V

    goto :goto_1

    :cond_5
    const-string v6, "ccpaIsImportantToVungle"

    .line 33
    invoke-virtual {v4, v6, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/Cookie;

    .line 34
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-static {v4}, Lcom/vungle/warren/Vungle;->access$1200(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 35
    :catch_0
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v3, v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 36
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 37
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    invoke-virtual {v4, v0}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    const-string v4, "appId"

    .line 38
    invoke-virtual {v0, v4, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    if-nez v1, :cond_7

    .line 39
    new-instance v1, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v1, v4}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 40
    :cond_7
    iget-object v6, p0, Lcom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 41
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    invoke-static {v2, v3, v4}, Lcom/vungle/warren/Vungle;->access$1400(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;Z)V

    return-void

    :catch_1
    if-eqz v3, :cond_8

    .line 43
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v3, v0}, Lcom/vungle/warren/Vungle;->access$200(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 44
    :cond_8
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
