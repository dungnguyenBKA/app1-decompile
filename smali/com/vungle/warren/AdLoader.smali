.class public Lcom/vungle/warren/AdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/AdLoader$DownloadAdCallback;,
        Lcom/vungle/warren/AdLoader$Operation;,
        Lcom/vungle/warren/AdLoader$Priority;,
        Lcom/vungle/warren/AdLoader$ReschedulePolicy;,
        Lcom/vungle/warren/AdLoader$DownloadCallback;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_AD_CALLBACK_ON_DOWNLOAD_COMPLETED_CONTEXT:Ljava/lang/String; = "AdLoader#DownloadAdCallback#onDownloadCompleted; loadAd sequence"

.field private static final DOWNNLOAD_AD_ASSETS_CONTEXT:Ljava/lang/String; = "AdLoader#downnloadAdAssets; loadAd sequence"

.field public static final EXPONENTIAL_RATE:J = 0x2L

.field private static final FETCH_AD_METADATA_CONTEXT:Ljava/lang/String; = "AdLoader#fetchAdMetadata; loadAd sequence"

.field private static final GET_ASSET_DOWNLOAD_LISTENER_CONTEXT:Ljava/lang/String; = "AdLoader#getAssetDownloadListener; loadAd sequence"

.field private static final LOAD_AD_EXECUTE_CONTEXT:Ljava/lang/String; = "AdLoader#loadAd#execute; loadAd sequence"

.field private static final NOT_A_DIR:Ljava/lang/String; = "not a dir"

.field private static final ON_ASSET_DOWNLOAD_FINISHED_CONTEXT:Ljava/lang/String; = "AdLoader#onAssetDownloadFinished; loadAd sequence"

.field private static final OP_ID_AND_ADVERTISEMENT_FORMAT:Ljava/lang/String; = "op.id = %1$s; advertisement = %2$s"

.field private static final PLACEMENT_ID_AND_ADVERTISEMENT_FORMAT_2_3:Ljava/lang/String; = "placementId = %2$s; advertisement = %3$s"

.field private static final PLACEMENT_ID_AND_ADVERTISEMENT_FORMAT_3_4:Ljava/lang/String; = "placementId = %3$s; advertisement = %4$s"

.field public static final RETRY_COUNT:I = 0x5

.field public static final RETRY_DELAY:J = 0x7d0L

.field private static final STRING_AND_OP_ID_FORMAT:Ljava/lang/String; = "%1$s; op.id = %2$s"

.field private static final TAG:Ljava/lang/String; = "com.vungle.warren.AdLoader"


# instance fields
.field private final cacheManager:Lcom/vungle/warren/persistence/CacheManager;

.field private final downloader:Lcom/vungle/warren/downloader/Downloader;

.field private jobRunnerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/vungle/warren/tasks/JobRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final loadOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final omInjector:Lcom/vungle/warren/omsdk/OMInjector;

.field private final pendingOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/vungle/warren/persistence/Repository;

.field private final runtimeValues:Lcom/vungle/warren/RuntimeValues;

.field private final sdkExecutors:Lcom/vungle/warren/utility/Executors;

.field private final sequence:Lcom/vungle/warren/OperationSequence;

.field private sequenceLoadingId:Ljava/lang/String;

.field private final startingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final visionController:Lcom/vungle/warren/VisionController;

.field private final vungleApi:Lcom/vungle/warren/VungleStaticApi;

