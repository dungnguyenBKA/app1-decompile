.class Lxc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# instance fields
.field final synthetic a:Lub0$a;

.field final synthetic b:Lwc0;


# direct methods
.method constructor <init>(Lwc0;Lub0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxc0;->b:Lwc0;

    iput-object p2, p0, Lxc0;->a:Lub0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lxc0;->b:Lwc0;

    iget-object p1, p1, Lwc0;->d:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lxc0;->a:Lub0$a;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p2, p1}, Lub0$a;->c(Landroid/content/Context;)V

    .line 4
    :cond_0
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object p2, p0, Lxc0;->b:Lwc0;

    iget-object p2, p2, Lwc0;->d:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VungleBanner:onAdEnd#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lxc0;->b:Lwc0;

    iget-object p1, p1, Lwc0;->d:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lxc0;->b:Lwc0;

    iget-object v0, v0, Lwc0;->d:Landroid/content/Context;

    const-string v1, "VungleBanner:onAdStart"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lxc0;->a:Lub0$a;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lxc0;->b:Lwc0;

    iget-object v0, v0, Lwc0;->d:Landroid/content/Context;

    invoke-interface {p1, v0}, Lub0$a;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lxc0;->b:Lwc0;

    iget-object p1, p1, Lwc0;->d:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lxc0;->b:Lwc0;

    iget-object v0, v0, Lwc0;->d:Landroid/content/Context;

    const-string v1, "VungleBanner:onAdFailedToLoad errorCode:"

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lxc0;->b:Lwc0;

    iget-object v0, v0, Lwc0;->d:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
