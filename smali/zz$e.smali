.class Lzz$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzz;->A(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/Date;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Ljava/lang/Thread;

.field final synthetic e:Lzz;


# direct methods
.method constructor <init>(Lzz;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzz$e;->e:Lzz;

    iput-object p2, p0, Lzz$e;->b:Ljava/util/Date;

    iput-object p3, p0, Lzz$e;->c:Ljava/lang/Throwable;

    iput-object p4, p0, Lzz$e;->d:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lzz$e;->e:Lzz;

    invoke-virtual {v0}, Lzz;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lzz$e;->b:Ljava/util/Date;

    .line 3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 4
    iget-object v0, p0, Lzz$e;->e:Lzz;

    invoke-static {v0}, Lzz;->a(Lzz;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 5
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    const-string v1, "Tried to write a non-fatal exception while no session was open."

    .line 6
    invoke-virtual {v0, v1}, Laz;->i(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lzz$e;->e:Lzz;

    invoke-static {v0}, Lzz;->e(Lzz;)Lc10;

    move-result-object v4

    iget-object v5, p0, Lzz$e;->c:Ljava/lang/Throwable;

    iget-object v6, p0, Lzz$e;->d:Ljava/lang/Thread;

    invoke-virtual/range {v4 .. v9}, Lc10;->j(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
