.class public Lcom/vungle/warren/log/LogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CRASH_COLLECT_ENABLED:Z = false

.field public static final DEFAULT_CRASH_SEND_BATCH_MAX:I = 0x5

.field public static final DEFAULT_LOGGING_ENABLED:Z = false

.field static final LOGGER_PREFS_FILENAME:Ljava/lang/String; = "vungle_logger_prefs"

.field static final PREFS_CRASH_BATCH_MAX_KEY:Ljava/lang/String; = "crash_batch_max"

.field static final PREFS_CRASH_COLLECT_FILTER_KEY:Ljava/lang/String; = "crash_collect_filter"

.field static final PREFS_CRASH_REPORT_ENABLED_KEY:Ljava/lang/String; = "crash_report_enabled"

.field static final PREFS_LOGGING_ENABLED_KEY:Ljava/lang/String; = "logging_enabled"

.field private static final TAG:Ljava/lang/String; = "LogManager"

.field public static sDefaultCollectFilter:Ljava/lang/String; = "com.vungle"


# instance fields
.field private bundleID:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private crashBatchMax:I

.field private crashCollectFilter:Ljava/lang/String;

.field private crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private customDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ioExecutor:Ljava/util/concurrent/Executor;

.field private isCrashReportInit:Z

.field private jvmCrashCollector:Lcom/vungle/warren/log/JVMCrashCollector;

.field private logPersister:Lcom/vungle/warren/log/LogPersister;

.field private logSender:Lcom/vungle/warren/log/LogSender;

