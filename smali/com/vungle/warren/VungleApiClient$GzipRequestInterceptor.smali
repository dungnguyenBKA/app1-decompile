.class Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GzipRequestInterceptor"
.end annotation


# static fields
.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final GZIP:Ljava/lang/String; = "gzip"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gzip(Lkh0;)Lkh0;
    .locals 2

    .line 1
    new-instance v0, Lxj0;

    invoke-direct {v0}, Lxj0;-><init>()V

    .line 2
    new-instance v1, Lfk0;

    invoke-direct {v1, v0}, Lfk0;-><init>(Lqk0;)V

    invoke-static {v1}, Lik0;->b(Lqk0;)Lyj0;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Lkh0;->writeTo(Lyj0;)V

    .line 4
    invoke-interface {v1}, Lqk0;->close()V

    .line 5
    new-instance v1, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor$1;-><init>(Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;Lkh0;Lxj0;)V

    return-object v1
.end method


# virtual methods
.method public intercept(Leh0$a;)Llh0;
    .locals 4

    .line 1
    check-cast p1, Lji0;

    invoke-virtual {p1}, Lji0;->i()Ljh0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljh0;->a()Lkh0;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "Content-Encoding"

    .line 3
    invoke-virtual {v0, v1}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljh0;->g()Ljh0$a;

    move-result-object v2

    const-string v3, "gzip"

    .line 5
    invoke-virtual {v2, v1, v3}, Ljh0$a;->c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    .line 6
    invoke-virtual {v0}, Ljh0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljh0;->a()Lkh0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;->gzip(Lkh0;)Lkh0;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljh0$a;->e(Ljava/lang/String;Lkh0;)Ljh0$a;

    .line 7
    invoke-virtual {v2}, Ljh0$a;->b()Ljh0;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lji0;->f(Ljh0;)Llh0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lji0;->f(Ljh0;)Llh0;

    move-result-object p1

    return-object p1
.end method
