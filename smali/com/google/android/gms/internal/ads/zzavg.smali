.class public final Lcom/google/android/gms/internal/ads/zzavg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;


# instance fields
.field private final zzdzj:Lcom/google/android/gms/internal/ads/zzavf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClicked."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzak(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzaj(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToLoad."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavf;->zze(Lzv;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzal(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzag(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzah(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onInitializationFailed."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzavf;->zzd(Lzv;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onInitializationSucceeded."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzaf(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onRewarded."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Lcom/google/android/gms/ads/reward/RewardItem;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzavf;->zza(Lzv;Lcom/google/android/gms/internal/ads/zzavj;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavj;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzavf;->zza(Lzv;Lcom/google/android/gms/internal/ads/zzavj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoCompleted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoCompleted."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzam(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoStarted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoStarted."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-static {p1}, Law;->Q(Ljava/lang/Object;)Lzv;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzai(Lzv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdMetadataChanged."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdzj:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzb(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
