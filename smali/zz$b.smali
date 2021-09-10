.class Lzz$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzz;->u(Ll30;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkw<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/Date;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Ljava/lang/Thread;

.field final synthetic e:Ll30;

.field final synthetic f:Lzz;


# direct methods
.method constructor <init>(Lzz;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Ll30;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzz$b;->f:Lzz;

    iput-object p2, p0, Lzz$b;->b:Ljava/util/Date;

    iput-object p3, p0, Lzz$b;->c:Ljava/lang/Throwable;

    iput-object p4, p0, Lzz$b;->d:Ljava/lang/Thread;

    iput-object p5, p0, Lzz$b;->e:Ll30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lzz$b;->b:Ljava/util/Date;

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 3
    iget-object v0, p0, Lzz$b;->f:Lzz;

    invoke-static {v0}, Lzz;->a(Lzz;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    if-nez v7, :cond_0

    .line 4
    invoke-static {}, Laz;->f()Laz;

    move-result-object v1

    const-string v2, "Tried to write a fatal exception while no session was open."

    .line 5
    invoke-virtual {v1, v2}, Laz;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lzz$b;->f:Lzz;

    invoke-static {v1}, Lzz;->d(Lzz;)Lj00;

    move-result-object v1

    invoke-virtual {v1}, Lj00;->a()Z

    .line 8
    iget-object v1, p0, Lzz$b;->f:Lzz;

    invoke-static {v1}, Lzz;->e(Lzz;)Lc10;

    move-result-object v4

    iget-object v5, p0, Lzz$b;->c:Ljava/lang/Throwable;

    iget-object v6, p0, Lzz$b;->d:Ljava/lang/Thread;

    invoke-virtual/range {v4 .. v9}, Lc10;->i(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 9
    iget-object v1, p0, Lzz$b;->f:Lzz;

    iget-object v2, p0, Lzz$b;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lzz;->f(Lzz;J)V

    .line 10
    iget-object v1, p0, Lzz$b;->f:Lzz;

    invoke-virtual {v1}, Lzz;->n()V

    .line 11
    iget-object v1, p0, Lzz$b;->f:Lzz;

    invoke-static {v1}, Lzz;->g(Lzz;)V

    .line 12
    iget-object v1, p0, Lzz$b;->f:Lzz;

    invoke-static {v1}, Lzz;->h(Lzz;)Ln00;

    move-result-object v1

    invoke-virtual {v1}, Ln00;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-static {v0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lzz$b;->f:Lzz;

    invoke-static {v0}, Lzz;->i(Lzz;)Ltz;

    move-result-object v0

    invoke-virtual {v0}, Ltz;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lzz$b;->e:Ll30;

    .line 16
    check-cast v1, Lk30;

    invoke-virtual {v1}, Lk30;->j()Lkw;

    move-result-object v1

    new-instance v2, La00;

    invoke-direct {v2, p0, v0}, La00;-><init>(Lzz$b;Ljava/util/concurrent/Executor;)V

    .line 17
    invoke-virtual {v1, v0, v2}, Lkw;->o(Ljava/util/concurrent/Executor;Ljw;)Lkw;

    move-result-object v0

    :goto_0
    return-object v0
.end method