.field private loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sdkLoggingEventListener:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vungle/warren/log/LogPersister;Lcom/vungle/warren/log/LogSender;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/log/LogManager;->loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    sget-object v0, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/vungle/warren/log/LogManager;->crashBatchMax:I

    .line 7
    iput-boolean v1, p0, Lcom/vungle/warren/log/LogManager;->isCrashReportInit:Z

    .line 8
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    .line 9
    new-instance v2, Lcom/vungle/warren/log/LogManager$2;

    invoke-direct {v2, p0}, Lcom/vungle/warren/log/LogManager$2;-><init>(Lcom/vungle/warren/log/LogManager;)V

    iput-object v2, p0, Lcom/vungle/warren/log/LogManager;->sdkLoggingEventListener:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    .line 10
    iput-object p1, p0, Lcom/vungle/warren/log/LogManager;->context:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/log/LogManager;->bundleID:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/vungle/warren/log/LogManager;->logSender:Lcom/vungle/warren/log/LogSender;

    .line 13
    iput-object p2, p0, Lcom/vungle/warren/log/LogManager;->logPersister:Lcom/vungle/warren/log/LogPersister;

    .line 14
    iput-object p4, p0, Lcom/vungle/warren/log/LogManager;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 15
    iget-object p3, p0, Lcom/vungle/warren/log/LogManager;->sdkLoggingEventListener:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    invoke-virtual {p2, p3}, Lcom/vungle/warren/log/LogPersister;->setSdkLoggingEventListener(Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V

    .line 16
    const-class p2, Lcom/vungle/warren/Vungle;

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    :cond_0
    const-string p2, "vungle_logger_prefs"

    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    iget-object p2, p0, Lcom/vungle/warren/log/LogManager;->loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p3, "logging_enabled"

    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    iget-object p2, p0, Lcom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p3, "crash_report_enabled"

    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    sget-object p2, Lcom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    const-string p3, "crash_collect_filter"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    const-string p2, "crash_batch_max"

    .line 22
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vungle/warren/log/LogManager;->crashBatchMax:I

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->initJvmCollector()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/VungleApiClient;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/warren/log/LogPersister;

    invoke-virtual {p2}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/vungle/warren/log/LogPersister;-><init>(Ljava/io/File;)V

    new-instance p2, Lcom/vungle/warren/log/LogSender;

    invoke-direct {p2, p1, p3}, Lcom/vungle/warren/log/LogSender;-><init>(Landroid/content/Context;Lcom/vungle/warren/VungleApiClient;)V

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/vungle/warren/log/LogManager;-><init>(Landroid/content/Context;Lcom/vungle/warren/log/LogPersister;Lcom/vungle/warren/log/LogSender;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/log/LogManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/log/LogManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/log/LogManager;->bundleID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/log/LogManager;)Lcom/vungle/warren/log/LogPersister;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/log/LogManager;->logPersister:Lcom/vungle/warren/log/LogPersister;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/log/LogManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/log/LogManager;->sendPendingLogs()V

    return-void
.end method

.method private sendCrashLogs()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->logPersister:Lcom/vungle/warren/log/LogPersister;

    iget v1, p0, Lcom/vungle/warren/log/LogManager;->crashBatchMax:I

    invoke-virtual {v0, v1}, Lcom/vungle/warren/log/LogPersister;->getCrashReportFiles(I)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->logSender:Lcom/vungle/warren/log/LogSender;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/log/LogSender;->sendLogs([Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendPendingLogs()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->logPersister:Lcom/vungle/warren/log/LogPersister;

    invoke-virtual {v0}, Lcom/vungle/warren/log/LogPersister;->getPendingFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->logSender:Lcom/vungle/warren/log/LogSender;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/log/LogSender;->sendLogs([Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method declared-synchronized initJvmCollector()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/warren/log/LogManager;->isCrashReportInit:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->jvmCrashCollector:Lcom/vungle/warren/log/JVMCrashCollector;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/vungle/warren/log/JVMCrashCollector;

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->sdkLoggingEventListener:Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    invoke-direct {v0, v1}, Lcom/vungle/warren/log/JVMCrashCollector;-><init>(Lcom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V

    iput-object v0, p0, Lcom/vungle/warren/log/LogManager;->jvmCrashCollector:Lcom/vungle/warren/log/JVMCrashCollector;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->jvmCrashCollector:Lcom/vungle/warren/log/JVMCrashCollector;

    iget-object v1, p0, Lcom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/log/JVMCrashCollector;->updateConfig(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/vungle/warren/log/LogManager;->isCrashReportInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCrashReportEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public removeCustomData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveLog(Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/vungle/warren/log/LogManager$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/log/LogManager$1;-><init>(Lcom/vungle/warren/log/LogManager;Lcom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSdkLogs()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/log/LogManager;->sendCrashLogs()V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/log/LogManager;->sendPendingLogs()V

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "vungle_logger_prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "logging_enabled"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->logPersister:Lcom/vungle/warren/log/LogPersister;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/log/LogPersister;->setMaximumEntries(I)V

    return-void
.end method

.method public declared-synchronized updateCrashReportConfig(ZLjava/lang/String;I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 4
    iget v4, p0, Lcom/vungle/warren/log/LogManager;->crashBatchMax:I

    if-eq v4, p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v1, :cond_9

    .line 5
    :cond_3
    iget-object v4, p0, Lcom/vungle/warren/log/LogManager;->context:Landroid/content/Context;

    const-string v5, "vungle_logger_prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "crash_report_enabled"

    .line 8
    invoke-interface {v2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    if-eqz v3, :cond_6

    const-string v0, "*"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p2, ""

    .line 10
    iput-object p2, p0, Lcom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    goto :goto_3

    .line 11
    :cond_5
    iput-object p2, p0, Lcom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    :goto_3
    const-string p2, "crash_collect_filter"

    .line 12
    iget-object v0, p0, Lcom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    invoke-interface {v2, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    if-eqz v1, :cond_7

    .line 13
    iput p3, p0, Lcom/vungle/warren/log/LogManager;->crashBatchMax:I

    const-string p2, "crash_batch_max"

    .line 14
    invoke-interface {v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 15
    :cond_7
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    iget-object p2, p0, Lcom/vungle/warren/log/LogManager;->jvmCrashCollector:Lcom/vungle/warren/log/JVMCrashCollector;

    if-eqz p2, :cond_8

    .line 17
    iget-object p3, p0, Lcom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/vungle/warren/log/JVMCrashCollector;->updateConfig(Ljava/lang/String;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 18
    invoke-virtual {p0}, Lcom/vungle/warren/log/LogManager;->initJvmCollector()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
