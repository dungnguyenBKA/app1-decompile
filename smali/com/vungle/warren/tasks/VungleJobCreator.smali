.class public Lcom/vungle/warren/tasks/VungleJobCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/tasks/JobCreator;


# instance fields
.field private final adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

.field private final adLoader:Lcom/vungle/warren/AdLoader;

.field private final apiClient:Lcom/vungle/warren/VungleApiClient;

.field private final designer:Lcom/vungle/warren/persistence/Designer;

.field private final logManager:Lcom/vungle/warren/log/LogManager;

.field private final reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

.field private final repository:Lcom/vungle/warren/persistence/Repository;

.field private final vungleApi:Lcom/vungle/warren/VungleStaticApi;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/analytics/AdAnalytics;Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/log/LogManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->designer:Lcom/vungle/warren/persistence/Designer;

    .line 4
    iput-object p5, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    .line 5
    iput-object p3, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->apiClient:Lcom/vungle/warren/VungleApiClient;

    .line 6
    iput-object p4, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    .line 7
    iput-object p6, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->adLoader:Lcom/vungle/warren/AdLoader;

    .line 8
    iput-object p7, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    .line 9
    iput-object p8, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->logManager:Lcom/vungle/warren/log/LogManager;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/vungle/warren/tasks/Job;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    sget-object v0, Lcom/vungle/warren/tasks/ReconfigJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/vungle/warren/tasks/ReconfigJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->reconfigCall:Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    invoke-direct {p1, v0}, Lcom/vungle/warren/tasks/ReconfigJob;-><init>(Lcom/vungle/warren/tasks/ReconfigJob$ReconfigCall;)V

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/vungle/warren/tasks/DownloadJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Lcom/vungle/warren/tasks/DownloadJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->adLoader:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    invoke-direct {p1, v0, v1}, Lcom/vungle/warren/tasks/DownloadJob;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/VungleStaticApi;)V

    return-object p1

    .line 6
    :cond_1
    sget-object v0, Lcom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance p1, Lcom/vungle/warren/tasks/SendReportsJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->apiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-direct {p1, v0, v1}, Lcom/vungle/warren/tasks/SendReportsJob;-><init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;)V

    return-object p1

    .line 8
    :cond_2
    sget-object v0, Lcom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance p1, Lcom/vungle/warren/tasks/CleanupJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->designer:Lcom/vungle/warren/persistence/Designer;

    iget-object v1, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->adLoader:Lcom/vungle/warren/AdLoader;

    invoke-direct {p1, v0, v1, v2}, Lcom/vungle/warren/tasks/CleanupJob;-><init>(Lcom/vungle/warren/persistence/Designer;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdLoader;)V

    return-object p1

    .line 10
    :cond_3
    sget-object v0, Lcom/vungle/warren/tasks/AnalyticsJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    new-instance p1, Lcom/vungle/warren/tasks/AnalyticsJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-direct {p1, v0}, Lcom/vungle/warren/tasks/AnalyticsJob;-><init>(Lcom/vungle/warren/analytics/AdAnalytics;)V

    return-object p1

    .line 12
    :cond_4
    sget-object v0, Lcom/vungle/warren/tasks/SendLogsJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    new-instance p1, Lcom/vungle/warren/tasks/SendLogsJob;

    iget-object v0, p0, Lcom/vungle/warren/tasks/VungleJobCreator;->logManager:Lcom/vungle/warren/log/LogManager;

    invoke-direct {p1, v0}, Lcom/vungle/warren/tasks/SendLogsJob;-><init>(Lcom/vungle/warren/log/LogManager;)V

    return-object p1

    .line 14
    :cond_5
    new-instance v0, Lcom/vungle/warren/tasks/UnknownTagException;

    const-string v1, "Unknown Job Type "

    invoke-static {v1, p1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/warren/tasks/UnknownTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_6
    new-instance p1, Lcom/vungle/warren/tasks/UnknownTagException;

    const-string v0, "Job tag is null"

    invoke-direct {p1, v0}, Lcom/vungle/warren/tasks/UnknownTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
