.class public Lcom/google/android/gms/ads/rewarded/RewardedAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zzhsd:Lcom/google/android/gms/internal/ads/zzawb;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    const-string v0, "context cannot be null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitID cannot be null"

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1

    const-string v0, "Context cannot be null."

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdUnitId cannot be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdRequest cannot be null."

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LoadCallback cannot be null."

    .line 4
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzawb;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1

    const-string v0, "Context cannot be null."

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdUnitId cannot be null."

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdManagerAdRequest cannot be null."

    .line 9
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LoadCallback cannot be null."

    .line 10
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzawb;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public getAdMetadata()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->getOnAdMetadataChangedListener()Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->isLoaded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawb;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzds()Lcom/google/android/gms/internal/ads/zzzk;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawb;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method public setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawb;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    :cond_0
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawb;->setImmersiveMode(Z)V

    :cond_0
    return-void
.end method

.method public setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawb;->setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    :cond_0
    return-void
.end method

.method public setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawb;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    :cond_0
    return-void
.end method

.method public setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawb;->setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawb;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawb;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzhsd:Lcom/google/android/gms/internal/ads/zzawb;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzawb;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V

    :cond_0
    return-void
.end method
