.class public Lzc0;
.super Lwb0;
.source "SourceFile"


# instance fields
.field c:Z

.field d:Ljb0;

.field e:Ljava/lang/String;

.field f:Lub0$a;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lwb0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lzc0;->c:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lzc0;->e:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lzc0;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lzc0;->f:Lub0$a;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "VungleInterstitial@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzc0;->h:Ljava/lang/String;

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

    const-string v1, "VungleInterstitial:load"

    invoke-virtual {v0, p1, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput-object p3, p0, Lzc0;->f:Lub0$a;

    .line 4
    :try_start_0
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lzc0;->d:Ljb0;

    .line 5
    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lzc0;->d:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "app_id"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzc0;->e:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object p2, p0, Lzc0;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    new-instance p2, Lkb0;

    const-string v0, "VungleInterstitial: appID is empty"

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 9
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p2

    const-string p3, "VungleInterstitial:appID is empty"

    invoke-virtual {p2, p1, p3}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    iget-object p2, p0, Lzc0;->d:Ljb0;

    invoke-virtual {p2}, Ljb0;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzc0;->h:Ljava/lang/String;

    .line 11
    iget-object p2, p0, Lzc0;->e:Ljava/lang/String;

    new-instance v0, Lzc0$b;

    invoke-direct {v0, p0, p1, p3}, Lzc0$b;-><init>(Lzc0;Landroid/app/Activity;Lub0$a;)V

    invoke-static {p1, p2, v0}, Lad0;->c(Landroid/content/Context;Ljava/lang/String;Lyc0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 12
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    const-string p2, "VungleInterstitial:Please check params is right."

    .line 13
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VungleInterstitial:Please check MediationListener is right."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzc0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzc0;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/app/Activity;Lwb0$a;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lzc0;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzc0;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/vungle/warren/AdConfig;

    invoke-direct {v1}, Lcom/vungle/warren/AdConfig;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/vungle/warren/AdConfig;->setAdOrientation(I)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/vungle/warren/AdConfig;->setMuted(Z)V

    .line 5
    iget-object v2, p0, Lzc0;->g:Ljava/lang/String;

    new-instance v3, Lzc0$a;

    invoke-direct {v3, p0, p2, p1}, Lzc0$a;-><init>(Lzc0;Lwb0$a;Landroid/app/Activity;)V

    invoke-static {v2, v1, v3}, Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2, v0}, Lwb0$a;->a(Z)V

    :cond_0
    :goto_0
    return-void
.end method
