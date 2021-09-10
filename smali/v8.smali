.class public Lv8;
.super Lg9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg9<",
        "Lj9;",
        "Lj9;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec<",
            "Lj9;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg9;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ls7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls7<",
            "Lj9;",
            "Lj9;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv7;

    iget-object v1, p0, Lg9;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lv7;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9;->a:Ljava/util/List;

    return-object v0
.end method
