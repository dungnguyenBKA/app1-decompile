.class public Lcom/google/ads/mediation/adr/Rewarded;
.super Lcom/google/android/gms/ads/mediation/Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAd;


# static fields
.field private static final AD_UNIT_KEY:Ljava/lang/String; = "parameter"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

.field private mediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

.field private rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/Adapter;-><init>()V

    const-string v0, "Rewarded@M"

    .line 2
    iput-object v0, p0, Lcom/google/ads/mediation/adr/Rewarded;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/adr/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/adr/Rewarded;->mediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/ads/mediation/adr/Rewarded;Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;)Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/adr/Rewarded;->mediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/adr/Rewarded;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/adr/Rewarded;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/ads/mediation/adr/Rewarded;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/adr/Rewarded;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/adr/Rewarded;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/adr/Rewarded;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object p0
.end method


# virtual methods
.method public getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p2, p0, Lcom/google/ads/mediation/adr/Rewarded;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "parameter"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rewarded@M load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/google/ads/mediation/adr/Rewarded$1;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/adr/Rewarded$1;-><init>(Lcom/google/ads/mediation/adr/Rewarded;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 7
    invoke-static {p1}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object v2

    sget-object v3, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne v2, v3, :cond_0

    .line 8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "npa"

    const-string v4, "1"

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    new-instance v2, Lcom/google/ads/mediation/adr/Rewarded$2;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/mediation/adr/Rewarded$2;-><init>(Lcom/google/ads/mediation/adr/Rewarded;Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 13
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Lcom/google/ads/mediation/adr/Rewarded;->mediationAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    const-string p2, "Rewarded@M"

    invoke-static {p2}, Lcom/google/ads/mediation/adr/Error;->getExceptionError(Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    :goto_0
    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/mediation/adr/Rewarded;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/google/ads/mediation/adr/Rewarded$3;

    invoke-direct {v2, p0}, Lcom/google/ads/mediation/adr/Rewarded$3;-><init>(Lcom/google/ads/mediation/adr/Rewarded;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/google/ads/mediation/adr/Rewarded;->mediationRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz v1, :cond_0

    const-string v2, "Rewarded@M"

    .line 3
    invoke-static {v2}, Lcom/google/ads/mediation/adr/Error;->getExceptionError(Ljava/lang/String;)Lcom/google/android/gms/ads/AdError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V

    .line 4
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
