.class final Lcom/google/android/gms/internal/ads/zzayt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile zzecy:I

.field private volatile zzecz:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayt;->lock:Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzays;->zzecu:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecy:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecz:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzayq;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzxo()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayt;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecy:I

    sget v4, Lcom/google/android/gms/internal/ads/zzays;->zzecw:I

    if-ne v3, v4, :cond_0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecz:J

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcxl:Lcom/google/android/gms/internal/ads/zzaba;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v3, v5, v0

    if-gtz v3, :cond_0

    .line 6
    sget v0, Lcom/google/android/gms/internal/ads/zzays;->zzecu:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecy:I

    .line 7
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayt;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecy:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    .line 11
    monitor-exit v3

    return-void

    :cond_1
    const/4 v2, 0x3

    .line 12
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecy:I

    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecy:I

    if-ne v2, v4, :cond_2

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayt;->zzecz:J

    .line 15
    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
