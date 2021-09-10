.class Lwc0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyc0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwc0;->d(Landroid/app/Activity;Llb0;Lub0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lub0$a;

.field final synthetic c:Lwc0;


# direct methods
.method constructor <init>(Lwc0;Landroid/app/Activity;Lub0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwc0$a;->c:Lwc0;

    iput-object p2, p0, Lwc0$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lwc0$a;->b:Lub0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lwc0$a;->c:Lwc0;

    iget-object p1, p1, Lwc0;->b:Ljb0;

    invoke-virtual {p1}, Ljb0;->a()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    new-instance v1, Lwc0$a$a;

    invoke-direct {v1, p0}, Lwc0$a$a;-><init>(Lwc0$a;)V

    invoke-static {p1, v0, v1}, Lcom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lcom/vungle/warren/AdConfig$AdSize;Lcom/vungle/warren/LoadAdCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {}, Lfc0;->a()Lfc0;

    move-result-object v0

    iget-object v1, p0, Lwc0$a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lfc0;->c(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
