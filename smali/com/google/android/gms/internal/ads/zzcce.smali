.class public final Lcom/google/android/gms/internal/ads/zzcce;
.super Lcom/google/android/gms/internal/ads/zzzb;
.source "SourceFile"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzges:Lcom/google/android/gms/internal/ads/zzzc;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzget:Lcom/google/android/gms/internal/ads/zzanx;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzc;Lcom/google/android/gms/internal/ads/zzanx;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/ads/zzzc;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzanx;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzb;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcce;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcce;->zzges:Lcom/google/android/gms/internal/ads/zzzc;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcce;->zzget:Lcom/google/android/gms/internal/ads/zzanx;

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final getCurrentTime()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcce;->zzget:Lcom/google/android/gms/internal/ads/zzanx;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanx;->getVideoCurrentTime()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcce;->zzget:Lcom/google/android/gms/internal/ads/zzanx;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanx;->getVideoDuration()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPlaybackState()I
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isClickToExpandEnabled()Z
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final isMuted()Z
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final mute(Z)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final pause()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final play()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final stop()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcce;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcce;->zzges:Lcom/google/android/gms/internal/ads/zzzc;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzzc;->zza(Lcom/google/android/gms/internal/ads/zzzd;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzrg()Lcom/google/android/gms/internal/ads/zzzd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcce;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcce;->zzges:Lcom/google/android/gms/internal/ads/zzzc;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzzc;->zzrg()Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
