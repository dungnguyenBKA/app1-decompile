.class public abstract Lz60;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.method public final a()Lz60;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz60<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lz60$a;

    invoke-direct {v0, p0}, Lz60$a;-><init>(Lz60;)V

    return-object v0
.end method

.method public abstract b(La90;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La90;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract c(Lc90;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc90;",
            "TT;)V"
        }
    .end annotation
.end method
