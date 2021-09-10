.class final Lk80$a;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lz60<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lz60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz60<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Lz60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz60<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final c:Lw70;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw70<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lk80;


# direct methods
.method public constructor <init>(Lk80;Lj60;Ljava/lang/reflect/Type;Lz60;Ljava/lang/reflect/Type;Lz60;Lw70;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj60;",
            "Ljava/lang/reflect/Type;",
            "Lz60<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lz60<",
            "TV;>;",
            "Lw70<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lk80$a;->d:Lk80;

    invoke-direct {p0}, Lz60;-><init>()V

    .line 2
    new-instance p1, Lr80;

    invoke-direct {p1, p2, p4, p3}, Lr80;-><init>(Lj60;Lz60;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lk80$a;->a:Lz60;

    .line 3
    new-instance p1, Lr80;

    invoke-direct {p1, p2, p6, p5}, Lr80;-><init>(Lj60;Lz60;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lk80$a;->b:Lz60;

    .line 4
    iput-object p7, p0, Lk80$a;->c:Lw70;

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, La90;->x0()Lb90;

    move-result-object v0

    .line 2
    sget-object v1, Lb90;->j:Lb90;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, La90;->t0()V

    const/4 p1, 0x0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v1, p0, Lk80$a;->c:Lw70;

    invoke-interface {v1}, Lw70;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5
    sget-object v2, Lb90;->b:Lb90;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 6
    invoke-virtual {p1}, La90;->j()V

    .line 7
    :goto_0
    invoke-virtual {p1}, La90;->j0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, La90;->j()V

    .line 9
    iget-object v0, p0, Lk80$a;->a:Lz60;

    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lk80$a;->b:Lz60;

    invoke-virtual {v2, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {p1}, La90;->V()V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Lx60;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lx60;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p1}, La90;->V()V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p1}, La90;->o()V

    .line 16
    :goto_1
    invoke-virtual {p1}, La90;->j0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    sget-object v0, Lt70;->a:Lt70;

    invoke-virtual {v0, p1}, Lt70;->a(La90;)V

    .line 18
    iget-object v0, p0, Lk80$a;->a:Lz60;

    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lk80$a;->b:Lz60;

    invoke-virtual {v2, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    new-instance p1, Lx60;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lx60;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5
    invoke-virtual {p1}, La90;->b0()V

    :goto_2
    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lc90;->n0()Lc90;

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Lk80$a;->d:Lk80;

    iget-boolean v0, v0, Lk80;->c:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lc90;->L()Lc90;

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc90;->l0(Ljava/lang/String;)Lc90;

    .line 7
    iget-object v1, p0, Lk80$a;->b:Lz60;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lc90;->b0()Lc90;

    goto/16 :goto_7

    .line 9
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 12
    iget-object v5, p0, Lk80$a;->a:Lz60;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 13
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_0
    new-instance v7, Lj80;

    invoke-direct {v7}, Lj80;-><init>()V

    .line 15
    invoke-virtual {v5, v7, v6}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v7}, Lj80;->C0()Lp60;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    instance-of v4, v5, Lm60;

    if-nez v4, :cond_4

    .line 21
    instance-of v4, v5, Ls60;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Lq60;

    invoke-direct {p2, p1}, Lq60;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    if-eqz v3, :cond_7

    .line 23
    invoke-virtual {p1}, Lc90;->o()Lc90;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    .line 25
    invoke-virtual {p1}, Lc90;->o()Lc90;

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp60;

    .line 27
    sget-object v4, Ls80;->X:Lz60;

    invoke-virtual {v4, p1, v3}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    .line 28
    iget-object v3, p0, Lk80$a;->b:Lz60;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p1}, Lc90;->V()Lc90;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 30
    :cond_6
    invoke-virtual {p1}, Lc90;->V()Lc90;

    goto :goto_7

    .line 31
    :cond_7
    invoke-virtual {p1}, Lc90;->L()Lc90;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_d

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp60;

    .line 34
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    instance-of v4, v3, Lu60;

    if-eqz v4, :cond_b

    .line 36
    invoke-virtual {v3}, Lp60;->f()Lu60;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lu60;->l()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 38
    invoke-virtual {v3}, Lu60;->i()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 39
    :cond_8
    invoke-virtual {v3}, Lu60;->j()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 40
    invoke-virtual {v3}, Lu60;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 41
    :cond_9
    invoke-virtual {v3}, Lu60;->m()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 42
    invoke-virtual {v3}, Lu60;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 43
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_b
    instance-of v3, v3, Lr60;

    if-eqz v3, :cond_c

    const-string v3, "null"

    .line 45
    :goto_6
    invoke-virtual {p1, v3}, Lc90;->l0(Ljava/lang/String;)Lc90;

    .line 46
    iget-object v3, p0, Lk80$a;->b:Lz60;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 47
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_d
    invoke-virtual {p1}, Lc90;->b0()Lc90;

    :goto_7
    return-void
.end method
