.class abstract Lv70$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lv70$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv70$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lv70$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv70$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lv70;


# direct methods
.method constructor <init>(Lv70;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lv70$d;->e:Lv70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lv70;->f:Lv70$e;

    iget-object v0, v0, Lv70$e;->e:Lv70$e;

    iput-object v0, p0, Lv70$d;->b:Lv70$e;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lv70$d;->c:Lv70$e;

    .line 4
    iget p1, p1, Lv70;->e:I

    iput p1, p0, Lv70$d;->d:I

    return-void
.end method


# virtual methods
.method final a()Lv70$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv70$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv70$d;->b:Lv70$e;

    .line 2
    iget-object v1, p0, Lv70$d;->e:Lv70;

    iget-object v2, v1, Lv70;->f:Lv70$e;

    if-eq v0, v2, :cond_1

    .line 3
    iget v1, v1, Lv70;->e:I

    iget v2, p0, Lv70$d;->d:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, Lv70$e;->e:Lv70$e;

    iput-object v1, p0, Lv70$d;->b:Lv70$e;

    .line 5
    iput-object v0, p0, Lv70$d;->c:Lv70$e;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv70$d;->b:Lv70$e;

    iget-object v1, p0, Lv70$d;->e:Lv70;

    iget-object v1, v1, Lv70;->f:Lv70$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv70$d;->c:Lv70$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lv70$d;->e:Lv70;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lv70;->e(Lv70$e;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lv70$d;->c:Lv70$e;

    .line 4
    iget-object v0, p0, Lv70$d;->e:Lv70;

    iget v0, v0, Lv70;->e:I

    iput v0, p0, Lv70$d;->d:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
