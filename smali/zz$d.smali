.class Lzz$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzz;->B(JLjava/lang/String;)V
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
.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lzz;


# direct methods
.method constructor <init>(Lzz;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzz$d;->d:Lzz;

    iput-wide p2, p0, Lzz$d;->b:J

    iput-object p4, p0, Lzz$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lzz$d;->d:Lzz;

    invoke-virtual {v0}, Lzz;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzz$d;->d:Lzz;

    invoke-static {v0}, Lzz;->b(Lzz;)Lj10;

    move-result-object v0

    iget-wide v1, p0, Lzz$d;->b:J

    iget-object v3, p0, Lzz$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lj10;->e(JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
