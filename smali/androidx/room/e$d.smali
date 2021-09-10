.class Landroidx/room/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:[I

.field private final b:[Ljava/lang/String;

.field final c:Landroidx/room/e$c;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method a(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/e$d;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Landroidx/room/e$d;->a:[I

    aget v3, v3, v2

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lz;

    invoke-virtual {v4, v3}, Lz;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/room/e$d;->d:Ljava/util/Set;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lz;

    invoke-direct {v1, v0}, Lz;-><init>(I)V

    .line 6
    :cond_1
    iget-object v3, p0, Landroidx/room/e$d;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 7
    iget-object p1, p0, Landroidx/room/e$d;->c:Landroidx/room/e$c;

    invoke-virtual {p1, v1}, Landroidx/room/e$c;->a(Ljava/util/Set;)V

    :cond_4
    return-void
.end method
