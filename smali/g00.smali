.class Lg00;
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
.field final synthetic b:Lzz;


# direct methods
.method constructor <init>(Lzz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg00;->b:Lzz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lg00;->b:Lzz;

    invoke-static {v0}, Lzz;->g(Lzz;)V

    const/4 v0, 0x0

    return-object v0
.end method
