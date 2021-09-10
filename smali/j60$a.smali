.class Lj60$a;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz60<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lz60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz60<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz60;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La90;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj60$a;->a:Lz60;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc90;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj60$a;->a:Lz60;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public d(Lz60;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz60<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj60$a;->a:Lz60;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lj60$a;->a:Lz60;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