.field private final vungleApiClient:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/utility/Executors;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/downloader/Downloader;Lcom/vungle/warren/RuntimeValues;Lcom/vungle/warren/VungleStaticApi;Lcom/vungle/warren/VisionController;Lcom/vungle/warren/OperationSequence;Lcom/vungle/warren/omsdk/OMInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->sequenceLoadingId:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->jobRunnerRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    iput-object p1, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/Executors;

    .line 8
    iput-object p2, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 9
    iput-object p3, p0, Lcom/vungle/warren/AdLoader;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    .line 10
    iput-object p4, p0, Lcom/vungle/warren/AdLoader;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    .line 11
    iput-object p5, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/Downloader;

    .line 12
    iput-object p6, p0, Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    .line 13
    iput-object p7, p0, Lcom/vungle/warren/AdLoader;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    .line 14
    iput-object p8, p0, Lcom/vungle/warren/AdLoader;->visionController:Lcom/vungle/warren/VisionController;

    .line 15
    iput-object p9, p0, Lcom/vungle/warren/AdLoader;->sequence:Lcom/vungle/warren/OperationSequence;

    .line 16
    iput-object p10, p0, Lcom/vungle/warren/AdLoader;->omInjector:Lcom/vungle/warren/omsdk/OMInjector;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/OperationSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->sequence:Lcom/vungle/warren/OperationSequence;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdLoader;->onError(Lcom/vungle/warren/AdLoader$Operation;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdLoader;->isSizeInvalid(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/model/Advertisement;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->canReDownload(Lcom/vungle/warren/model/Advertisement;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/RuntimeValues;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/CacheManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/AdLoader;->setLoading(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/AdLoader;->downloadAdAssets(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/AdLoader;->fetchAdMetadata(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/vungle/warren/AdLoader;Ljava/lang/Throwable;)Lcom/vungle/warren/error/VungleException;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->retrofitToVungleException(Ljava/lang/Throwable;)Lcom/vungle/warren/error/VungleException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleApiClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/AdLoader;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/vungle/warren/AdLoader;I)Lcom/vungle/warren/error/VungleException;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->reposeCodeToVungleException(I)Lcom/vungle/warren/error/VungleException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VisionController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->visionController:Lcom/vungle/warren/VisionController;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/utility/Executors;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/Executors;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/vungle/warren/AdLoader;Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/warren/AdLoader;->onAssetDownloadFinished(Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/vungle/warren/AdLoader;Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->isZip(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/vungle/warren/AdLoader;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->onChangePriority(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->startLoading(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vungle/warren/AdLoader;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->tryLoadNextInQueue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/VungleStaticApi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->vungleApi:Lcom/vungle/warren/VungleStaticApi;

    return-object p0
.end method

.method static synthetic access$900(Lcom/vungle/warren/AdLoader;)Lcom/vungle/warren/persistence/Repository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    return-object p0
.end method

.method private canReDownload(Lcom/vungle/warren/model/Advertisement;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/AdAsset;

    .line 5
    iget v3, v1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v3, v2, :cond_3

    .line 6
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v3, v1}, Lcom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 8
    :cond_3
    iget-object v1, v1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method private downloadAdAssets(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vungle/warren/AdLoader;->tryLoadNextInQueue(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AdLoader#downnloadAdAssets; loadAd sequence"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 6
    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v1, v0, v3

    aput-object p2, v0, v5

    const-string v1, "One or more ad asset URLs is empty or not valid;op.id = %1$s; advertisement = %2$s"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v2, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p3, v0, p1, v1}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    const-string p3, "Aborting, Failed to download Ad assets for: "

    invoke-static {p3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_2
    new-instance v0, Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getUIExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/vungle/warren/DownloadCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    const/16 v1, 0x1a

    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, p2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    iget-object p3, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_3

    new-array p3, v4, [Ljava/lang/Object;

    .line 14
    iget-object v4, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v4, p3, v3

    aput-object p2, p3, v5

    const-string v3, "Cannot load all ad assets; op.id = %1$s; advertisement = %2$s"

    .line 15
    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-static {v2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p3, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p3, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/warren/model/AdAsset;

    .line 19
    iget v7, v6, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v8, 0x3

    const/16 v9, 0x18

    if-ne v7, v8, :cond_5

    .line 20
    new-instance v7, Ljava/io/File;

    iget-object v8, v6, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v6}, Lcom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    iget v7, v6, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v7, v5, :cond_5

    new-array p3, v4, [Ljava/lang/Object;

    .line 22
    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v1, p3, v3

    aput-object p2, p3, v5

    const-string v1, "Cannot download ad assets - asset filetype is zip_asset;op.id = %1$s; advertisement = %2$s"

    .line 23
    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-static {v2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance p3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p3, v9}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p3, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_5
    iget v7, v6, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    iget v7, v6, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v7, :cond_6

    goto :goto_0

    .line 27
    :cond_6
    iget-object v7, v6, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array p3, v4, [Ljava/lang/Object;

    .line 28
    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v1, p3, v3

    aput-object p2, p3, v5

    const-string v1, "Cannot download ad assets - empty ;op.id = %1$s; advertisement = %2$s"

    .line 29
    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 30
    invoke-static {v2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance p3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p3, v9}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p3, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_7
    iget v7, p1, Lcom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-direct {p0, v6, v7}, Lcom/vungle/warren/AdLoader;->getDownloadRequest(Lcom/vungle/warren/model/AdAsset;I)Lcom/vungle/warren/downloader/DownloadRequest;

    move-result-object v7

    .line 33
    iget v8, v6, Lcom/vungle/warren/model/AdAsset;->status:I

    if-ne v8, v5, :cond_8

    .line 34
    iget-object v8, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/Downloader;

    const-wide/16 v9, 0x3e8

    invoke-interface {v8, v7, v9, v10}, Lcom/vungle/warren/downloader/Downloader;->cancelAndAwait(Lcom/vungle/warren/downloader/DownloadRequest;J)Z

    .line 35
    iget v7, p1, Lcom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-direct {p0, v6, v7}, Lcom/vungle/warren/AdLoader;->getDownloadRequest(Lcom/vungle/warren/model/AdAsset;I)Lcom/vungle/warren/downloader/DownloadRequest;

    move-result-object v7

    .line 36
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting download for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    iput v5, v6, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 38
    :try_start_1
    iget-object v8, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v8, v6}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    iget-object v6, p1, Lcom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception p3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v6, v2, v3

    aput-object p3, v2, v5

    const-string p3, "Can\'t save asset %1$s; exception = %2$s"

    .line 40
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "AdLoader#downloadAdAssets; loadAd sequence"

    .line 41
    invoke-static {v2, p3}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p3, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p3, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_9
    iget-object p3, p1, Lcom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_a

    .line 44
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vungle/warren/AdLoader;->onAssetDownloadFinished(Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V

    return-void

    .line 45
    :cond_a
    invoke-direct {p0, p2, p1, v0}, Lcom/vungle/warren/AdLoader;->getAssetDownloadListener(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;)Lcom/vungle/warren/downloader/AssetDownloadListener;

    move-result-object p2

    .line 46
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 47
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v0, p3, p2}, Lcom/vungle/warren/downloader/Downloader;->download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V

    goto :goto_1

    :cond_b
    return-void

    :catch_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 48
    iget-object v4, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    aput-object v4, v0, v3

    aput-object p2, v0, v5

    const-string v3, "Cannot save advertisement op.id = %1$s; advertisement = %2$s"

    .line 49
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v2, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p1, p2}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchAdMetadata(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdLoader$DownloadCallback;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object v0, v0, Lcom/vungle/warren/RuntimeValues;->headerBiddingCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vungle/warren/HeaderBiddingCallback;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    .line 4
    invoke-static {v2}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->size:Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result p2

    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->visionController:Lcom/vungle/warren/VisionController;

    .line 6
    invoke-virtual {v3}, Lcom/vungle/warren/VisionController;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->visionController:Lcom/vungle/warren/VisionController;

    invoke-virtual {v3}, Lcom/vungle/warren/VisionController;->getPayload()Ls60;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/vungle/warren/VungleApiClient;->requestAd(Ljava/lang/String;Ljava/lang/String;ZLs60;)Lcom/vungle/warren/network/Call;

    move-result-object p2

    new-instance v0, Lcom/vungle/warren/AdLoader$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/vungle/warren/AdLoader$4;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/HeaderBiddingCallback;J)V

    .line 8
    invoke-interface {p2, v0}, Lcom/vungle/warren/network/Call;->enqueue(Lcom/vungle/warren/network/Callback;)V

    return-void
.end method

.method private fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide p1, p2, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getAssetDownloadListener(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;)Lcom/vungle/warren/downloader/AssetDownloadListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/warren/AdLoader$5;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/vungle/warren/AdLoader$5;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;)V

    return-object v0
.end method

.method private getAssetPriority(I)I
    .locals 1
    .param p1    # I
        .annotation build Lcom/vungle/warren/AdLoader$Priority;
        .end annotation
    .end param
    .annotation build Lcom/vungle/warren/downloader/DownloadRequest$Priority;
    .end annotation

    const v0, -0x7ffffffe

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getDownloadRequest(Lcom/vungle/warren/model/AdAsset;I)Lcom/vungle/warren/downloader/DownloadRequest;
    .locals 8
    .param p2    # I
        .annotation build Lcom/vungle/warren/AdLoader$Priority;
        .end annotation
    .end param

    .line 1
    new-instance v7, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 2
    invoke-direct {p0, p2}, Lcom/vungle/warren/AdLoader;->getAssetPriority(I)I

    move-result v2

    iget-object v3, p1, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    iget-object v4, p1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/downloader/DownloadRequest;-><init>(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v7
.end method

.method private isSizeInvalid(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private isZip(Ljava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "template"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private loadAd(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/DownloadCallbackWrapper;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/vungle/warren/AdLoader$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/AdLoader$3;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/DownloadCallbackWrapper;Lcom/vungle/warren/AdLoader$Operation;J)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onAssetDownloadFinished(Ljava/lang/String;Lcom/vungle/warren/AdLoader$DownloadCallback;Lcom/vungle/warren/model/Advertisement;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/warren/AdLoader$DownloadCallback;",
            "Lcom/vungle/warren/model/Advertisement;",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, v1, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v9, "null"

    const/4 v10, 0x0

    const-string v11, "AdLoader#onAssetDownloadFinished; loadAd sequence"

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vungle/warren/model/AdAsset;

    .line 5
    iget v5, v15, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v6, 0x4

    if-ne v5, v13, :cond_3

    .line 6
    new-instance v5, Ljava/io/File;

    iget-object v7, v15, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-direct {v1, v5, v15}, Lcom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v7

    if-nez v7, :cond_2

    new-array v0, v6, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v10

    invoke-virtual {v15}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    aput-object v2, v0, v12

    aput-object v4, v0, v13

    const-string v5, "Assets file not valid %1$s; asset = %2$s,placementId = %3$s; advertisement = %4$s"

    .line 9
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v11, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    iget v7, v15, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v7, :cond_1

    .line 13
    :try_start_0
    invoke-direct {v1, v4, v15, v5, v0}, Lcom/vungle/warren/AdLoader;->unzipFile(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v5, v0, v10

    .line 14
    invoke-virtual {v15}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    aput-object v2, v0, v12

    aput-object v4, v0, v13

    const-string v5, "Issue(s) with database: exception = %1$s; asset = %2$s,placementId = %3$s; advertisement = %4$s"

    .line 15
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v11, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    new-array v0, v6, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v10

    invoke-virtual {v15}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    aput-object v2, v0, v12

    aput-object v4, v0, v13

    const-string v5, "Unzip failed %1$s; asset = %2$s,placementId = %3$s; advertisement = %4$s"

    .line 19
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v11, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, v1, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/Downloader;

    iget-object v5, v15, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/vungle/warren/downloader/Downloader;->dropCache(Ljava/lang/String;)Z

    .line 22
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_3
    iget v7, v15, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v7, :cond_1

    if-eq v5, v6, :cond_1

    new-array v0, v13, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v15}, Lcom/vungle/warren/model/AdAsset;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v10

    aput-object v2, v0, v8

    aput-object v4, v0, v12

    const-string v5, "Zip asset left unprocessed asset = %1$s,placementId = %2$s; advertisement = %3$s"

    .line 25
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v11, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 29
    invoke-virtual {v1, v4}, Lcom/vungle/warren/AdLoader;->getDestinationDir(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_2

    .line 31
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getOmEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 32
    :try_start_1
    iget-object v5, v1, Lcom/vungle/warren/AdLoader;->omInjector:Lcom/vungle/warren/omsdk/OMInjector;

    invoke-virtual {v5, v0}, Lcom/vungle/warren/omsdk/OMInjector;->injectJsFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 33
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 34
    new-instance v7, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v7, v9, v15, v14}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 36
    iput v12, v7, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 37
    iput v13, v7, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 38
    iget-object v6, v1, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v6, v7}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v8, 0x1

    goto :goto_1

    .line 39
    :catch_2
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :catch_3
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v0}, Lcom/vungle/warren/model/Advertisement;->setMraidAssetDir(Ljava/io/File;)V

    .line 43
    :try_start_2
    iget-object v0, v1, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v4}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v0, v5, v10

    const/4 v6, 0x1

    aput-object v2, v5, v6

    aput-object v4, v5, v12

    const-string v0, "Issue(s) with database: can\'t save advertisement;exception = %1$s; placementId = %2$s; advertisement = %3$s"

    .line 44
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v11, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_2
    new-array v5, v13, [Ljava/lang/Object;

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const-string v9, "not a dir"

    :goto_3
    aput-object v9, v5, v10

    const/4 v6, 0x1

    aput-object v2, v5, v6

    aput-object v4, v5, v12

    const-string v0, "Mraid ad; bad destinationDir - %1$splacementId = %2$s; advertisement = %3$s"

    .line 47
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v11, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_9
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadCompleted(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_a
    :goto_5
    new-array v5, v13, [Ljava/lang/Object;

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    const-string v9, "empty"

    :goto_6
    aput-object v9, v5, v10

    const/4 v6, 0x1

    aput-object v2, v5, v6

    aput-object v4, v5, v12

    const-string v0, "Assets are %1$s; placementId = %2$s; advertisement = %3$s"

    .line 51
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v11, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v15, 0x0

    .line 54
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v15

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    .line 55
    iget-object v6, v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->cause:Ljava/lang/Throwable;

    invoke-static {v6}, Lcom/vungle/warren/error/VungleException;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v6

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_e

    .line 56
    new-instance v5, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v5, v7}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_9

    .line 57
    :cond_e
    iget v6, v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->serverCode:I

    invoke-direct {v1, v6}, Lcom/vungle/warren/AdLoader;->recoverableServerCode(I)Z

    move-result v6

    const/16 v8, 0x17

    if-eqz v6, :cond_f

    iget v6, v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_10

    .line 58
    new-instance v5, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v5, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    goto :goto_7

    :cond_f
    const/4 v9, 0x1

    .line 59
    :cond_10
    iget v5, v5, Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;->reason:I

    if-nez v5, :cond_11

    .line 60
    new-instance v5, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v5, v8}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    :goto_7
    const/16 v6, 0x18

    goto :goto_8

    .line 61
    :cond_11
    new-instance v5, Lcom/vungle/warren/error/VungleException;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    .line 62
    :goto_8
    invoke-virtual {v5}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v8

    if-ne v8, v6, :cond_d

    .line 63
    :cond_12
    :goto_9
    invoke-virtual/range {p3 .. p3}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v2, v0}, Lcom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void
.end method

.method private onChangePriority(Lcom/vungle/warren/AdLoader$Operation;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/downloader/DownloadRequest;

    .line 2
    iget v2, p1, Lcom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-direct {p0, v2}, Lcom/vungle/warren/AdLoader;->getAssetPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vungle/warren/downloader/DownloadRequest;->setPriority(I)V

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {v2, v1}, Lcom/vungle/warren/downloader/Downloader;->updatePriority(Lcom/vungle/warren/downloader/DownloadRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onError(Lcom/vungle/warren/AdLoader$Operation;I)V
    .locals 4
    .param p2    # I
        .annotation build Lcom/vungle/warren/error/VungleException$ExceptionCode;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    new-instance v1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v1, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Error %1$s occured; operation is %2$s"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdLoader#onError; loadAd sequence"

    .line 3
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->loadAdCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/LoadAdCallback;

    .line 5
    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    new-instance v3, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v3, p2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lcom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private recoverableServerCode(I)Z
    .locals 1

    const/16 v0, 0x198

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_0

    const/16 v0, 0x258

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private reposeCodeToVungleException(I)Lcom/vungle/warren/error/VungleException;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->recoverableServerCode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x16

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x15

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1
.end method

.method private retrofitToVungleException(Ljava/lang/Throwable;)Lcom/vungle/warren/error/VungleException;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/net/UnknownHostException;

    const/16 v1, 0xb

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1

    .line 3
    :cond_0
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Lcom/vungle/warren/error/VungleException;

    invoke-direct {p1, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    return-object p1
.end method

.method private setLoading(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private startLoading(Lcom/vungle/warren/AdLoader$Operation;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    iget-object v1, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/vungle/warren/DownloadCallbackWrapper;

    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v1}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/vungle/warren/AdLoader$DownloadAdCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vungle/warren/AdLoader$DownloadAdCallback;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$1;)V

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/DownloadCallbackWrapper;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/AdLoader$DownloadCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/AdLoader;->loadAd(Lcom/vungle/warren/AdLoader$Operation;Lcom/vungle/warren/DownloadCallbackWrapper;)V

    return-void
.end method

.method private tryLoadNextInQueue(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->sequenceLoadingId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/AdLoader;->sequenceLoadingId:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->sequence:Lcom/vungle/warren/OperationSequence;

    invoke-virtual {p1}, Lcom/vungle/warren/OperationSequence;->poll()Lcom/vungle/warren/OperationSequence$Entry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/vungle/warren/OperationSequence$Entry;->operation:Lcom/vungle/warren/AdLoader$Operation;

    iget-object v0, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/warren/AdLoader;->sequenceLoadingId:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/vungle/warren/AdLoader;->startLoading(Lcom/vungle/warren/AdLoader$Operation;)V

    :cond_1
    return-void
.end method

.method private unzipFile(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/AdAsset;Ljava/io/File;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/model/Advertisement;",
            "Lcom/vungle/warren/model/AdAsset;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/AdAsset;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/AdAsset;

    .line 3
    iget v3, v1, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-ne v3, v2, :cond_0

    .line 4
    iget-object v1, v1, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->getDestinationDir(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object p4

    const/4 v1, 0x1

    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/vungle/warren/AdLoader$6;

    invoke-direct {v4, p0, v0}, Lcom/vungle/warren/AdLoader$6;-><init>(Lcom/vungle/warren/AdLoader;Ljava/util/List;)V

    invoke-static {v2, v3, v4}, Lcom/vungle/warren/utility/UnzipUtility;->unzip(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/warren/utility/UnzipUtility$Filter;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v5, "mraid.js"

    invoke-static {v3, v4, v5}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 12
    invoke-static {v3}, Lcom/vungle/warren/ui/HackMraid;->apply(Ljava/io/PrintWriter;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 14
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 15
    new-instance v3, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/vungle/warren/model/AdAsset;->fileSize:J

    .line 17
    iput v1, v3, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 18
    iget-object v2, p2, Lcom/vungle/warren/model/AdAsset;->identifier:Ljava/lang/String;

    iput-object v2, v3, Lcom/vungle/warren/model/AdAsset;->parentId:Ljava/lang/String;

    const/4 v2, 0x3

    .line 19
    iput v2, v3, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 20
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uzipped "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    invoke-static {p4}, Lcom/vungle/warren/utility/FileUtility;->printDirectoryTree(Ljava/io/File;)V

    const/4 p1, 0x4

    .line 23
    iput p1, p2, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 24
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    new-instance p4, Lcom/vungle/warren/AdLoader$7;

    invoke-direct {p4, p0, p3}, Lcom/vungle/warren/AdLoader$7;-><init>(Lcom/vungle/warren/AdLoader;Ljava/io/File;)V

    invoke-virtual {p1, p2, p4}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lcom/vungle/warren/persistence/Repository$SaveCallback;)V

    return-void

    :cond_5
    :goto_2
    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    if-nez p4, :cond_6

    const-string p4, "null"

    goto :goto_3

    :cond_6
    const-string p4, "not a dir"

    :goto_3
    aput-object p4, p2, p3

    aput-object p1, p2, v1

    const-string p1, "Can\'t unzip file: destination dir is %1$s; advertisement = %2$s"

    .line 25
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdLoader#unzipFile; loadAd sequence"

    .line 26
    invoke-static {p2, p1}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to access Destination Directory"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->hasAssetsFor(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public canRenderAd(Lcom/vungle/warren/model/Advertisement;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->hasAssetsFor(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x19

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/AdLoader$Operation;

    .line 6
    iget-object v4, p0, Lcom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0, v3, v2}, Lcom/vungle/warren/AdLoader;->onError(Lcom/vungle/warren/AdLoader$Operation;I)V

    .line 8
    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    invoke-direct {p0, v1, v2}, Lcom/vungle/warren/AdLoader;->onError(Lcom/vungle/warren/AdLoader$Operation;I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/AdLoader$Operation;

    .line 10
    iget-object v3, p0, Lcom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0, v1, v2}, Lcom/vungle/warren/AdLoader;->onError(Lcom/vungle/warren/AdLoader$Operation;I)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$1;

    invoke-direct {v1, p0}, Lcom/vungle/warren/AdLoader$1;-><init>(Lcom/vungle/warren/AdLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public dropCache(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/vungle/warren/AdLoader;->TAG:Ljava/lang/String;

    const-string v0, "No assets found in ad cache to cleanup"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/AdAsset;

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/Downloader;

    iget-object v0, v0, Lcom/vungle/warren/model/AdAsset;->serverPath:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/vungle/warren/downloader/Downloader;->dropCache(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method getDestinationDir(Lcom/vungle/warren/model/Advertisement;)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vungle/warren/persistence/Repository;->getAdvertisementAssetDirectory(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1
.end method

.method getPendingOperations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getRunningOperations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/vungle/warren/AdLoader$Operation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method hasAssetsFor(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/persistence/Repository;->loadAllAdAssets(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/AdAsset;

    .line 4
    iget v3, v2, Lcom/vungle/warren/model/AdAsset;->fileType:I

    if-nez v3, :cond_2

    .line 5
    iget v2, v2, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    goto :goto_0

    .line 6
    :cond_2
    iget v3, v2, Lcom/vungle/warren/model/AdAsset;->status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/vungle/warren/model/AdAsset;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v3, v2}, Lcom/vungle/warren/AdLoader;->fileIsValid(Ljava/io/File;Lcom/vungle/warren/model/AdAsset;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0
.end method

.method public init(Lcom/vungle/warren/tasks/JobRunner;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->jobRunnerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->downloader:Lcom/vungle/warren/downloader/Downloader;

    invoke-interface {p1}, Lcom/vungle/warren/downloader/Downloader;->init()V

    return-void
.end method

.method public isLoading(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->loadOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/vungle/warren/AdLoader$Operation;->loading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public load(Lcom/vungle/warren/AdLoader$Operation;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->jobRunnerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/tasks/JobRunner;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Cannot load operation %s; job runner is null"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdLoader#load; loadAd sequence"

    .line 3
    invoke-static {v1, v0}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/AdLoader;->onError(Lcom/vungle/warren/AdLoader$Operation;I)V

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/AdLoader$Operation;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Lcom/vungle/warren/AdLoader$Operation;->merge(Lcom/vungle/warren/AdLoader$Operation;)V

    .line 7
    :cond_1
    iget-wide v2, p1, Lcom/vungle/warren/AdLoader$Operation;->delay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->startingOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->sdkExecutors:Lcom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lcom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/warren/AdLoader$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/AdLoader$2;-><init>(Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/AdLoader$Operation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    iget-object v3, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, p1, Lcom/vungle/warren/AdLoader$Operation;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/vungle/warren/tasks/DownloadJob;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    iget-wide v3, p1, Lcom/vungle/warren/AdLoader$Operation;->delay:J

    invoke-virtual {v2, v3, v4}, Lcom/vungle/warren/tasks/JobInfo;->setDelay(J)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/tasks/JobRunner;->execute(Lcom/vungle/warren/tasks/JobInfo;)V

    :goto_0
    return-void
.end method

.method public load(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/LoadAdCallback;)V
    .locals 14

    .line 13
    new-instance v13, Lcom/vungle/warren/AdLoader$Operation;

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v2

    const/4 v0, 0x1

    new-array v12, v0, [Lcom/vungle/warren/LoadAdCallback;

    const/4 v0, 0x0

    aput-object p3, v12, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    move-object v0, p0

    .line 15
    invoke-virtual {p0, v13}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method public load(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V
    .locals 14

    .line 12
    new-instance v13, Lcom/vungle/warren/AdLoader$Operation;

    sget-object v2, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v0, 0x1

    new-array v12, v0, [Lcom/vungle/warren/LoadAdCallback;

    const/4 v0, 0x0

    aput-object p2, v12, v0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v0, v13

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    move-object v0, p0

    invoke-virtual {p0, v13}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method public loadEndless(Lcom/vungle/warren/model/Placement;J)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V

    return-void
.end method

.method public loadEndless(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;J)V
    .locals 14

    .line 1
    invoke-direct/range {p0 .. p2}, Lcom/vungle/warren/AdLoader;->isSizeInvalid(Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/vungle/warren/AdLoader$Operation;

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x7d0

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result v12

    const/4 v1, 0x0

    new-array v13, v1, [Lcom/vungle/warren/LoadAdCallback;

    move-object v1, v0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-direct/range {v1 .. v13}, Lcom/vungle/warren/AdLoader$Operation;-><init>(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;JJIIIZI[Lcom/vungle/warren/LoadAdCallback;)V

    move-object v1, p0

    .line 5
    invoke-virtual {p0, v0}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method public loadPendingInternal(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/AdLoader;->pendingOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/AdLoader$Operation;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/vungle/warren/AdLoader$Operation;->delay(J)Lcom/vungle/warren/AdLoader$Operation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/warren/AdLoader;->load(Lcom/vungle/warren/AdLoader$Operation;)V

    return-void
.end method

.method saveAsset(Lcom/vungle/warren/model/Advertisement;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "postroll"

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p3, :cond_1

    const-string p3, "template"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 3
    :goto_1
    new-instance v2, Lcom/vungle/warren/model/AdAsset;

    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p4, p2}, Lcom/vungle/warren/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iput v1, v2, Lcom/vungle/warren/model/AdAsset;->status:I

    .line 5
    iput p3, v2, Lcom/vungle/warren/model/AdAsset;->fileType:I

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/vungle/warren/AdLoader;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v2, p2, v1

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p3, "Can\'t save adAsset %1$s; exception = %2$s"

    .line 7
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "AdLoader#saveAsset; loadAd sequence"

    .line 8
    invoke-static {p3, p2}, Lcom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    throw p1
.end method
