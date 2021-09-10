.class Lzz$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzz;->z(Lkw;)Lkw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljw<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkw;

.field final synthetic b:Lzz;


# direct methods
.method constructor <init>(Lzz;Lkw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzz$c;->b:Lzz;

    iput-object p2, p0, Lzz$c;->a:Lkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkw;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lzz$c;->b:Lzz;

    invoke-static {v0}, Lzz;->i(Lzz;)Ltz;

    move-result-object v0

    new-instance v1, Ld00;

    invoke-direct {v1, p0, p1}, Ld00;-><init>(Lzz$c;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Ltz;->e(Ljava/util/concurrent/Callable;)Lkw;

    move-result-object p1

    return-object p1
.end method
