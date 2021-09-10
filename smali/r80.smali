.class final Lr80;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz60<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lj60;

.field private final b:Lz60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz60<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lj60;Lz60;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj60;",
            "Lz60<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lz60;-><init>()V

    .line 2
    iput-object p1, p0, Lr80;->a:Lj60;

    .line 3
    iput-object p2, p0, Lr80;->b:Lz60;

    .line 4
    iput-object p3, p0, Lr80;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La90;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr80;->b:Lz60;

    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc90;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr80;->b:Lz60;

    .line 2
    iget-object v1, p0, Lr80;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 3
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Lr80;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_3

    .line 6
    iget-object v0, p0, Lr80;->a:Lj60;

    invoke-static {v1}, Lz80;->get(Ljava/lang/reflect/Type;)Lz80;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj60;->e(Lz80;)Lz60;

    move-result-object v0

    .line 7
    instance-of v1, v0, Ln80$a;

    if-nez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lr80;->b:Lz60;

    instance-of v2, v1, Ln80$a;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void
.end method
