.class public final Lf80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La70;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf80$a;
    }
.end annotation


# instance fields
.field private final b:Lj70;


# direct methods
.method public constructor <init>(Lj70;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf80;->b:Lj70;

    return-void
.end method


# virtual methods
.method public a(Lj60;Lz80;)Lz60;
    .locals 3
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
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0, v1}, Ld70;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lz80;->get(Ljava/lang/reflect/Type;)Lz80;

    move-result-object v1

    invoke-virtual {p1, v1}, Lj60;->e(Lz80;)Lz60;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lf80;->b:Lj70;

    invoke-virtual {v2, p2}, Lj70;->a(Lz80;)Lw70;

    move-result-object p2

    .line 7
    new-instance v2, Lf80$a;

    invoke-direct {v2, p1, v0, v1, p2}, Lf80$a;-><init>(Lj60;Ljava/lang/reflect/Type;Lz60;Lw70;)V

    return-object v2
.end method
