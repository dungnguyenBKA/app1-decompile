.class Ls80$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La70;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj60;Lz80;)Lz60;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj60;",
            "Lz80<",
            "TT;>;)",
            "Lz60<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lz80;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    const-class p2, Ljava/util/Date;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lz80;->get(Ljava/lang/Class;)Lz80;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj60;->e(Lz80;)Lz60;

    move-result-object p1

    .line 5
    new-instance p2, Ls80$r$a;

    invoke-direct {p2, p0, p1}, Ls80$r$a;-><init>(Ls80$r;Lz60;)V

    return-object p2
.end method
