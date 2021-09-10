.class public Lcom/zjsoft/admob/e;
.super Lwb0;
.source "SourceFile"


# instance fields
.field c:Lcom/google/android/gms/ads/InterstitialAd;

.field d:Lub0$a;

.field e:Ljb0;

.field f:Z

.field g:Z

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ldc0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lwb0;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/zjsoft/admob/e;->m:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/zjsoft/admob/e;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/zjsoft/admob/e;->o:Ldc0;

    return-void
.end method

.method static synthetic m(Lcom/zjsoft/admob/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zjsoft/admob/e;->o()V

    return-void
.end method

.method static synthetic n(Lcom/zjsoft/admob/e;Lwb0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zjsoft/admob/e;->p(Lwb0$a;)V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/admob/e;->o:Ldc0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zjsoft/admob/e;->o:Ldc0;

    invoke-virtual {v0}, Ldc0;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private p(Lwb0$a;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    invoke-direct {p0}, Lcom/zjsoft/admob/e;->o()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lwb0$a;->a(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 3
    iput-object v1, p0, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    .line 4
    iput-object v1, p0, Lcom/zjsoft/admob/e;->o:Ldc0;

    .line 5
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    const-string v1, "AdmobInterstitial:destroy"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "AdmobInterstitial@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/e;->n:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lub0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/app/Activity;Llb0;Lub0$a;)V
    .locals 2

    .line 1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    const-string v1, "AdmobInterstitial:load"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iput-object p3, p0, Lcom/zjsoft/admob/e;->d:Lub0$a;

    .line 4
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    .line 5
    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ad_for_child"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/admob/e;->f:Z

    .line 7
    iget-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, ""

    const-string v1, "adx_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/e;->h:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "adh_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/e;->i:Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "ads_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/e;->j:Ljava/lang/String;

    .line 10
    iget-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "adc_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/e;->k:Ljava/lang/String;

    .line 11
    iget-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "common_config"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/e;->l:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "ad_position_key"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/e;->m:Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/zjsoft/admob/e;->e:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "skip_init"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/admob/e;->g:Z

    .line 14
    :cond_1
    iget-boolean p2, p0, Lcom/zjsoft/admob/e;->f:Z

    if-eqz p2, :cond_2

    .line 15
    invoke-static {}, Lcom/zjsoft/admob/a;->d()V

    .line 16
    :cond_2
    iget-boolean p2, p0, Lcom/zjsoft/admob/e;->g:Z

    new-instance v0, Lcom/zjsoft/admob/e$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/zjsoft/admob/e$a;-><init>(Lcom/zjsoft/admob/e;Landroid/app/Activity;Lub0$a;)V

    invoke-static {p1, p2, v0}, Lcom/zjsoft/admob/a;->c(Landroid/content/Context;ZLcom/zjsoft/admob/d;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p2, "AdmobInterstitial:Please check params is right."

    .line 17
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 18
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AdmobInterstitial:Please check MediationListener is right."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/admob/e;->c:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l(Landroid/app/Activity;Lwb0$a;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/admob/e;->m:Ljava/lang/String;

    const-string v1, "admob_i_loading_time"

    iget-object v2, p0, Lcom/zjsoft/admob/e;->l:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lwb0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ldc0;

    move-result-object p1

    iput-object p1, p0, Lcom/zjsoft/admob/e;->o:Ldc0;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/zjsoft/admob/e$b;

    invoke-direct {v0, p0, p2}, Lcom/zjsoft/admob/e$b;-><init>(Lcom/zjsoft/admob/e;Lwb0$a;)V

    invoke-virtual {p1, v0}, Ldc0;->b(Ldc0$b;)V

    .line 3
    iget-object p1, p0, Lcom/zjsoft/admob/e;->o:Ldc0;

    invoke-virtual {p1}, Ldc0;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/zjsoft/admob/e;->p(Lwb0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    invoke-direct {p0}, Lcom/zjsoft/admob/e;->o()V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-interface {p2, p1}, Lwb0$a;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
