.class final Lcom/google/android/gms/tagmanager/zzaa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zzg:Z


# virtual methods
.method public final declared-synchronized refresh()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz v0, :cond_0

    const-string v0, "Refreshing a released ContainerHolder."

    const-string v1, "GoogleTagManager"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleTagManager"

    const-string v1, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zze(Ljava/lang/String;)V
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzg:Z

    if-eqz p1, :cond_0

    const-string p1, "GoogleTagManager"

    const-string v0, "setCtfeUrlPathAndQuery called on a released ContainerHolder."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
