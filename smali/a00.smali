.class La00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljw<",
        "Lp30;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lzz$b;


# direct methods
.method constructor <init>(Lzz$b;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, La00;->b:Lzz$b;

    iput-object p2, p0, La00;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkw;
    .locals 3

    .line 1
    check-cast p1, Lp30;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v0, "Received null app settings, cannot send reports at crash time."

    .line 3
    invoke-virtual {p1, v0}, Laz;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Lkw;

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, La00;->b:Lzz$b;

    iget-object v1, v1, Lzz$b;->f:Lzz;

    .line 6
    invoke-static {v1}, Lzz;->j(Lzz;)Lkw;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, La00;->b:Lzz$b;

    iget-object v1, v1, Lzz$b;->f:Lzz;

    .line 7
    invoke-static {v1}, Lzz;->e(Lzz;)Lc10;

    move-result-object v1

    iget-object v2, p0, La00;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2}, Lc10;->m(Ljava/util/concurrent/Executor;)Lkw;

    move-result-object v1

    aput-object v1, p1, v0

    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lnw;->e(Ljava/util/Collection;)Lkw;

    move-result-object p1

    :goto_0
    return-object p1
.end method
