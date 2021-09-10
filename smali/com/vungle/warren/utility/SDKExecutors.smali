.class public Lcom/vungle/warren/utility/SDKExecutors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/utility/Executors;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;
    }
.end annotation


# static fields
.field private static final API_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IO_KEEP_ALIVE_TIME_SECONDS:I = 0x5

.field private static final JOBS_KEEP_ALIVE_TIME_SECONDS:I = 0x1

.field private static final JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final LOGGER_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static NUMBER_OF_CORES:I = 0x0

.field private static final SINGLE_CORE_POOL_SIZE:I = 0x1

.field private static final UI_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final VUNGLE_KEEP_ALIVE_TIME_SECONDS:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/vungle/warren/utility/SDKExecutors;->NUMBER_OF_CORES:I

    .line 2
    new-instance v0, Lcom/vungle/warren/utility/SDKExecutors$1;

    invoke-direct {v0}, Lcom/vungle/warren/utility/SDKExecutors$1;-><init>()V

    .line 3
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/vungle/warren/utility/SDKExecutors;->NUMBER_OF_CORES:I

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v1, "vng_jr"

    invoke-direct {v8, v1}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    move-object v1, v9

    move v2, v3

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v9, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 5
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v3, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v4, "vng_io"

    invoke-direct {v3, v4}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-wide/16 v13, 0x5

    move-object v10, v2

    move-object/from16 v15, v18

    move-object/from16 v17, v3

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 6
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 7
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v4, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v5, "vng_logger"

    invoke-direct {v4, v5}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    move-object/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 8
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 9
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v5, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v6, "vng_background"

    invoke-direct {v5, v6}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v13, 0xa

    move-object v10, v4

    move-object/from16 v17, v5

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 10
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 11
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v6, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v7, "vng_api"

    invoke-direct {v6, v7}, Lcom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    move-object v10, v5

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 12
    invoke-virtual {v5, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 13
    sput-object v0, Lcom/vungle/warren/utility/SDKExecutors;->UI_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 14
    sput-object v9, Lcom/vungle/warren/utility/SDKExecutors;->JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 15
    sput-object v2, Lcom/vungle/warren/utility/SDKExecutors;->IO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 16
    sput-object v4, Lcom/vungle/warren/utility/SDKExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 17
    sput-object v5, Lcom/vungle/warren/utility/SDKExecutors;->API_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    sput-object v3, Lcom/vungle/warren/utility/SDKExecutors;->LOGGER_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->API_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIOExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->IO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getJobExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getLoggerExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->LOGGER_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getUIExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/SDKExecutors;->UI_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
