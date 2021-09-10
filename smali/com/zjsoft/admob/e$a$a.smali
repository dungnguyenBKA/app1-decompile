.class Lcom/zjsoft/admob/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zjsoft/admob/e$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/zjsoft/admob/e$a;


# direct methods
.method constructor <init>(Lcom/zjsoft/admob/e$a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zjsoft/admob/e$a$a;->c:Lcom/zjsoft/admob/e$a;

    iput-boolean p2, p0, Lcom/zjsoft/admob/e$a$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/zjsoft/admob/e$a$a;->b:Z

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/e$a$a;->c:Lcom/zjsoft/admob/e$a;

    iget-object v1, v0, Lcom/zjsoft/admob/e$a;->c:Lcom/zjsoft/admob/e;

    iget-object v0, v0, Lcom/zjsoft/admob/e$a;->a:Landroid/app/Activity;

    iget-object v2, v1, Lcom/zjsoft/admob/e;->e:Ljb0;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    new-instance v3, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    .line 5
    invoke-virtual {v2}, Ljb0;->a()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, v1, Lcom/zjsoft/admob/e;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/zjsoft/admob/e;->l:Ljava/lang/String;

    invoke-static {v0, v3}, Lcc0;->C(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v2, v1, Lcom/zjsoft/admob/e;->h:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, v1, Lcom/zjsoft/admob/e;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/zjsoft/admob/e;->l:Ljava/lang/String;

    invoke-static {v0, v3}, Lcc0;->B(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v2, v1, Lcom/zjsoft/admob/e;->k:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, v1, Lcom/zjsoft/admob/e;->l:Ljava/lang/String;

    invoke-static {v0, v3}, Lcc0;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, v1, Lcom/zjsoft/admob/e;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    iget-object v2, v1, Lcom/zjsoft/admob/e;->j:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_3
    iget-object v3, v1, Lcom/zjsoft/admob/e;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 14
    iget-object v2, v1, Lcom/zjsoft/admob/e;->i:Ljava/lang/String;

    .line 15
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/zjsoft/baseadlib/b;->a:Z

    if-eqz v3, :cond_5

    const-string v3, "ad_log"

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdmobInterstitial:id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_5
    iput-object v2, v1, Lcom/zjsoft/admob/e;->n:Ljava/lang/String;

    .line 18
    iget-object v3, v1, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 19
    iget-object v2, v1, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v3, Lcom/zjsoft/admob/f;

    invoke-direct {v3, v1, v0}, Lcom/zjsoft/admob/f;-><init>(Lcom/zjsoft/admob/e;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 20
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 21
    invoke-static {v0}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object v3

    sget-object v4, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne v3, v4, :cond_6

    .line 22
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "npa"

    const-string v5, "1"

    .line 23
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 25
    :cond_6
    iget-object v3, v1, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 26
    iget-object v1, v1, Lcom/zjsoft/admob/e;->d:Lub0$a;

    if-eqz v1, :cond_7

    const-string v3, "AdmobInterstitial:load exception, please check log"

    .line 27
    invoke-static {v3, v1, v0}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    .line 28
    :cond_7
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/zjsoft/admob/e$a$a;->c:Lcom/zjsoft/admob/e$a;

    iget-object v1, v0, Lcom/zjsoft/admob/e$a;->b:Lub0$a;

    if-eqz v1, :cond_9

    .line 30
    iget-object v0, v0, Lcom/zjsoft/admob/e$a;->a:Landroid/app/Activity;

    const-string v2, "AdmobInterstitial:Admob has not been inited or is initing"

    invoke-static {v2, v1, v0}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    :cond_9
    :goto_1
    return-void
.end method
