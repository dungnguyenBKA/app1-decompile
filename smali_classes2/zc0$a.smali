.class Lzc0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/PlayAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzc0;->l(Landroid/app/Activity;Lwb0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwb0$a;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lzc0;


# direct methods
.method constructor <init>(Lzc0;Lwb0$a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzc0$a;->c:Lzc0;

    iput-object p2, p0, Lzc0$a;->a:Lwb0$a;

    iput-object p3, p0, Lzc0$a;->b:Landroid/app/Activity;

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
    .locals 3

    .line 1
    iget-object p1, p0, Lzc0$a;->b:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lzc0$a;->b:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VungleInterstitial:onAdEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lzc0$a;->c:Lzc0;

    iget-object p1, p1, Lzc0;->f:Lub0$a;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 4
    iget-object p2, p0, Lzc0$a;->b:Landroid/app/Activity;

    invoke-interface {p1, p2}, Lub0$a;->c(Landroid/content/Context;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lzc0$a;->c:Lzc0;

    iget-object p1, p1, Lzc0;->f:Lub0$a;

    if-eqz p1, :cond_1

    .line 6
    iget-object p2, p0, Lzc0$a;->b:Landroid/app/Activity;

    invoke-interface {p1, p2}, Lub0$a;->b(Landroid/content/Context;)V

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
    iget-object p1, p0, Lzc0$a;->a:Lwb0$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lwb0$a;->a(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lzc0$a;->b:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lzc0$a;->b:Landroid/app/Activity;

    const-string v1, "VungleInterstitial:onAdStart"

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lzc0$a;->c:Lzc0;

    iget-object p1, p1, Lzc0;->f:Lub0$a;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lzc0$a;->b:Landroid/app/Activity;

    invoke-interface {p1, v0}, Lub0$a;->e(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onAdViewed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lzc0$a;->a:Lwb0$a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lwb0$a;->a(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lzc0$a;->b:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lzc0$a;->b:Landroid/app/Activity;

    const-string v1, "VungleInterstitial:onAdFailedToLoad errorCode:"

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v0, p0, Lzc0$a;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
