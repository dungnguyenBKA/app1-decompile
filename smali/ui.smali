.class public Lui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvi<",
        "Lji;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhe;Lcom/bumptech/glide/load/i;)Lhe;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "Lji;",
            ">;",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lhe<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lhe;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lji;

    .line 2
    invoke-virtual {p1}, Lji;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    new-instance p2, Lyh;

    invoke-static {p1}, Lyk;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lyh;-><init>([B)V

    return-object p2
.end method
