.class public final Lcom/google/android/gms/ads/internal/overlay/zzw;
.super Lcom/google/android/gms/internal/ads/zzarr;
.source "SourceFile"


# instance fields
.field private b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarr;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->e:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    return-void
.end method

.method private final declared-synchronized O()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdsr:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 1
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    if-nez p1, :cond_4

    .line 5
    iget-object p1, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvc;->onAdClicked()V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz p1, :cond_4

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzvo()V

    .line 11
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkp()Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsu:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdif:Lcom/google/android/gms/ads/internal/overlay/zzt;

    .line 12
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzb;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->O()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onPause()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->O()V

    :cond_1
    return-void
.end method

.method public final onRestart()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->d:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onResume()V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->d:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->O()V

    :cond_0
    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final zzad(Lzv;)V
    .locals 0

    return-void
.end method

.method public final zzdp()V
    .locals 0

    return-void
.end method

.method public final zzvw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
