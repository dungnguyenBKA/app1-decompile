.class public Ld8;
.super Ls7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls7<",
        "Ls9;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Ls9;

.field private final j:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec<",
            "Ls9;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ls7;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Ls9;

    invoke-direct {p1}, Ls9;-><init>()V

    iput-object p1, p0, Ld8;->i:Ls9;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ld8;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public h(Lec;F)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p1, Lec;->b:Ljava/lang/Object;

    check-cast v0, Ls9;

    .line 2
    iget-object p1, p1, Lec;->c:Ljava/lang/Object;

    check-cast p1, Ls9;

    .line 3
    iget-object v1, p0, Ld8;->i:Ls9;

    invoke-virtual {v1, v0, p1, p2}, Ls9;->c(Ls9;Ls9;F)V

    .line 4
    iget-object p1, p0, Ld8;->i:Ls9;

    iget-object p2, p0, Ld8;->j:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lcc;->e(Ls9;Landroid/graphics/Path;)V

    .line 5
    iget-object p1, p0, Ld8;->j:Landroid/graphics/Path;

    return-object p1
.end method
