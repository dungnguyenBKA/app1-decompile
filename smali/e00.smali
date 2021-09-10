.class Le00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Le10;

.field final synthetic c:Lzz;


# direct methods
.method constructor <init>(Lzz;Le10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le00;->c:Lzz;

    iput-object p2, p0, Le00;->b:Le10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le00;->c:Lzz;

    invoke-static {v0}, Lzz;->a(Lzz;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Tried to cache user data while no session was open."

    invoke-virtual {v0, v1}, Laz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le00;->c:Lzz;

    invoke-static {v1}, Lzz;->e(Lzz;)Lc10;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc10;->k(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lx00;

    iget-object v2, p0, Le00;->c:Lzz;

    invoke-virtual {v2}, Lzz;->t()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lx00;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Le00;->b:Le10;

    invoke-virtual {v1, v0, v2}, Lx00;->d(Ljava/lang/String;Le10;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
