.class Ljc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljc;
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
.field final synthetic b:Ljc;


# direct methods
.method constructor <init>(Ljc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljc$a;->b:Ljc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ljc$a;->b:Ljc;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ljc$a;->b:Ljc;

    invoke-static {v1}, Ljc;->j(Ljc;)Ljava/io/Writer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ljc$a;->b:Ljc;

    invoke-static {v1}, Ljc;->L(Ljc;)V

    .line 5
    iget-object v1, p0, Ljc$a;->b:Ljc;

    invoke-static {v1}, Ljc;->b0(Ljc;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Ljc$a;->b:Ljc;

    invoke-static {v1}, Ljc;->i0(Ljc;)V

    .line 7
    iget-object v1, p0, Ljc$a;->b:Ljc;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljc;->j0(Ljc;I)I

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
