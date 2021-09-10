.class public final Lcom/google/android/gms/internal/ads/zzcnj;
.super Lcom/google/android/gms/internal/ads/zzcnl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcnl;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzbl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzzp()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasy;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzasy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b$a;Lcom/google/android/gms/common/internal/b$b;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgor:Lcom/google/android/gms/internal/ads/zzasy;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgor:Lcom/google/android/gms/internal/ads/zzasy;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasy;->zzwi()Lcom/google/android/gms/internal/ads/zzath;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgoq:Lcom/google/android/gms/internal/ads/zzatq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcno;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcno;-><init>(Lcom/google/android/gms/internal/ads/zzcnl;)V

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzath;->zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzatk;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v1

    const-string v2, "RemoteAdRequestClientTask.onConnected"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 9
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    .line 10
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcoc;-><init>(Lcom/google/android/gms/internal/ads/zzdom;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgoo:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgoo:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgoq:Lcom/google/android/gms/internal/ads/zzatq;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzgor:Lcom/google/android/gms/internal/ads/zzasy;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b;->checkAvailabilityAndConnect()V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcnm;-><init>(Lcom/google/android/gms/internal/ads/zzcnj;)V

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbaa;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnl;->zzdlg:Lcom/google/android/gms/internal/ads/zzbaa;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
