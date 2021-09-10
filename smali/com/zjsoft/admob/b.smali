.class public Lcom/zjsoft/admob/b;
.super Lvb0;
.source "SourceFile"


# instance fields
.field b:Lub0$a;

.field c:Ljb0;

.field d:Z

.field e:Z

.field f:Lcom/google/android/gms/ads/AdView;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvb0;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/zjsoft/admob/b;->l:Ljava/lang/String;

    return-void
.end method

.method static l(Lcom/zjsoft/admob/b;Landroid/app/Activity;Ljb0;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    .line 3
    invoke-virtual {p2}, Ljb0;->a()Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/zjsoft/admob/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zjsoft/admob/b;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lcc0;->C(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p0, Lcom/zjsoft/admob/b;->g:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/zjsoft/admob/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zjsoft/admob/b;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lcc0;->B(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/zjsoft/admob/b;->j:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/zjsoft/admob/b;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lcc0;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/zjsoft/admob/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-object p2, p0, Lcom/zjsoft/admob/b;->i:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/zjsoft/admob/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    iget-object p2, p0, Lcom/zjsoft/admob/b;->h:Ljava/lang/String;

    .line 13
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/zjsoft/baseadlib/b;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "ad_log"

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdmobBanner:id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_5
    iput-object p2, p0, Lcom/zjsoft/admob/b;->l:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0, p1}, Lcom/zjsoft/admob/b;->m(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 18
    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 19
    invoke-static {p1}, Lcc0;->l(Landroid/content/Context;)Lcom/google/ads/consent/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->NON_PERSONALIZED:Lcom/google/ads/consent/ConsentStatus;

    if-ne v0, v1, :cond_6

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "npa"

    const-string v2, "1"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 24
    iget-object p2, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/zjsoft/admob/c;

    invoke-direct {v0, p0, p1}, Lcom/zjsoft/admob/c;-><init>(Lcom/zjsoft/admob/b;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 25
    iget-object p0, p0, Lcom/zjsoft/admob/b;->b:Lub0$a;

    if-eqz p0, :cond_7

    const-string v0, "AdmobBanner:load exception, please check log"

    .line 26
    invoke-static {v0, p0, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    .line 27
    :cond_7
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private m(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 5
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    .line 7
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 3
    iget-object v0, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    .line 5
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    const-string v1, "AdmobBanner:destroy"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "AdmobBanner@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/b;->l:Ljava/lang/String;

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

    const-string v1, "AdmobBanner:load"

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
    iput-object p3, p0, Lcom/zjsoft/admob/b;->b:Lub0$a;

    .line 4
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/b;->c:Ljb0;

    .line 5
    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/zjsoft/admob/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ad_for_child"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/admob/b;->d:Z

    .line 7
    iget-object p2, p0, Lcom/zjsoft/admob/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, ""

    const-string v1, "adx_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/b;->g:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/zjsoft/admob/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "adh_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/b;->h:Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcom/zjsoft/admob/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "ads_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/b;->i:Ljava/lang/String;

    .line 10
    iget-object p2, p0, Lcom/zjsoft/admob/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "adc_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/b;->j:Ljava/lang/String;

    .line 11
    iget-object p2, p0, Lcom/zjsoft/admob/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "common_config"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/b;->k:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/zjsoft/admob/b;->c:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "skip_init"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/admob/b;->e:Z

    .line 13
    :cond_1
    iget-boolean p2, p0, Lcom/zjsoft/admob/b;->d:Z

    if-eqz p2, :cond_2

    .line 14
    invoke-static {}, Lcom/zjsoft/admob/a;->d()V

    .line 15
    :cond_2
    iget-boolean p2, p0, Lcom/zjsoft/admob/b;->e:Z

    new-instance v0, Lcom/zjsoft/admob/b$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/zjsoft/admob/b$a;-><init>(Lcom/zjsoft/admob/b;Landroid/app/Activity;Lub0$a;)V

    invoke-static {p1, p2, v0}, Lcom/zjsoft/admob/a;->c(Landroid/content/Context;ZLcom/zjsoft/admob/d;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p2, "AdmobBanner:Please check params is right."

    .line 16
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AdmobBanner:Please check MediationListener is right."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zjsoft/admob/b;->f:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    :cond_0
    return-void
.end method
