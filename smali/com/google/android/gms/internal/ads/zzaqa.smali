.class public final Lcom/google/android/gms/internal/ads/zzaqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field private uri:Landroid/net/Uri;

.field private zzdoy:Landroid/app/Activity;

.field private zzdoz:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaqa;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdoz:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzaqa;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdoy:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdoz:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-nez p2, :cond_0

    const-string p1, "Listener not set for mediation. Returning."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    instance-of p2, p1, Landroid/app/Activity;

    const/4 p4, 0x0

    if-nez p2, :cond_1

    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdoz:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacp;->zzj(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    const-string p1, "Default browser does not support custom tabs. Bailing out."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdoz:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_3
    const-string p2, "tab_url"

    .line 9
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdoz:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 13
    :cond_4
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdoy:Landroid/app/Activity;

    .line 14
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->uri:Landroid/net/Uri;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzdoz:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final showInterstitial()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/browser/customtabs/c$a;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Landroidx/browser/customtabs/c$a;-><init>(Landroidx/browser/customtabs/e;)V

    .line 3
    invoke-virtual {v0}, Landroidx/browser/customtabs/c$a;->a()Landroidx/browser/customtabs/c;

    move-result-object v0

    .line 4
    iget-object v2, v0, Landroidx/browser/customtabs/c;->a:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    new-instance v5, Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v0, v0, Landroidx/browser/customtabs/c;->a:Landroid/content/Intent;

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    .line 6
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Lcom/google/android/gms/internal/ads/zzaqa;)V

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/gms/internal/ads/zzazn;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzazn;-><init>(IIZ)V

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzbeb;)V

    .line 7
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaqc;-><init>(Lcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayo;->zzxo()V

    return-void
.end method
