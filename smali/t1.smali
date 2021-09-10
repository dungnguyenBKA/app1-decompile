.class Lt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1$b<",
        "Lg1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ls1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lg1;

    .line 2
    invoke-virtual {p1}, Lg1;->e()I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lg1;

    .line 2
    invoke-virtual {p1}, Lg1;->f()Z

    move-result p1

    return p1
.end method
