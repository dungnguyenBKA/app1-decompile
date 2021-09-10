.class Lcom/google/ads/mediation/adh/Rewarded$2;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/adh/Rewarded;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/adh/Rewarded;

.field final synthetic val$fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/adh/Rewarded;Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/adh/Rewarded$2;->this$0:Lcom/google/ads/mediation/adh/Rewarded;

    iput-object p2, p0, Lcom/google/ads/mediation/adh/Rewarded$2;->val$fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adh/Rewarded$2;->this$0:Lcom/google/ads/mediation/adh/Rewarded;

    invoke-static {v0}, Lcom/google/ads/mediation/adh/Rewarded;->access$200(Lcom/google/ads/mediation/adh/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/adh/Rewarded$2;->this$0:Lcom/google/ads/mediation/adh/Rewarded;

    invoke-static {v0, p1}, Lcom/google/ads/mediation/adh/Rewarded;->access$102(Lcom/google/ads/mediation/adh/Rewarded;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 3
    iget-object p1, p0, Lcom/google/ads/mediation/adh/Rewarded$2;->this$0:Lcom/google/ads/mediation/adh/Rewarded;

    invoke-static {p1}, Lcom/google/ads/mediation/adh/Rewarded;->access$100(Lcom/google/ads/mediation/adh/Rewarded;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/adh/Rewarded$2;->val$fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 4
    iget-object p1, p0, Lcom/google/ads/mediation/adh/Rewarded$2;->this$0:Lcom/google/ads/mediation/adh/Rewarded;

    invoke-static {p1}, Lcom/google/ads/mediation/adh/Rewarded;->access$200(Lcom/google/ads/mediation/adh/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/adh/Rewarded$2;->this$0:Lcom/google/ads/mediation/adh/Rewarded;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    invoke-static {p1, v0}, Lcom/google/ads/mediation/adh/Rewarded;->access$002(Lcom/google/ads/mediation/adh/Rewarded;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/adh/Rewarded$2;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
