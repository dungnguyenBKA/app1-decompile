.class public Landroidx/room/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Lf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf0<",
            "Lf0<",
            "Ld4;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf0;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Lf0;-><init>(I)V

    .line 4
    iput-object v0, p0, Landroidx/room/g$d;->a:Lf0;

    return-void
.end method


# virtual methods
.method public varargs a([Ld4;)V
    .locals 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2
    iget v3, v2, Ld4;->a:I

    .line 3
    iget v4, v2, Ld4;->b:I

    .line 4
    iget-object v5, p0, Landroidx/room/g$d;->a:Lf0;

    invoke-virtual {v5, v3}, Lf0;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf0;

    if-nez v5, :cond_0

    .line 5
    new-instance v5, Lf0;

    const/16 v6, 0xa

    .line 6
    invoke-direct {v5, v6}, Lf0;-><init>(I)V

    .line 7
    iget-object v6, p0, Landroidx/room/g$d;->a:Lf0;

    invoke-virtual {v6, v3, v5}, Lf0;->j(ILjava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {v5, v4}, Lf0;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld4;

    if-eqz v3, :cond_1

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overriding migration "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ROOM"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    invoke-virtual {v5, v4, v2}, Lf0;->a(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ld4;",
            ">;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    const/4 v5, -0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    if-ge p1, p2, :cond_b

    goto :goto_2

    :cond_4
    if-le p1, p2, :cond_b

    .line 3
    :goto_2
    iget-object v6, p0, Landroidx/room/g$d;->a:Lf0;

    invoke-virtual {v6, p1}, Lf0;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf0;

    const/4 v7, 0x0

    if-nez v6, :cond_5

    :goto_3
    move-object v3, v7

    goto :goto_8

    .line 4
    :cond_5
    invoke-virtual {v6}, Lf0;->l()I

    move-result v8

    if-eqz v2, :cond_6

    add-int/lit8 v8, v8, -0x1

    const/4 v9, -0x1

    goto :goto_4

    :cond_6
    move v9, v8

    const/4 v8, 0x0

    :goto_4
    if-eq v8, v9, :cond_a

    .line 5
    invoke-virtual {v6, v8}, Lf0;->i(I)I

    move-result v10

    if-eqz v2, :cond_7

    if-gt v10, p2, :cond_8

    if-le v10, p1, :cond_8

    goto :goto_5

    :cond_7
    if-lt v10, p2, :cond_8

    if-ge v10, p1, :cond_8

    :goto_5
    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_9

    .line 6
    invoke-virtual {v6, v8}, Lf0;->m(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v10

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    add-int/2addr v8, v5

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_7
    if-nez v6, :cond_3

    goto :goto_3

    :cond_b
    :goto_8
    return-object v3
.end method
