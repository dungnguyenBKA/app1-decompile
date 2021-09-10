.class public final Lk80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La70;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk80$a;
    }
.end annotation


# instance fields
.field private final b:Lj70;

.field final c:Z


# direct methods
.method public constructor <init>(Lj70;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk80;->b:Lj70;

    .line 3
    iput-boolean p2, p0, Lk80;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lj60;Lz80;)Lz60;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj60;",
            "Lz80<",
            "TT;>;)",
            "Lz60<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lz80;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lz80;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0}, Ld70;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Ld70;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    aget-object v2, v0, v1

    .line 7
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Lz80;->get(Ljava/lang/reflect/Type;)Lz80;

    move-result-object v2

    invoke-virtual {p1, v2}, Lj60;->e(Lz80;)Lz60;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    sget-object v2, Ls80;->f:Lz60;

    :goto_1
    move-object v7, v2

    const/4 v2, 0x1

    .line 10
    aget-object v3, v0, v2

    invoke-static {v3}, Lz80;->get(Ljava/lang/reflect/Type;)Lz80;

    move-result-object v3

    invoke-virtual {p1, v3}, Lj60;->e(Lz80;)Lz60;

    move-result-object v9

    .line 11
    iget-object v3, p0, Lk80;->b:Lj70;

    invoke-virtual {v3, p2}, Lj70;->a(Lz80;)Lw70;

    move-result-object v10

    .line 12
    new-instance p2, Lk80$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lk80$a;-><init>(Lk80;Lj60;Ljava/lang/reflect/Type;Lz60;Ljava/lang/reflect/Type;Lz60;Lw70;)V

    return-object p2
.end method
