.class public Lcom/zjsoft/admob/g;
.super Lvb0;
.source "SourceFile"


# instance fields
.field b:Ljb0;

.field c:Z

.field d:Z

.field e:I

.field f:Lcom/google/android/gms/ads/nativead/NativeAd;

.field g:Lcom/google/android/gms/ads/formats/NativeAppInstallAd;

.field h:Lub0$a;

.field i:I

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvb0;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/zjsoft/admob/g;->e:I

    const v0, 0x7f0b0027

    .line 3
    iput v0, p0, Lcom/zjsoft/admob/g;->i:I

    const v0, 0x7f0b0028

    .line 4
    iput v0, p0, Lcom/zjsoft/admob/g;->j:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/zjsoft/admob/g;->f:Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->destroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/zjsoft/admob/g;->f:Lcom/google/android/gms/ads/nativead/NativeAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :cond_0
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

    const-string v0, "AdmobNativeBanner@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zjsoft/admob/g;->p:Ljava/lang/String;

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

    const-string v1, "AdmobNativeBanner:load"

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
    iput-object p3, p0, Lcom/zjsoft/admob/g;->h:Lub0$a;

    .line 4
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    .line 5
    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ad_for_child"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/admob/g;->c:Z

    .line 7
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "ad_choices_position"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zjsoft/admob/g;->e:I

    .line 8
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const v0, 0x7f0b0027

    const-string v1, "layout_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zjsoft/admob/g;->i:I

    .line 9
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const v0, 0x7f0b0028

    const-string v1, "root_layout_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zjsoft/admob/g;->j:I

    .line 10
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, ""

    const-string v1, "adx_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/g;->k:Ljava/lang/String;

    .line 11
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "adh_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/g;->l:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "ads_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/g;->m:Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "adc_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/g;->n:Ljava/lang/String;

    .line 14
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "common_config"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zjsoft/admob/g;->o:Ljava/lang/String;

    .line 15
    iget-object p2, p0, Lcom/zjsoft/admob/g;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "skip_init"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zjsoft/admob/g;->d:Z

    .line 16
    :cond_1
    iget-boolean p2, p0, Lcom/zjsoft/admob/g;->c:Z

    if-eqz p2, :cond_2

    .line 17
    invoke-static {}, Lcom/zjsoft/admob/a;->d()V

    .line 18
    :cond_2
    iget-boolean p2, p0, Lcom/zjsoft/admob/g;->d:Z

    new-instance v0, Lcom/zjsoft/admob/g$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/zjsoft/admob/g$a;-><init>(Lcom/zjsoft/admob/g;Landroid/app/Activity;Lub0$a;)V

    invoke-static {p1, p2, v0}, Lcom/zjsoft/admob/a;->c(Landroid/content/Context;ZLcom/zjsoft/admob/d;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    const-string p2, "AdmobNativeBanner:Please check params is right."

    .line 19
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AdmobNativeBanner:Please check MediationListener is right."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
