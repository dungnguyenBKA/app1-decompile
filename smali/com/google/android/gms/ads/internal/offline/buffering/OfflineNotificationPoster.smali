.class public Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field private final g:Lcom/google/android/gms/internal/ads/zzarf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqo()Lcom/google/android/gms/internal/ads/zzwc;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzarf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->g:Lcom/google/android/gms/internal/ads/zzarf;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/e;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroidx/work/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/e;

    move-result-object v1

    const-string v2, "gws_query_id"

    invoke-virtual {v1, v2}, Landroidx/work/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->g:Lcom/google/android/gms/internal/ads/zzarf;

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzarf;->zzc(Lzv;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
    :catch_0
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    return-object v0
.end method
