.class Ld00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
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
.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lzz$c;


# direct methods
.method constructor <init>(Lzz$c;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld00;->c:Lzz$c;

    iput-object p2, p0, Ld00;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ld00;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Deleting cached crash reports..."

    invoke-virtual {v0, v1}, Laz;->h(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ld00;->c:Lzz$c;

    iget-object v0, v0, Lzz$c;->b:Lzz;

    .line 4
    sget-object v1, Lzz;->t:Ljava/io/FilenameFilter;

    .line 5
    invoke-virtual {v0}, Lzz;->t()Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    .line 7
    :cond_0
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Ld00;->c:Lzz$c;

    iget-object v0, v0, Lzz$c;->b:Lzz;

    invoke-static {v0}, Lzz;->e(Lzz;)Lc10;

    move-result-object v0

    invoke-virtual {v0}, Lc10;->l()V

    .line 10
    iget-object v0, p0, Ld00;->c:Lzz$c;

    iget-object v0, v0, Lzz$c;->b:Lzz;

    iget-object v0, v0, Lzz;->r:Llw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llw;->e(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Sending cached crash reports..."

    invoke-virtual {v0, v1}, Laz;->b(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Ld00;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 14
    iget-object v1, p0, Ld00;->c:Lzz$c;

    iget-object v1, v1, Lzz$c;->b:Lzz;

    invoke-static {v1}, Lzz;->h(Lzz;)Ln00;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln00;->b(Z)V

    .line 15
    iget-object v0, p0, Ld00;->c:Lzz$c;

    iget-object v0, v0, Lzz$c;->b:Lzz;

    invoke-static {v0}, Lzz;->i(Lzz;)Ltz;

    move-result-object v0

    invoke-virtual {v0}, Ltz;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 16
    iget-object v1, p0, Ld00;->c:Lzz$c;

    iget-object v1, v1, Lzz$c;->a:Lkw;

    new-instance v2, Lc00;

    invoke-direct {v2, p0, v0}, Lc00;-><init>(Ld00;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v1, v0, v2}, Lkw;->o(Ljava/util/concurrent/Executor;Ljw;)Lkw;

    move-result-object v0

    :goto_1
    return-object v0
.end method
