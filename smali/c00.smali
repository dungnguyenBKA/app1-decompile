.class Lc00;
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

.field final synthetic b:Ld00;


# direct methods
.method constructor <init>(Ld00;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc00;->b:Ld00;

    iput-object p2, p0, Lc00;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkw;
    .locals 2

    .line 1
    check-cast p1, Lp30;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Laz;->f()Laz;

    move-result-object p1

    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    .line 3
    invoke-virtual {p1, v1}, Laz;->i(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lc00;->b:Ld00;

    iget-object p1, p1, Ld00;->c:Lzz$c;

    iget-object p1, p1, Lzz$c;->b:Lzz;

    invoke-static {p1}, Lzz;->j(Lzz;)Lkw;

    .line 6
    iget-object p1, p0, Lc00;->b:Ld00;

    iget-object p1, p1, Ld00;->c:Lzz$c;

    iget-object p1, p1, Lzz$c;->b:Lzz;

    invoke-static {p1}, Lzz;->e(Lzz;)Lc10;

    move-result-object p1

    iget-object v1, p0, Lc00;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Lc10;->m(Ljava/util/concurrent/Executor;)Lkw;

    .line 7
    iget-object p1, p0, Lc00;->b:Ld00;

    iget-object p1, p1, Ld00;->c:Lzz$c;

    iget-object p1, p1, Lzz$c;->b:Lzz;

    iget-object p1, p1, Lzz;->r:Llw;

    invoke-virtual {p1, v0}, Llw;->e(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    :goto_0
    return-object p1
.end method
