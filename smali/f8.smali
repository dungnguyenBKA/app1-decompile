.class public Lf8;
.super Lx7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx7<",
        "Ll8;",
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
            "Ll8;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lx7;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method h(Lec;F)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p1, Lec;->b:Ljava/lang/Object;

    check-cast p1, Ll8;

    return-object p1
.end method
