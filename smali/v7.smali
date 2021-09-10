.class public Lv7;
.super Lx7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx7<",
        "Lj9;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lj9;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
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
    invoke-direct {p0, p1}, Lx7;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lec;

    iget-object p1, p1, Lec;->b:Ljava/lang/Object;

    check-cast p1, Lj9;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lj9;->c()I

    move-result v0

    .line 4
    :goto_0
    new-instance p1, Lj9;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lj9;-><init>([F[I)V

    iput-object p1, p0, Lv7;->i:Lj9;

    return-void
.end method


# virtual methods
.method h(Lec;F)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lv7;->i:Lj9;

    iget-object v1, p1, Lec;->b:Ljava/lang/Object;

    check-cast v1, Lj9;

    iget-object p1, p1, Lec;->c:Ljava/lang/Object;

    check-cast p1, Lj9;

    invoke-virtual {v0, v1, p1, p2}, Lj9;->d(Lj9;Lj9;F)V

    .line 2
    iget-object p1, p0, Lv7;->i:Lj9;

    return-object p1
.end method
