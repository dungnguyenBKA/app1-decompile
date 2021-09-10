.class Ls80$v;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz60<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz60;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    invoke-virtual {p1}, La90;->j()V

    .line 3
    invoke-virtual {p1}, La90;->x0()Lb90;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    sget-object v3, Lb90;->c:Lb90;

    if-eq v1, v3, :cond_5

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 6
    invoke-virtual {p1}, La90;->n0()Z

    move-result v1

    goto :goto_2

    .line 7
    :cond_0
    new-instance p1, Lx60;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bitset value type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lx60;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {p1}, La90;->p0()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, La90;->v0()Ljava/lang/String;

    move-result-object v1

    .line 10
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 12
    invoke-virtual {p1}, La90;->x0()Lb90;

    move-result-object v1

    goto :goto_0

    .line 13
    :catch_0
    new-instance p1, Lx60;

    const-string v0, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lx60;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    invoke-virtual {p1}, La90;->V()V

    return-object v0
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/util/BitSet;

    .line 2
    invoke-virtual {p1}, Lc90;->o()Lc90;

    .line 3
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    int-to-long v2, v2

    .line 5
    invoke-virtual {p1, v2, v3}, Lc90;->w0(J)Lc90;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lc90;->V()Lc90;

    return-void
.end method
