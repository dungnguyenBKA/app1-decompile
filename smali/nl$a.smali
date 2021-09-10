.class Lnl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lnl;


# direct methods
.method constructor <init>(Lnl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnl$a;->b:Lnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lnl$a;->b:Lnl;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lnl$a;->b:Lnl;

    invoke-static {v1}, Lnl;->j(Lnl;)Ljava/io/Writer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lnl$a;->b:Lnl;

    invoke-static {v1}, Lnl;->o(Lnl;)V

    .line 5
    iget-object v1, p0, Lnl$a;->b:Lnl;

    invoke-static {v1}, Lnl;->S(Lnl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lnl$a;->b:Lnl;

    invoke-static {v1}, Lnl;->i0(Lnl;)V

    .line 7
    iget-object v1, p0, Lnl$a;->b:Lnl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnl;->j0(Lnl;I)I

    .line 8
    :cond_1
    monitor-exit v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
