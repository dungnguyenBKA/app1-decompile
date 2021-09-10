.class public Lcom/google/ads/mediation/adr/Interstitial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;


# instance fields
.field final TAG:Ljava/lang/String;

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private mEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CustomEventInterstitial@M"

    .line 2
    iput-object v0, p0, Lcom/google/ads/mediation/adr/Interstitial;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/adr/Interstitial;)Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/adr/Interstitial;->mEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adr/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 3
    iput-object v1, p0, Lcom/google/ads/mediation/adr/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/google/ads/mediation/adr/Interstitial;->mEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iput-object p2, p0, Lcom/google/ads/mediation/adr/Interstitial;->mEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 2
    new-instance p2, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/ads/mediation/adr/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/google/ads/mediation/adr/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance p4, Lcom/google/ads/mediation/adr/Interstitial$1;

    invoke-direct {p4, p0}, Lcom/google/ads/mediation/adr/Interstitial$1;-><init>(Lcom/google/ads/mediation/adr/Interstitial;)V

    invoke-virtual {p2, p4}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 5
    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 6
    invoke-static {p1}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object p4

    sget-object p5, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne p4, p5, :cond_0

    .line 7
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string p5, "npa"

    const-string v0, "1"

    .line 8
    invoke-virtual {p4, p5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p2, p5, p4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 10
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CustomEventInterstitial@M load "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p1, p3}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iget-object p3, p0, Lcom/google/ads/mediation/adr/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 12
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 13
    iget-object p1, p0, Lcom/google/ads/mediation/adr/Interstitial;->mEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const-string p2, "CustomEventInterstitial@M"

    invoke-static {p2}, Lcom/google/ads/mediation/adr/Error;->getExceptionError(Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V

    :goto_0
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adr/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/adr/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/adr/Interstitial;->mEventInterstitialListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdClosed()V

    :goto_0
    return-void
.end method
