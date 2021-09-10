.class public Lwc0;
.super Lvb0;
.source "SourceFile"


# instance fields
.field b:Ljb0;

.field c:Ljava/lang/String;

.field d:Landroid/content/Context;

.field e:Lcom/vungle/warren/VungleBanner;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lvb0;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lwc0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lwc0;->e:Lcom/vungle/warren/VungleBanner;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/vungle/warren/VungleBanner;->destroyAd()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "VungleBanner@"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lwc0;->f:Ljava/lang/String;

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

    const-string v1, "VungleBanner:load"

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
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwc0;->d:Landroid/content/Context;

    .line 4
    :try_start_0
    invoke-virtual {p2}, Llb0;->a()Ljb0;

    move-result-object p2

    iput-object p2, p0, Lwc0;->b:Ljb0;

    .line 5
    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lwc0;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "app_id"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lwc0;->c:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lwc0;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "root_layout_id"

    const v1, 0x7f0b0028

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 8
    :cond_1
    iget-object p2, p0, Lwc0;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    new-instance p2, Lkb0;

    const-string v0, "VungleBanner: appID is empty"

    invoke-direct {p2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 10
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p2

    const-string p3, "VungleBanner:appID is empty"

    invoke-virtual {p2, p1, p3}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object p2, p0, Lwc0;->b:Ljb0;

    invoke-virtual {p2}, Ljb0;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lwc0;->f:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lwc0;->c:Ljava/lang/String;

    new-instance v0, Lwc0$a;

    invoke-direct {v0, p0, p1, p3}, Lwc0$a;-><init>(Lwc0;Landroid/app/Activity;Lub0$a;)V

    invoke-static {p1, p2, v0}, Lad0;->c(Landroid/content/Context;Ljava/lang/String;Lyc0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 13
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    const-string p2, "VungleBanner:Please check params is right."

    .line 14
    invoke-static {p2, p3, p1}, Lic;->t(Ljava/lang/String;Lub0$a;Landroid/app/Activity;)V

    return-void

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VungleBanner:Please check MediationListener is right."

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
