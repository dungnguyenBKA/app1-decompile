.class abstract Lw$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lw$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lw$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field b:Lw$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lw$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lw$c;Lw$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw$c<",
            "TK;TV;>;",
            "Lw$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lw$e;->b:Lw$c;

    .line 3
    iput-object p1, p0, Lw$e;->c:Lw$c;

    return-void
.end method


# virtual methods
.method public a(Lw$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw$e;->b:Lw$c;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lw$e;->c:Lw$c;

    if-ne p1, v0, :cond_0

    .line 2
    iput-object v1, p0, Lw$e;->c:Lw$c;

    .line 3
    iput-object v1, p0, Lw$e;->b:Lw$c;

    .line 4
    :cond_0
    iget-object v0, p0, Lw$e;->b:Lw$c;

    if-ne v0, p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lw$e;->b(Lw$c;)Lw$c;

    move-result-object v0

    iput-object v0, p0, Lw$e;->b:Lw$c;

    .line 6
    :cond_1
    iget-object v0, p0, Lw$e;->c:Lw$c;

    if-ne v0, p1, :cond_4

    .line 7
    iget-object p1, p0, Lw$e;->b:Lw$c;

    if-eq v0, p1, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lw$e;->c(Lw$c;)Lw$c;

    move-result-object v1

    .line 9
    :cond_3
    :goto_0
    iput-object v1, p0, Lw$e;->c:Lw$c;

    :cond_4
    return-void
.end method

.method abstract b(Lw$c;)Lw$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw$c<",
            "TK;TV;>;)",
            "Lw$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract c(Lw$c;)Lw$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw$c<",
            "TK;TV;>;)",
            "Lw$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw$e;->c:Lw$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lw$e;->c:Lw$c;

    .line 2
    iget-object v1, p0, Lw$e;->b:Lw$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lw$e;->c(Lw$c;)Lw$c;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 4
    :goto_1
    iput-object v1, p0, Lw$e;->c:Lw$c;

    return-object v0
.end method
