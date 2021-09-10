.class public abstract Landroidx/work/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/work/o$a;",
        "W:",
        "Landroidx/work/o;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/UUID;

.field b:Lc6;

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/o$a;->c:Ljava/util/Set;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/o$a;->a:Ljava/util/UUID;

    .line 4
    new-instance v0, Lc6;

    iget-object v1, p0, Landroidx/work/o$a;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/o$a;->b:Lc6;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Landroidx/work/o$a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/work/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/o$a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    move-object p1, p0

    check-cast p1, Landroidx/work/j$a;

    return-object p1
.end method

.method public final b()Landroidx/work/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Landroidx/work/j$a;

    .line 2
    new-instance v1, Landroidx/work/j;

    invoke-direct {v1, v0}, Landroidx/work/j;-><init>(Landroidx/work/j$a;)V

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/o$a;->a:Ljava/util/UUID;

    .line 4
    new-instance v0, Lc6;

    iget-object v2, p0, Landroidx/work/o$a;->b:Lc6;

    invoke-direct {v0, v2}, Lc6;-><init>(Lc6;)V

    iput-object v0, p0, Landroidx/work/o$a;->b:Lc6;

    .line 5
    iget-object v2, p0, Landroidx/work/o$a;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc6;->a:Ljava/lang/String;

    return-object v1
.end method

.method public final c(Landroidx/work/c;)Landroidx/work/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/c;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/o$a;->b:Lc6;

    iput-object p1, v0, Lc6;->j:Landroidx/work/c;

    .line 2
    move-object p1, p0

    check-cast p1, Landroidx/work/j$a;

    return-object p1
.end method

.method public final d(Landroidx/work/e;)Landroidx/work/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/e;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/o$a;->b:Lc6;

    iput-object p1, v0, Lc6;->e:Landroidx/work/e;

    .line 2
    move-object p1, p0

    check-cast p1, Landroidx/work/j$a;

    return-object p1
.end method
