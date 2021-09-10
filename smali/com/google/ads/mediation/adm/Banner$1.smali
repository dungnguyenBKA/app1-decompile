.class Lcom/google/ads/mediation/adm/Banner$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/adm/Banner;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/adm/Banner;

.field final synthetic val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/adm/Banner;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/adm/Banner$1;->this$0:Lcom/google/ads/mediation/adm/Banner;

    iput-object p2, p0, Lcom/google/ads/mediation/adm/Banner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adm/Banner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adm/Banner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adm/Banner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adm/Banner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v1, p0, Lcom/google/ads/mediation/adm/Banner$1;->this$0:Lcom/google/ads/mediation/adm/Banner;

    invoke-static {v1}, Lcom/google/ads/mediation/adm/Banner;->access$000(Lcom/google/ads/mediation/adm/Banner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adm/Banner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdOpened()V

    return-void
.end method
