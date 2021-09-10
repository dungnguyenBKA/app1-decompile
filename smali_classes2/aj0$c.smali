.class Laj0$c;
.super Lvj0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic k:Laj0;


# direct methods
.method constructor <init>(Laj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laj0$c;->k:Laj0;

    invoke-direct {p0}, Lvj0;-><init>()V

    return-void
.end method


# virtual methods
.method protected m(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method protected n()V
    .locals 2

    .line 1
    iget-object v0, p0, Laj0$c;->k:Laj0;

    sget-object v1, Lqi0;->h:Lqi0;

    invoke-virtual {v0, v1}, Laj0;->f(Lqi0;)V

    .line 2
    iget-object v0, p0, Laj0$c;->k:Laj0;

    iget-object v0, v0, Laj0;->d:Lvi0;

    invoke-virtual {v0}, Lvi0;->z0()V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvj0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laj0$c;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
