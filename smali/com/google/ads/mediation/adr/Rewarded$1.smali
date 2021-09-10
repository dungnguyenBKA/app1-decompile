.class Lcom/google/ads/mediation/adr/Rewarded$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/adr/Rewarded;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/adr/Rewarded;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/adr/Rewarded;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/adr/Rewarded$1;->this$0:Lcom/google/ads/mediation/adr/Rewarded;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adr/Rewarded$1;->this$0:Lcom/google/ads/mediation/adr/Rewarded;

    invoke-static {v0}, Lcom/google/ads/mediation/adr/Rewarded;->access$000(Lcom/google/ads/mediation/adr/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adr/Rewarded$1;->this$0:Lcom/google/ads/mediation/adr/Rewarded;

    invoke-static {v0}, Lcom/google/ads/mediation/adr/Rewarded;->access$000(Lcom/google/ads/mediation/adr/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adr/Rewarded$1;->this$0:Lcom/google/ads/mediation/adr/Rewarded;

    invoke-static {v0}, Lcom/google/ads/mediation/adr/Rewarded;->access$000(Lcom/google/ads/mediation/adr/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdImpression()V

    return-void
.end method
