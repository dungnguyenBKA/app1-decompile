.class Lzc0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyc0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzc0;->d(Landroid/app/Activity;Llb0;Lub0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lub0$a;

.field final synthetic c:Lzc0;


# direct methods
.method constructor <init>(Lzc0;Landroid/app/Activity;Lub0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzc0$b;->c:Lzc0;

    iput-object p2, p0, Lzc0$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lzc0$b;->b:Lub0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lzc0$b;->c:Lzc0;

    iget-object p1, p1, Lzc0;->d:Ljb0;

    invoke-virtual {p1}, Ljb0;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lzc0$b$a;

    invoke-direct {v0, p0}, Lzc0$b$a;-><init>(Lzc0$b;)V

    invoke-static {p1, v0}, Lcom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lcom/vungle/warren/LoadAdCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzc0$b;->b:Lub0$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "VungleInterstitial: not init"

    if-eqz p1, :cond_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lzc0$b;->a:Landroid/app/Activity;

    new-instance v2, Lkb0;

    invoke-direct {v2, v0}, Lkb0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v2}, Lub0$a;->d(Landroid/app/Activity;Lkb0;)V

    .line 5
    :cond_1
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object p1

    iget-object v1, p0, Lzc0$b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Lfc0;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lzc0$b;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
