.class Lcom/zjsoft/admob/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/admob/g$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/zjsoft/admob/g$a;


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/g$a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/admob/g$a$a;->c:Lcom/zjsoft/admob/g$a;

    iput-boolean p2, p0, Lcom/zjsoft/admob/g$a$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/zjsoft/admob/g$a$a;->b:Z

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/g$a$a;->c:Lcom/zjsoft/admob/g$a;

    iget-object v1, v0, Lcom/zjsoft/admob/g$a;->c:Lcom/zjsoft/admob/g;

    iget-object v0, v0, Lcom/zjsoft/admob/g$a;->a:Landroid/app/Activity;

    iget-object v2, v1, Lcom/zjsoft/admob/g;->b:Ljb0;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {v2}, Ljb0;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, v1, Lcom/zjsoft/admob/g;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/zjsoft/admob/g;->o:Ljava/lang/String;

    invoke-static {v0, v3}, Lcc0;->C(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v1, Lcom/zjsoft/admob/g;->k:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, v1, Lcom/zjsoft/admob/g;->n:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/zjsoft/admob/g;->o:Ljava/lang/String;

    invoke-static {v0, v3}, Lcc0;->B(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v2, v1, Lcom/zjsoft/admob/g;->n:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v1, Lcom/zjsoft/admob/g;->o:Ljava/lang/String;

    invoke-static {v0, v3}, Lcc0;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v3, v1, Lcom/zjsoft/admob/g;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 11
    iget-object v2, v1, Lcom/zjsoft/admob/g;->m:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_3
    iget-object v3, v1, Lcom/zjsoft/admob/g;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 13
    iget-object v2, v1, Lcom/zjsoft/admob/g;->l:Ljava/lang/String;

    .line 14
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/zjsoft/baseadlib/b;->a:Z

    if-eqz v3, :cond_5

    const-string v3, "ad_log"

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdmobNativeBanner:id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_5
    iput-object v2, v1, Lcom/zjsoft/admob/g;->p:Ljava/lang/String;

    .line 17
    new-instance v3, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/zjsoft/admob/s;->a()Lcom/zjsoft/admob/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zjsoft/admob/s;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    new-instance v2, Lcom/zjsoft/admob/j;

    invoke-direct {v2, v1, v0}, Lcom/zjsoft/admob/j;-><init>(Lcom/zjsoft/admob/g;Landroid/app/Activity;)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    goto :goto_1

    .line 20
    :cond_6
    new-instance v2, Lcom/zjsoft/admob/i;

    invoke-direct {v2, v1, v0}, Lcom/zjsoft/admob/i;-><init>(Lcom/zjsoft/admob/g;Landroid/app/Activity;)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 21
    :goto_1
    new-instance v2, Lcom/zjsoft/admob/h;

    invoke-direct {v2, v1, v0}, Lcom/zjsoft/admob/h;-><init>(Lcom/zjsoft/admob/g;Landroid/app/Activity;)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 22
    new-instance v2, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    const/4 v5, 0x0

    .line 23
    invoke-virtual {v2, v5}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 24
    invoke-virtual {v2, v5}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 25
    iget v1, v1, Lcom/zjsoft/admob/g;->e:I

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 26
    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 27
    new-instance v1, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    .line 28
    invoke-static {v0}, Lcc0;->x(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 31
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 32
    invoke-static {v0}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object v2

    sget-object v4, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne v2, v4, :cond_7

    .line 33
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "npa"

    const-string v5, "1"

    .line 34
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 36
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 37
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 38
    :cond_8
    iget-object v0, p0, Lcom/zjsoft/admob/g$a$a;->c:Lcom/zjsoft/admob/g$a;

    iget-object v1, v0, Lcom/zjsoft/admob/g$a;->b:Lub0$a;

    if-eqz v1, :cond_9

    .line 39
    iget-object v0, v0, Lcom/zjsoft/admob/g$a;->a:Landroid/app/Activity;

    const-string v2, "AdmobNativeBanner:Admob has not been inited or is initing"

    invoke-static {v2, v1, v0}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    :cond_9
    :goto_2
    return-void
.end method
