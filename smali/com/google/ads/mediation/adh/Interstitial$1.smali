.class Lcom/google/ads/mediation/adh/Interstitial$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/adh/Interstitial;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/adh/Interstitial;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/adh/Interstitial;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/adh/Interstitial$1;->this$0:Lcom/google/ads/mediation/adh/Interstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adh/Interstitial$1;->this$0:Lcom/google/ads/mediation/adh/Interstitial;

    invoke-static {v0}, Lcom/google/ads/mediation/adh/Interstitial;->access$000(Lcom/google/ads/mediation/adh/Interstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adh/Interstitial$1;->this$0:Lcom/google/ads/mediation/adh/Interstitial;

    invoke-static {v0}, Lcom/google/ads/mediation/adh/Interstitial;->access$000(Lcom/google/ads/mediation/adh/Interstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adh/Interstitial$1;->this$0:Lcom/google/ads/mediation/adh/Interstitial;

    invoke-static {v0}, Lcom/google/ads/mediation/adh/Interstitial;->access$000(Lcom/google/ads/mediation/adh/Interstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adh/Interstitial$1;->this$0:Lcom/google/ads/mediation/adh/Interstitial;

    invoke-static {v0}, Lcom/google/ads/mediation/adh/Interstitial;->access$000(Lcom/google/ads/mediation/adh/Interstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adh/Interstitial$1;->this$0:Lcom/google/ads/mediation/adh/Interstitial;

    invoke-static {v0}, Lcom/google/ads/mediation/adh/Interstitial;->access$000(Lcom/google/ads/mediation/adh/Interstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdOpened()V

    return-void
.end method
