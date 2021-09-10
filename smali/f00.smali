.class Lf00;
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
.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lzz;


# direct methods
.method constructor <init>(Lzz;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf00;->c:Lzz;

    iput-object p2, p0, Lf00;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lf00;->c:Lzz;

    invoke-static {v0}, Lzz;->a(Lzz;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lx00;

    iget-object v2, p0, Lf00;->c:Lzz;

    invoke-virtual {v2}, Lzz;->t()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lx00;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lf00;->b:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lx00;->c(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
