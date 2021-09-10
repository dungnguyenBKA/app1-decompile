.class public final Lcom/google/android/gms/internal/ads/zzazp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

.field public static final zzeid:Lcom/google/android/gms/internal/ads/zzdzv;

.field public static final zzeie:Lcom/google/android/gms/internal/ads/zzdzv;

.field public static final zzeif:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

.field public static final zzeih:Lcom/google/android/gms/internal/ads/zzdzv;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "Default"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x5

    const/4 v11, 0x5

    const-wide/16 v12, 0xa

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "Loader"

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v16

    move-object v9, v0

    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeid:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 10
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0xa

    new-instance v15, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v2, "Activeview"

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v16

    move-object v9, v0

    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeie:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazs;

    const/4 v1, 0x3

    const-string v2, "Schedule"

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzazp;->zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzazs;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeif:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazu;-><init>()V

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdzy;->zzbaf()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazp;->zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    return-void
.end method

.method private static zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzv;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzazt;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzazs;)V

    return-object v0
.end method

.method private static zzfa(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzazr;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
