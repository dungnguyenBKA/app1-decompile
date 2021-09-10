.class public Lcom/google/ads/mediation/adh/Banner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;


# instance fields
.field final TAG:Ljava/lang/String;

.field private bannerView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CustomEventBanner@M"

    .line 2
    iput-object v0, p0, Lcom/google/ads/mediation/adh/Banner;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/adh/Banner;)Lcom/google/android/gms/ads/AdView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/adh/Banner;->bannerView:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/adh/Banner;->bannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    :cond_0
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

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance p5, Lcom/google/android/gms/ads/AdView;

    invoke-direct {p5, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/google/ads/mediation/adh/Banner;->bannerView:Lcom/google/android/gms/ads/AdView;

    .line 2
    invoke-virtual {p5, p3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 3
    iget-object p5, p0, Lcom/google/ads/mediation/adh/Banner;->bannerView:Lcom/google/android/gms/ads/AdView;

    new-instance p6, Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p4

    invoke-direct {p6, v0, p4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {p5, p6}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 4
    new-instance p4, Lcom/google/ads/mediation/adh/Banner$1;

    invoke-direct {p4, p0, p2}, Lcom/google/ads/mediation/adh/Banner$1;-><init>(Lcom/google/ads/mediation/adh/Banner;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V

    .line 5
    iget-object p5, p0, Lcom/google/ads/mediation/adh/Banner;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p5, p4}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 6
    new-instance p4, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 7
    invoke-static {p1}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object p5

    sget-object p6, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne p5, p6, :cond_0

    .line 8
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    const-string p6, "npa"

    const-string v0, "1"

    .line 9
    invoke-virtual {p5, p6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class p6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p4, p6, p5}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 11
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CustomEventBanner@M load "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p1, p3}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    iget-object p3, p0, Lcom/google/ads/mediation/adh/Banner;->bannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 13
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-string p1, "CustomEventBanner@M"

    .line 14
    invoke-static {p1}, Lcom/google/ads/mediation/adh/Error;->getExceptionError(Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V

    :goto_0
    return-void
.end method
